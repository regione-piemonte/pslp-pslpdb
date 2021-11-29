/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/
CREATE OR REPLACE PACKAGE PCK_CALENDARIO IS
 
     /*
     * VARIABILI GLOBALI
     */
    -- Se impostato a 1 stampa nel dbms_output  le stringhe stampate col metodo wr
    logAttivi  boolean := false;
    
/*
 *  Metodi pubblici esposti
 */

/*
permette di abilitare o meno il log che scrive nel dbmsoutput alcune informazioni aggiuntive oltre
alle istruzioni di delete da eseguire
*/
PROCEDURE setLog(attiva boolean);

FUNCTION generaGiornoSlot return integer;

FUNCTION censisciEccezione (pIdPeriodo          PSLP_T_GIORNO.ID_PERIODO%TYPE, 
                            pGiorno             PSLP_T_GIORNO.GIORNO%TYPE, 
                            pOraInizio          PSLP_T_SLOT.ORA_INIZIO%TYPE,
                            pOraFine            PSLP_T_SLOT.ORA_FINE%TYPE,
                            pNumMaxPrenotazioni PSLP_T_SLOT.NUM_MAX_PRENOTAZIONI%TYPE,
                            pUserAggiorn        PSLP_T_SLOT.COD_USER_AGGIORN%TYPE,
                            pDAggiorn           PSLP_T_SLOT.D_AGGIORN%TYPE) 
return integer;

FUNCTION elaboraEccezioni return integer;


END PCK_CALENDARIO;
/
CREATE OR REPLACE PACKAGE BODY PCK_CALENDARIO AS

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

FUNCTION generaGiornoSlot
return integer is

  cursor cur_periodi_senza_giorno is
         select distinct
                --pg.id_periodo_giorno_sett,
                pg.id_periodo, pg.id_giorno_settimana,
                case pg.id_giorno_settimana
                  when 1 then 'MONDAY'
                  when 2 then 'TUESDAY'
                  when 3 then 'WEDNESDAY'
                  when 4 then 'THURSDAY'
                  when 5 then 'FRIDAY'
                  when 6 then 'SATURDAY'
                  when 7 then 'SUNDAY'
                end giornoSettimana,
                --pg.ora_inizio,
                --pg.ora_fine,
                --pg.durata_slot,
                --pg.num_max_prenotazioni,
                p.id_calendario, p.dt_inizio-1 as dt_inizio, p.dt_fine
           from PSLP_R_PERIODO_GIORNO_SETT pg
                join PSLP_T_PERIODO p on p.id_periodo = pg.id_periodo
          where not exists (select 1
                              from PSLP_T_GIORNO g
                             where g.id_periodo = p.id_periodo)
            --and pg.id_periodo = 1
         ;

  cursor cur_fasce_orarie (pIdPeriodo PSLP_R_PERIODO_GIORNO_SETT.ID_PERIODO%TYPE,
                           pIdGiornoSettimana PSLP_R_PERIODO_GIORNO_SETT.ID_GIORNO_SETTIMANA%TYPE) is
         select pg.ora_inizio,
                pg.ora_fine,
                pg.durata_slot,
                pg.num_max_prenotazioni
           from PSLP_R_PERIODO_GIORNO_SETT pg
          where pg.id_periodo = pIdPeriodo
            and pg.id_giorno_settimana = pIdGiornoSettimana;

  retVal integer := 0;

  idGiorno PSLP_T_GIORNO.ID_GIORNO%TYPE;
  idSlot   PSLP_T_SLOT.ID_SLOT%TYPE;

  --giornoSettimanaInizioPeriodo integer := 0;

  giorno integer;
  mese   integer;
  anno   integer;

  giornoData date;

  oraInizioSlot integer;
  oraFineSlot   integer;

  userElab varchar2(16) := '#PSLP_SERV_LAV';
  dtElab   date := sysdate;

begin

  execute immediate 'ALTER SESSION SET NLS_DATE_LANGUAGE = ''AMERICAN''';

  for periodo in cur_periodi_senza_giorno loop

    -- recupero il giorno per l'inserimento nella PSLP_T_GIORNO
    select next_day(periodo.dt_inizio, periodo.giornoSettimana)
      into giornoData
      from dual;

    while trunc(giornoData) <= trunc(periodo.dt_fine) loop

      idGiorno := null;

      select extract(YEAR from giornoData)  into anno   from dual;
      select extract(MONTH from giornoData) into mese   from dual;
      select extract(DAY from giornoData)   into giorno from dual;

      -- controllo che non si tratti di un giorno festivo
      if not ( (mese = 12 And (giorno = 8 Or giorno = 25 Or giorno = 26)) Or
              ((mese = 11 Or mese = 5) And giorno = 1) Or
              (mese = 1 And (giorno = 1 Or giorno = 6)) Or
              (mese = 6 And giorno = 2) Or
              (mese = 8 And giorno = 15)
             ) then

        insert
          into PSLP_T_GIORNO (
                ID_GIORNO,
                ID_PERIODO,
                GIORNO,
                COD_USER_INSERIM,
                D_INSERIM,
                COD_USER_AGGIORN,
                D_AGGIORN             )
        values (seq_pslp_t_giorno.nextval,
                periodo.id_periodo,
                giornoData,
                userElab,
                dtElab,
                userElab,
                dtElab)
        returning ID_GIORNO into idGiorno;

        -- estraggo tutte le fasce orarie di apertura di quella giornata

        for fasciaOraria in cur_fasce_orarie(periodo.id_periodo, periodo.id_giorno_settimana) loop

          oraInizioSlot := fasciaOraria.ora_inizio;
          oraFineSlot   := fasciaOraria.ora_inizio + fasciaOraria.durata_slot;

          while oraFineSlot <= fasciaOraria.ora_fine loop

            insert
              into PSLP_T_SLOT (
                    ID_SLOT,
                    ID_GIORNO,
                    ORA_INIZIO,
                    ORA_FINE,
                    NUM_MAX_PRENOTAZIONI,
                    COD_USER_INSERIM,
                    D_INSERIM,
                    COD_USER_AGGIORN,
                    D_AGGIORN)
            values (seq_pslp_t_slot.nextval,
                    idGiorno,
                    oraInizioSlot,
                    oraFineSlot,
                    fasciaOraria.num_max_prenotazioni,
                    userElab,
                    dtElab,
                    userElab,
                    dtElab)
            returning ID_SLOT into idSlot;

            oraInizioSlot := oraFineSlot;
            oraFineSlot   := oraFineSlot + fasciaOraria.durata_slot;

          end loop;

        end loop;

      end if;

      select next_day(giornoData, periodo.giornoSettimana)
        into giornoData
        from dual;

    end loop;

  end loop;

  return retVal;

exception
  when others then
    wr('ERRORE GENERICO: ' || SQLERRM);
    return 1;

end generaGiornoSlot;

FUNCTION censisciEccezione (pIdPeriodo          PSLP_T_GIORNO.ID_PERIODO%TYPE,
                            pGiorno             PSLP_T_GIORNO.GIORNO%TYPE,
                            pOraInizio          PSLP_T_SLOT.ORA_INIZIO%TYPE,
                            pOraFine            PSLP_T_SLOT.ORA_FINE%TYPE,
                            pNumMaxPrenotazioni PSLP_T_SLOT.NUM_MAX_PRENOTAZIONI%TYPE,
                            pUserAggiorn        PSLP_T_SLOT.COD_USER_AGGIORN%TYPE,
                            pDAggiorn           PSLP_T_SLOT.D_AGGIORN%TYPE)
return integer is

  idGiorno PSLP_T_SLOT.ID_GIORNO%TYPE;

  retVal integer := 1;

begin

  if pIdPeriodo is null or
     pGiorno    is null or
     --pOraInizio is null or
     --pOraFine   is null or
     pNumMaxPrenotazioni is null or
     pUserAggiorn        is null then

    RAISE_APPLICATION_ERROR(-20002, 'Per censire un''eccezione è necessario valorizzare almeno l''id del periodo, il giorno e il numero massimo di prenotazioni');

  end if;

  begin

    idGiorno := null;

    select ID_GIORNO
      into idGiorno
      from PSLP_T_GIORNO
     where ID_PERIODO = pIdPeriodo
       and trunc(GIORNO) = trunc(pGiorno);

  exception
    when no_data_found then
      wr('Nessun giorno trovato per la data ' || to_char(pGiorno, 'dd/mm/yyyy') || ' per il periodo ' || pIdPeriodo);
      --raise;

  end;

  if idGiorno is not null then

    if pOraInizio is null then

      -- non è specificata nessuna fascia oraria => aggiorno tutti gli slot di quel giorno
      update PSLP_T_SLOT s
         set s.num_max_prenotazioni = pNumMaxPrenotazioni,
             s.flg_eccezione = 'S',
             s.cod_user_aggiorn = pUserAggiorn,
             s.d_aggiorn = nvl(pDAggiorn, sysdate)
       where s.id_giorno = idGiorno;

    else

      -- aggiorno tutti gli slot aventi ora_inizio e ora_fine compresi nella fascia oraria in eccezione per quel giorno
      update PSLP_T_SLOT s
         set s.num_max_prenotazioni = pNumMaxPrenotazioni,
             s.flg_eccezione = 'S',
             s.cod_user_aggiorn = pUserAggiorn,
             s.d_aggiorn = nvl(pDAggiorn, sysdate)
       where s.id_giorno = idGiorno
         and s.ora_inizio >= pOraInizio
         and s.ora_fine <= pOraFine;

    end if;

  end if;

  retVal := 0;

  return retVal;

exception
  when others then
    wr('FNC CENSISCIECCEZIONE - ERRORE GENERICO: ' || SQLERRM);

end censisciEccezione;

FUNCTION elaboraEccezioni
return integer is

  cursor cur_eccezioni is
         select *
           from PSLP_T_ECCEZIONE
          where FLG_ELABORATA is null
          order by id_eccezione;

  retVal integer := 1;

  userElab varchar2(16) := '#PSLP_SERV_LAV';
  dtElab   date := sysdate;

begin

  for eccezione in cur_eccezioni loop
    retVal := censisciEccezione(eccezione.id_periodo,
                                eccezione.giorno,
                                eccezione.ora_inizio,
                                eccezione.ora_fine,
                                eccezione.num_max_prenotazioni,
                                userElab,
                                dtElab);

    if retVal = 0 then
      update PSLP_T_ECCEZIONE
         set FLG_ELABORATA = 'S'
       where ID_ECCEZIONE = eccezione.id_eccezione;
    else
      RAISE_APPLICATION_ERROR(-20001, 'Errore nel caricamento dell''eccezione ' || eccezione.id_eccezione);
    end if;

  end loop;
  
  retVal := 0;

  return retVal;

exception
  when others then
    wr('FNC ELABORAECCEZIONI - ERRORE GENERICO: ' || SQLERRM);

end elaboraEccezioni;

END PCK_CALENDARIO;
/
