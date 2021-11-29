/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/

CREATE OR REPLACE PACKAGE PCK_DB_UTILS IS
       /*
        Cursore per avere i nomi dei constraints delle FK delle tabelle figlie che puntano a quella data in input.
        Non usato ma utile come riferimento.

        CURSOR c_constraints_figli(p_tabella varchar2) is
        select   FIGLIA.CONSTRAINT_NAME
        from
        all_constraints FIGLIA,
        all_constraints PADRE
        where
        PADRE.table_name =  p_tabella
        and FIGLIA.constraint_type =   'R'
        and FIGLIA.r_constraint_name = PADRE.constraint_name
        and FIGLIA.r_owner  = PADRE.owner
        ORDER BY 1 ASC;
*/

     /*
     * VARIABILI GLOBALI
     */
    -- Se impostato a 1 stampa nel dbms_output  le stringhe stampate col metodo wr
    logAttivi  boolean := false;
    -- indica l'indentazione dell'istruzione di delete stampata nel log
    tabulation number(6) := 0;
    --indica l'incremento di tabulazione per ogni livello di tabelle figlie
    deltaTabulation number := 3;
    -- stringa usata nelle query per  concatenare i campi  delle PrimaryKey  di una tabella
    pkSeparator varchar2(15) := '||''#''||';


/*
 *  Metodi pubblici esposti
 */

/*
permette di abilitare o meno il log che scrive nel dbmsoutput alcune informazioni aggiuntive oltre
alle istruzioni di delete da eseguire
*/
PROCEDURE setLog(attiva boolean);

/*
Stampa nel DBMS_OUTPUT le istruzioni di delete necessarie per eliminare i record
della tabella in input che hanno un dato valore nella colonna
*/
PROCEDURE printDeleteRecordAndChildren(nomeTabella  varchar2, nomeColonna  varchar2, valore varchar2);


/*
 USARE CON CAUTELA!
 Elimina i record della tabella in input che hanno un dato valore nella colonna
*/
PROCEDURE deleteRecordAndChildren(nomeTabella   varchar2, nomeColonna   varchar2, valore varchar2);


/*
Cerca una stringa di testo passata in input  in tutte le tabelle che contengono nel nome la stringa passata
in nomeParzialeTabelle e le cui colonne contengono la stringa passata in nomeParzialeColonne.
*/
FUNCTION searchTextOnAllTables(textToSearch  varchar2, nomeParzialeTabelle   varchar2, nomeParzialeColonne  varchar2,flgIgnoreCase varchar2) return varchar2;


END PCK_DB_UTILS;
/

CREATE OR REPLACE PACKAGE BODY PCK_DB_UTILS AS

PROCEDURE setLog(attiva boolean) is
begin
     logAttivi := attiva;
end setLog;

/*
procedura per scrivere nel dbms_output la stringa passat in ingresso solo se il log e' attivo
*/
PROCEDURE wr(s varchar2) is
begin
     if logAttivi  then
          dbms_output.put_line(s);
     end if;
end wr;

/*
procedura per scrivere nel dbms_output la stringa passat in ingresso
*/
PROCEDURE wr2(s varchar2) is
begin
          dbms_output.put_line(s);
end wr2;

PROCEDURE incrementTabulation is
begin
      tabulation := tabulation + deltaTabulation;
end incrementTabulation;

PROCEDURE decrementTabulation is
begin
      tabulation := tabulation - deltaTabulation;
end decrementTabulation;

function buildDelete(tabella varchar2,colonna varchar2,valore varchar2) return varchar2 is
begin
    return  'delete '||tabella || ' where ' || colonna || '= ''' ||valore||'''';
end buildDelete;

/*
Ritorna la porzione di stringa compresa tra due caratteri.
Ritorna null se non trova i caratteri  o se il carattere finale e'  inferiore dell'iniziale
*/
FUNCTION getStringBetween(stringa varchar2, beginChar varchar2, endChar varchar2) RETURN varchar2 IS
    beginIndex number;
    endIndex number;
begin
        beginIndex :=  instr(stringa,beginChar)+1;
        endIndex :=  instr(stringa,endChar);
        if beginIndex > 0 and endIndex > beginIndex then
            return substr(stringa,beginIndex,endIndex-beginIndex);
        else
            return null;
        end if;
end getStringBetween;

/*
cerca di effettuare una delete su una data tabella, colonna e valore.
- se va a buon fine stampa la delete eseguita nel log
- se va male per un constraint di chiave figlia presente, ritorna il nome del constraint
*/
FUNCTION deleteOrGetConstraintName(tabella varchar2,colonna varchar2,valore varchar2) return varchar2 is

stmt varchar2(1000);

begin

        stmt :=  buildDelete(tabella,colonna,valore);
        execute immediate stmt;
       -- stampo la delete nel log solo se e' stata eseguita veramente senza problemi di constraint
        wr('Eseguita delete:');
        wr2(rpad(' ',tabulation,'  ')||stmt||';');
        return null;
exception   when others then
        if SQLCODE = '-2292' then -- errore di record child trovato
            return getStringBetween(sqlerrm,'.',')'); -- estraggo il nome del constraint
        else
            raise;
        end if;
end deleteOrGetConstraintName;


/*
Funzione per avere il nome dei campi chiave primaria di una tabella passata in ingresso
NB:se la tabella ha più chiavi primarie (una tabella di raccordo) restituisco i campi concatenati con separatore #
*/
FUNCTION getNomePkTabella(nomeTabella varchar2) RETURN varchar2 IS
    nomePk varchar2(200);

begin

       SELECT
       replace(wm_concat(cols.column_name),',',pkSeparator)
        into nomePk
        FROM all_constraints cons, all_cons_columns cols
        WHERE COLS.TABLE_NAME =nomeTabella
        AND cons.constraint_type = 'P'
        AND cons.constraint_name = cols.constraint_name
        AND cons.owner = cols.owner
        GROUP BY COLS.TABLE_NAME;

        wr('identificata chiave primaria: '|| nomePk);
        return nomePk;
exception
        when NO_DATA_FOUND then
                wr('Nessuna colonna PK trovata per tabella ' || nomeTabella);
               return null;
end getNomePkTabella;





 /*
 cancella tutti i record di una tabella che hanno un dato valore in una colonna.
 Elimina ricorsivamente tutti i record di tabelle figlie che impediscono la cancellazione di una record
 identificato
 */
 PROCEDURE deleteRecordAndChild(nomeTabella varchar2, nomeColonna varchar2, valore varchar2) IS

            cursor c_dati_constraint(p_constraintName varchar2) is
            SELECT
             cols.table_name tabellaFiglia,
             replace(wm_concat(cols.column_name),',',pkSeparator) colonneFiglia
             FROM
             all_constraints cons,
             all_cons_columns cols
             WHERE
             cons.constraint_type = 'R'
             AND cons.constraint_name = cols.constraint_name
             and cons.constraint_name = p_constraintName
             AND cons.owner = cols.owner
             GROUP BY cols.table_name;

       cursor c_dati_constraint_padre(p_constraintName varchar2) is
              select cols_r.table_name tabellaPadre,
                     replace(wm_concat(cols_r.COLUMN_NAME), ',', pkSeparator) colonnePadre
                from all_constraints cons,
                     all_cons_columns cols_r
               where cons.CONSTRAINT_NAME = p_constraintName
                 and cols_r.CONSTRAINT_NAME = cons.R_CONSTRAINT_NAME
                 and cols_r.OWNER = cons.R_OWNER
               group by cols_r.TABLE_NAME;


       TYPE ref_cur IS REF CURSOR;
       c_valori_pk   ref_cur;

       --c_valori_unique_key ref_cur;

      nomePrimaryKey varchar2(200);
      tabellaFiglia varchar2(30);
      colonneFkFiglia varchar2(200);

      tabellaPadre varchar2(30);
      colonneUkPadre varchar2(200);

      valorePrimaryKey varchar2(200);

      vincoloBloccaDelete varchar2(200);

      stmt_sel_uk varchar2(1000);
      valoreUk varchar2(200);

  BEGIN

    incrementTabulation;

    wr('Inizio analisi cancellazione tabella ' || nomeTabella || ' colonna ' ||nomeColonna || 'valore ' ||valore );

    nomePrimaryKey := getNomePkTabella(nomeTabella);
    if nomePrimaryKey is null then
      wr('Non esiste pk!! Cerco comunque di di cancellare secondo la condizione in input');
      vincoloBloccaDelete := deleteOrGetConstraintName(nomeTabella,nomeColonna,valore);
     return;
    end if;

   --cerco tutti i  record da cancellare (identificati tramite PK)
    open c_valori_pk for  ('select '||nomePrimaryKey|| ' from ' || nomeTabella || ' where ' || nomeColonna ||' = ''' ||valore ||'''');
    loop
                fetch c_valori_pk  into valorePrimaryKey;
                exit when c_valori_pk%NOTFOUND;
                wr('key da cancellare: '||valorePrimaryKey|| ' su tabella ' || nomeTabella);

                --cerco di cancellare una pk finche' la delete non va a buon fine
                -- loop finche' non ho risolto tutti i constraint bloccanti
                loop
                                 vincoloBloccaDelete := deleteOrGetConstraintName(nomeTabella,nomePrimaryKey,valorePrimaryKey);
                                 exit when  vincoloBloccaDelete is null; -- esco se sono riuscito a effettuare la delete

                                -- carico i dati della tabelle figlia relativa al constraint che sta bloccando la delete
                                open  c_dati_constraint(vincoloBloccaDelete);
                                fetch   c_dati_constraint  into tabellaFiglia, colonneFkFiglia;
                                close c_dati_constraint;
                                 wr('Trovato constraint : ' || vincoloBloccaDelete ||' su tabella figlia: ' || tabellaFiglia||' colonne ('||colonneFkFiglia||')' );

                                open  c_dati_constraint_padre(vincoloBloccaDelete);
                                fetch   c_dati_constraint_padre  into tabellaPadre, colonneUkPadre;
                                close c_dati_constraint_padre;

                                stmt_sel_uk := 'select '||colonneUkPadre|| ' from ' || nomeTabella || ' where ' || nomePrimaryKey ||' = ''' ||valorePrimaryKey ||'''';
                                execute immediate stmt_sel_uk into valoreUk;

                                 -- se ho trovato un constraint che blocca la cancellazione richiamo ricorsivamente la procedura
                                 -- per eliminare i record dalla tabella figlia
                                 --deleteRecordAndChild(tabellaFiglia , colonneFkFiglia , valorePrimaryKey);
                                 deleteRecordAndChild(tabellaFiglia , colonneFkFiglia , valoreUk);
                end loop;  -- fine loop sui constraint che bloccano la cancellazione

     end loop; -- fine loop sui record da cancellare


    close c_valori_pk;



    wr('FINE TABELLA ' || nomeTabella );
    decrementTabulation;
 END deleteRecordAndChild;



  FUNCTION controllaCampoOk(nomeCampo varchar2, stringa VARCHAR2,checkObbligatorieta boolean, checkCaratteriStrani boolean, maxLen number) RETURN boolean AS
       currChar varchar2(1);
      len number;
      esito boolean := true;
   BEGIN
       -- controllo di obbligatorieta'
     if checkObbligatorieta and stringa IS NULL then
          wr2('Il parametro ' || nomeCampo || ' e'' obbligatorio' );
         return  false;
     end if;

        --controllo sulla lunghezza
        len := length(stringa);
         if maxLen is not null and len > maxLen then
              wr2('Il parametro ' || nomeCampo || ' puo'' avere al massimo ' || maxLen ||' caratteri' );
              esito := false;
        end if;

       -- controllo su caratteri ammessi nei nomi degli oggetti
       if checkCaratteriStrani then
              FOR i IN 1..len LOOP
                      currChar := substr(stringa,i,1);
                      IF (currChar NOT  IN ('A','B','C','D','E','F','G','H','I', 'J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9','_')) THEN
                          wr2('Il parametro ' || nomeCampo || ' contiene il carattere'  || currChar  ||' non ammesso' );
                         esito := false;
                      END IF;
              END LOOP;
       end if;

   return esito;

   END controllaCampoOk;

/*
Verifica la correttezza dei parametri passati in input, nel caso di nome tabella e colonna
verifica che non ci siano caratteri strani e converte in uppercase se necessario
*/
FUNCTION checkInputParameters(nomeTabella in out varchar2, nomeColonna in out varchar2, valore varchar2) RETURN BOOLEAN IS
    ok boolean := true;
    counter number(1);
BEGIN
    ok := ok and controllaCampoOk('nomeTabella',nomeTabella,true,true,30);
    ok := ok and controllaCampoOk('nomeColonna',nomeColonna,true,true,30);
    ok := ok and controllaCampoOk('valore',valore,true,false,null);
    -- verifico che il nome della colonna esista nella tabella

    select count(*) into  counter
    from  cols c
    where  c.COLUMN_NAME = nomeColonna
    and table_name = nomeTabella;

    if counter = 0 then
            wr2('Non esiste la colonna ' || nomeColonna || ' nella tabella ' || nomeTabella);
            ok := false;
    end if;


     if ok = false then
            wr2('ESECUZIONE BLOCCATA');
     end if;

    return ok;

 END checkInputParameters;

 /*
Stampa nel DBMS_OUTPUT le istruzioni di delete necessarie per eliminare i record
della tabella in input che hanno un dato valore nella colonna
*/
 PROCEDURE printDeleteRecordAndChildren(nomeTabella varchar2, nomeColonna varchar2, valore varchar2) IS
         tab varchar2(100);
        col varchar2(100);
  BEGIN
        tab := trim(upper(nomeTabella));
        col := trim(upper(nomeColonna));
         if(checkInputParameters(tab,col,valore)) then
                 deleteRecordAndChild(tab,col,valore);
                 rollback;
         end if;

 END printDeleteRecordAndChildren;


 /*
 USARE CON CAUTELA!
 Elimina i record della tabella in input che hanno un dato valore nella colonna
*/
  PROCEDURE deleteRecordAndChildren(nomeTabella varchar2, nomeColonna  varchar2, valore varchar2) IS
        tab varchar2(100);
        col varchar2(100);
  BEGIN
        tab := trim(upper(nomeTabella));
        col := trim(upper(nomeColonna));
        -- eseguire controlli su nomi tabelle, colonne, uppercase
       if(checkInputParameters(tab,col,valore)) then
           deleteRecordAndChild(tab,col,valore);
           commit;
       end if;

 END deleteRecordAndChildren;


/*
Cerca una stringa di testo passata in input  in tutte le tabelle che contengono nel nome la stringa passata
in nomeParzialeTabelle e le cui colonne contengono la stringa passata in nomeParzialeColonne.
*/
FUNCTION searchTextOnAllTables(textToSearch  varchar2, nomeParzialeTabelle   varchar2, nomeParzialeColonne  varchar2,flgIgnoreCase varchar2) return varchar2 is
       result varchar2(4000);
       lenTextToSearch number :=  length(textToSearch);

       CURSOR C_TABLES_COLS IS
        select
        C.TABLE_NAME,
        C.COLUMN_NAME
        from
        cols c
        where  c.TABLE_NAME like '%'||nomeParzialeTabelle||'%'
        and c.COLUMN_NAME like '%'||nomeParzialeColonne||'%'
        and c.DATA_LENGTH > lenTextToSearch
        and c.DATA_TYPE = 'VARCHAR2'
        ORDER BY 1,2;

        TYPE ref_cur IS REF CURSOR;
        c_search   ref_cur;

        numRecTrovati number := 0;

BEGIN
       result := result||'Ricerca testo '|| textToSearch || ' su tabelle che contengono nel nome ' || nomeParzialeTabelle;
       if nomeParzialeColonne is not null then
               result := result||' e colonne che contengono nel nome '  || nomeParzialeColonne;
       end if;


       --cerco le colonen delle tabelle con nome richiesto in input
       FOR REC IN C_TABLES_COLS LOOP

                    if upper(flgIgnoreCase) = 'S'  then
                         open c_search  for  ('select count(*)  from ' ||  REC.table_name || ' where upper(' || REC.COLUMN_NAME ||') like ''%' ||upper(textToSearch) || '%''');
                    else
                         open c_search  for  ('select count(*)  from ' ||  REC.table_name || ' where ' || REC.COLUMN_NAME ||' like ''%' ||textToSearch || '%''');
                    end if;

                    fetch c_search  into numRecTrovati;
                    close c_search;

                    if numRecTrovati > 0 then
                         result := result||CHR(10)||REC.table_name || ' colonna ' ||  REC.COLUMN_NAME || ' record trovati: ' ||  numRecTrovati;
                    end if;

       END LOOP;

        return result;
 END searchTextOnAllTables;


END PCK_DB_UTILS;
/
