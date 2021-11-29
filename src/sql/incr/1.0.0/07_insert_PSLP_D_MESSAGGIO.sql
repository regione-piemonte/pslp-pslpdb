/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/
 
set define off;

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (2, 'PRES1', 'Privacy responsabilita'' genitoriale: intestazione', 'TRV', 'PRV', 'Informativa sulla responsabilita'' genitoriale', '<p style="text-align: left;" align="center"><strong>Informativa sulla responsabilita'' genitoriale<br /></strong></p>
<p>La compilazione del presente modulo rientra nelle responsabilit&agrave; genitoriali regolamentate dal codice civile (Titolo IX Della responsabilit&agrave; genitoriale e dei diritti e doveri del figlio), ove si prevede - salvo non diversamente stabilito &ndash; che le decisioni di maggiore interesse per i figli siano esercitate da entrambi i genitori.</p>
<p>&nbsp;</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5, 'APPRO', 'Mail per promemoria prenotazione', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: promemoria appuntamento', 'Gentile {0},
ti ricordiamo di presentarti il {1,date,dd/MM/yyyy} alle ore {2} presso il CPI di {3} in {4} per iniziare il tuo percorso in Garanzia Giovani; la durata dell''''incontro e'''' stimata in {5} minuti. Ricordati che il tuo numero progressivo e'''' {6}. ' || chr(10) ||
chr(10) || 
'{7}' || chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.' || chr(10) ||
chr(10) ||
'Cordiali Saluti' || chr(10) ||
chr(10) ||
'{8}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (8, 'GGEND', 'Mail in caso di termine dell''adesione Garanzia Giovani', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: fine adesione', 'Gentile {0},
ti comunichiamo che in data {1,date,dd/MM/yyyy} e'''' terminato il tuo percorso in Garanzia Giovani con numero progressivo {2} per {3}.'|| chr(10) ||
chr(10) ||
'{4}' || chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.' || chr(10) ||
chr(10) ||
'Cordiali Saluti' || chr(10) ||
chr(10) ||
'{5}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (9, 'DOCES', 'Mail in caso di accettazione o non accettazione del documento fornito in allegato alla prenotazione appuntamento', 'TRV', 'MAIL', 'Documentazione fornita: N. <numero doc> del <data>', 'Gentile {0},
la informiamo che il documento {1} inviato il {2} alle ore {3} presso il CPI di {4} in {5} {6}. ' || chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.' || chr(10) ||
chr(10) ||
'Cordiali Saluti' || chr(10) ||
chr(10) ||
'{7}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (10, 'PLAV2', 'Privacy cittadino: dettaglio', 'TRV', 'PRV', 'Informativa sul trattamento dei dati personali ad uso dei responsabili esterni', '<p>La informiamo, inoltre, che:</p>
<ul>
<li>- I dati personali a Lei riferiti verranno raccolti e trattati nel rispetto dei principi di correttezza, liceit&agrave; e tutela della riservatezza, con modalit&agrave; informatiche ed esclusivamente nell&rsquo;ambito dell&rsquo;erogazione dei servizi di politica del lavoro. Il trattamento &egrave; finalizzato all&rsquo;espletamento delle funzioni istituzionali definite nella normativa di riferimento (Regolamenti UE n. 1303/2013, n. 1304/2013 del Parlamento Europeo e del Consiglio del 17 dicembre 2013, Decisione C (2014) 4969 della Commissione Europea e ss.mm.ii.; D.Lgs. 150/15, D.Lgs. 4/2019, D.Lgs 13/2013 e ss.mm.ii; L.R. 34/2008, L.R. 63/1995 e ss.mm.ii.);</li>
<li>- I dati acquisiti a seguito della presente informativa saranno utilizzati esclusivamente per le finalit&agrave; relative alle politiche per le quali vengono comunicati;</li>
<li>- L&rsquo;acquisizione dei Suoi dati ed il relativo trattamento sono obbligatori in relazione alle finalit&agrave; sopradescritte; ne consegue che l&rsquo;eventuale rifiuto a fornirli potr&agrave; determinare l&rsquo;impossibilit&agrave; del Titolare del trattamento di erogare il servizio richiesto;</li>
<li>- I dati di contatto del Responsabile della protezione dati (DPO) sono: <a href="mailto:dpo@rrrr.pppp.it">dpo@rrrr.pppp.it</a>;</li>
<li>- Il Titolare del trattamento dei dati personali &egrave; la Giunta regionale, il Delegato al trattamento dei dati &egrave; il Direttore &ldquo;pro tempore&rdquo; della Direzione Coesione Sociale della Regione Piemonte;</li>
<li>- Il Responsabile (esterno) del trattamento &egrave;:
<ul>
<li>_ il Consorzio per il Sistema Informativo Piemonte (CSI), ente strumentale della Regione Piemonte, pec: <a href="mailto:protocollo@cert.csi.it">protocollo@cert.csi.it</a>;</li>
</ul>
</li>
<li>- I suoi dati personali saranno trattati esclusivamente da soggetti incaricati e Responsabili (esterni) individuati dal Titolare o da soggetti incaricati individuati dal Responsabile (esterno), autorizzati ed istruiti in tal senso, adottando tutte quelle misure tecniche ed organizzative adeguate per tutelare i diritti, le libert&agrave; e i legittimi interessi che Le sono riconosciuti per legge in qualit&agrave; di Interessato;</li>
<li>- I Suoi dati, resi anonimi, potranno essere utilizzati anche per finalit&agrave; statistiche (D.Lgs. 281/1999 e s.m.i.);</li>
<li>- I Suoi dati personali sono conservati per il periodo di 10 anni a partire dalla chiusura delle attivit&agrave; connesse alle finalit&agrave; per i quali sono stati conseguiti, salvo i casi in cui la conservazione dei dati sia richiesta da norme di legge od altri fini (contabili, fiscali, di conservazione di attestazioni e certificati, ecc.);</li>
<li>- I Suoi dati personali non saranno in alcun modo oggetto di trasferimento in un Paese terzo extraeuropeo, n&eacute; di comunicazione a terzi fuori dai casi previsti dalla normativa in vigore;</li>
<li>- I Suoi dati personali saranno oggetto di processi decisionali automatizzati, compresa la profilazione, per conoscere il suo livello personale di occupabilit&agrave;, cos&igrave; come stabilito dal D.lgs. 150/2015 Art. 19, ovvero la sua distanza dal mercato del lavoro, per poterle offrire servizi di accompagnamento e inserimento nel mercato del lavoro, in base alle sue specifiche caratteristiche, secondo quanto previsto dal Decreto Direttoriale del Ministero del Lavoro e Politiche Sociali &ndash; Direzione Generale per le Politiche Attive, i Servizi per il Lavoro e la Formazione, nr. 10 del 23 gennaio 2015;</li>
<li>- I Suoi dati personali potranno essere comunicati ai seguenti soggetti:
', to_date('01/01/2019', 'dd/mm/yyyy'), '');


update PSLP_D_MESSAGGIO 
set TESTO = TESTO || chr(10) ||
'<ul>
<li>_ Autorit&agrave; con finalit&agrave; ispettive o di vigilanza o Autorit&agrave; giudiziaria nei casi previsti dalla legge;</li>
<li>_ ANPAL, Divisione 3 - Autorit&agrave; di gestione della Misura; Ministero del lavoro e delle politiche sociali, Segretariato Generale - Autorit&agrave; di Audit della Misura; ANPAL, Divisione 6 - Autorit&agrave; di Certificazione della Misura;</li>
<li>_ Autorit&agrave; di Audit e di Certificazione del POR FSE 2014-2020 della Regione Piemonte;</li>
<li>_ Soggetti pubblici, in attuazione delle proprie funzioni previste per legge (ad es. in adempimento degli obblighi di certificazione o in attuazione del principio di leale cooperazione istituzionale, ai sensi dell&rsquo;art. 22, c. 5 della L. 241/1990);</li>
<li>_ Altre Direzioni/Settori della Regione Piemonte per gli adempimenti di legge o per lo svolgimento delle attivit&agrave; istituzionali di competenza.</li>
</ul>
</li>
</ul>
<p>Si precisa che, con riferimento ai file temporanei o permanenti di sessione (cookies) non viene fatto uso di cookies per la trasmissione di informazioni di carattere personale.</p>
<p>Ogni Interessato potr&agrave; esercitare i diritti previsti dagli artt. da 15 a 22 del Regolamento (UE) 2016/679, quali: la conferma dell&rsquo;esistenza o meno dei suoi dati personali e la loro messa a disposizione in forma intellegibile; avere la conoscenza delle finalit&agrave; su cui si basa il trattamento; ottenere la cancellazione, la trasformazione in forma anonima, la limitazione o il blocco dei dati trattati in violazione di legge, nonch&eacute; l&rsquo;aggiornamento, la rettifica o, se vi &egrave; interesse, l&rsquo;integrazione dei dati; opporsi, per motivi legittimi, al trattamento stesso, rivolgendosi al Titolare, al Responsabile della protezione dati (DPO) o al Responsabile del trattamento, tramite i contatti di cui sopra o il diritto di proporre reclamo all&rsquo;Autorit&agrave; di controllo competente.</p>'
where ID_MESSAGGIO = 10;

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1000, 'ME001', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Le credenziali di SPID imputate non sono state riconosciute; verificare la correttezza di quanto indicato a livello di Nome Utente e/o Password', 'Le credenziali di SPID imputate non sono state riconosciute; verificare la correttezza di quanto indicato a livello di Nome Utente e/o Password', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1001, 'ME002', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Cortesemente, si richiede di effettuare nuovamente l''operazione ...', 'Cortesemente, si richiede di effettuare nuovamente l''operazione, in quanto si e'' verificato un problema di connettivita''. Se persistesse il mancato accesso, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1003, 'ME004', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'E'' obbligatorio selezionare la presa visione dell''informativa sulla privacy', 'E'' obbligatorio selezionare la presa visione dell''informativa sulla privacy
', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1008, 'ME009', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non risulta possibile operare sulla Garanzia Giovani, in quanto l''ultimo appuntamento del Cittadino risulta essere in Stato Erogato oppure Da Erogare', 'Non risulta possibile operare sulla Garanzia Giovani, in quanto l''ultimo appuntamento del Cittadino risulta essere in Stato Erogato oppure Da Erogare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1009, 'ME010', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani, si rende necessario effettuare il calcolo del Profiling', 'Per operare sulla Garanzia Giovani, si rende necessario effettuare il calcolo del Profiling', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1012, 'ME013', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani, si rende necessario prenotare un appuntamento', 'Per operare sulla Garanzia Giovani, si rende necessario prenotare un appuntamento', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1013, 'ME014', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non e'' possibile mettere in Stato Erogato un appuntamento con data futura', 'Non e'' possibile mettere in Stato Erogato un appuntamento con data futura', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1014, 'ME015', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per procedere con la modifica dei dati anagrafici, si rende necessaria la variazioni di almeno uno dei dati', 'Per procedere con la modifica dei dati anagrafici, si rende necessaria la variazioni di almeno uno dei dati', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1018, 'ME019', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani per conto di un Minore, mancando l''adesione di quest''ultimo sul sistema regionale del Piemonte, in stato Aperto ...', 'Per operare sulla Garanzia Giovani per conto di un Minore, mancando l''adesione di quest''ultimo sul sistema regionale del Piemonte, in stato Aperto:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1021, 'ME022', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Essendo l''appuntamento in uno stato finale (diverso "Da Erogare"), non risulta possibile modificare l''incontro', 'Essendo l''appuntamento in uno stato finale (diverso "Da Erogare") non risulta possibile annullare o spostare l''incontro', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1025, 'ME026', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Avendo variato il dato anagrafico della Provincia di Residenza e/o Domicilio rispetto all''ultimo calcolo, si rende necessario il ricalcolo del Profiling', 'Avendo variato il dato anagrafico della Provincia di Residenza e/o Domicilio rispetto all''ultimo calcolo, si rende necessario il ricalcolo del Profiling', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1029, 'ME030', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non sono piu'' disponibili appuntamenti per il Calendario. E'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', 'Non sono piu'' disponibili appuntamenti per il Calendario. E'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3004, 'MI005', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p>Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>Al momento, a tuo nome non risulta presente un appuntamento, neanche a fronte di un Minore.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3008, 'MI009', 'Gestione Allegati', 'TRV', 'MINF', 'Allegati', '<p>In questa sezione puoi caricare e successivamente inviare al Centro per l''Impiego di competenza la documentazione utile a completare il tuo profilo professionale.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1030, 'ME031', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per proseguire con la prenotazione devono essere valorizzati: Provincia e Comune Residenza e/o Provincia e Comune Domicilio, insieme alla E-mail di contatto', 'Per proseguire con la prenotazione devono essere valorizzati: Provincia e Comune Residenza e/o Provincia e Comune Domicilio, insieme alla E-mail di contatto ', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1035, 'ME036', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Il Telefono / Cellulare / Fax deve essere composto da sole cifre numeriche ed eventualmente dai seguenti caratteri separatori: / - .', 'Il Telefono / Cellulare / Fax deve essere composto da sole cifre numeriche ed eventualmente dai seguenti caratteri separatori: / - .', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3001, 'MI002', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, non essendo la tua anagrafica registrata a sistema; potrai altresi'' operare per conto di un Minore, se questi possiede l''adesione, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p class="InfoBlue">In caso volessi registrare la tua anagrafica e presentare l''adesione a Garanzia Giovani a tuo nome, dovrai prima aderire sul portale nazionale di A.N.P.A.L..</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3002, 'MI003', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, non essendo la tua adesione registrata a sistema; potrai altresi'' operare per conto di un Minore, se questi possiede l''adesione, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>In caso volessi presentare l''adesione a Garanzia Giovani a tuo nome, dovrai prima aderire sul portale nazionale di A.N.P.A.L..</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3003, 'MI004', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, essendo la tua adesione registrata a sistema, ma gia'' conclusa; potrai altresi'' operare per conto di un Minore, se questi possiede l''Adesione, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>In caso volessi presentare un''altra adesione a Garanzia Giovani a tuo nome, dovrai prima aderire sul portale nazionale di A.N.P.A.L..</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3005, 'MI006', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p> 
<p>Al momento, a tuo nome risulta presente un appuntamento per Minore.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3006, 'MI007', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, essendo l''ultimo appuntamento in stato Da Erogare / Erogato.</p>
<p class="InfoBlue">Potrai altresi'' operare per conto di un Minore, se questi possiede l''Adesione a Garanzia Giovani, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3007, 'MI008', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p>&nbsp;</p>
<div id="u35" class="ax_default label">
<div id="u35_text" class="text ">
<p><span>Benvenuto nel portale&nbsp;</span><span>Servizi al Lavoro</span><span>&nbsp;della Regione Piemonte, dedicato ai giovani dai 15 ai 29 anni.</span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>
<div id="u37" class="ax_default label">
<div id="u37_text" class="text ">
<p><span data-mce-mark="1">Dopo aver preso visione e accettato l''informativa sulla privacy, in pochi e semplici passaggi potrai completare l''adesione al programma Garanzia Giovani e fissare il primo appuntamento presso il Centro per l''Impiego di competenza,&nbsp;</span><span data-mce-mark="1">per te o per un minore di cui sei in possesso di responsabilit&agrave; genitoriale</span></p>
</div>
</div>
<p><strong>&nbsp;</strong></p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (2000, 'ST001', 'Stampa riepilogo Adesione GG', 'GG', 'STAM', 'ADESIONE GARANZIA GIOVANI', '{0}' || chr(10) ||
chr(10) ||
'                                                              Data di emissione {1,date,dd/MM/yyyy}.' || chr(10) ||
chr(10) ||
'Il/La Sig./ra {2} ' || chr(10) ||
chr(10) ||
'  Codice fiscale {3}'|| chr(10) ||
chr(10) ||
'  nato/a il {5,date,dd/MM/yyyy} a {4} ,'|| chr(10) ||
chr(10) ||
'ha aderito al programma Garanzia Giovani in Piemonte in data {6,date,dd/MM/yyyy}, con il numero {7}.' || chr(10) ||
chr(10) ||
'Lo stato attuale dell''''adesione e'''' {8} a partire dal {9,date,dd/MM/yyyy}.' || chr(10) ||
chr(10) ||
chr(10) ||
'                                                              Il funzionario incaricato' || chr(10) ||
'                                                                        {10}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1002, 'ME003', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per proseguire con l''operativita'' nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', 'Per proseguire con l''operativita'' nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1004, 'ME005', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Si sono verificati dei problemi che non permettono di proseguire con l''operativita'' ...', 'Si sono verificati dei problemi che non permettono di proseguire con l''operativita''. 
Per poter operare nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3010, 'MI011', 'Profiling', 'TRV', 'MINF', 'Per poter eseguire il calcolo del Profiling, il Domicilio deve essere in Piemonte; in caso contrario, non sara'' possibile effettuarlo', 'Per poter eseguire il calcolo del Profiling, il Domicilio devono essere in Piemonte; in caso contrario, non sara'' possibile effettuarlo', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1006, 'ME007', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani a proprio nome, mancando la propria anagrafica sul sistema regionale del Piemonte ...', 'Per operare sulla Garanzia Giovani a proprio nome, mancando la propria anagrafica sul sistema regionale del Piemonte:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare
> si puo'' eventualmente operare per conto di un Minore, se questi ha gia'' aderito.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1010, 'ME011', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Le credenziali di SPID imputate sono riconducibili ad un Soggetto minorenne; e'' consentito operare solo su Soggetti maggiorenni.', 'Le credenziali di SPID imputate sono riconducibili ad un Soggetto minorenne; e'' consentito operare solo su Soggetti maggiorenni.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1011, 'ME012', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non sono state fornite le risposte a tutte le informazioni aggiuntive ...', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non sono state fornite le risposte a tutte le informazioni aggiuntive in elenco (vedasi la colonna risposta vuota, per individuare quelle su cui fornire la risposta mancante)', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1016, 'ME017', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani per conto di un Minore, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliar', 'Per operare sulla Garanzia Giovani per conto di un Minore, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1017, 'ME018', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani per conto di un Minore, mancando l''anagrafica di quest''ultimo sul sistema regionale del Piemonte ...', 'Per operare sulla Garanzia Giovani per conto di un Minore, mancando l''anagrafica di quest''ultimo sul sistema regionale del Piemonte:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1019, 'ME020', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Il Codice Fiscale selezionato del Minore ha un''eta'' inferiore a 15 anni, eta'' minima utile per poter operare sulla Garanzia Giovani', 'Il Codice Fiscale selezionato del Minore ha un''eta'' inferiore a 15 anni, eta'' minima utile per poter operare sulla Garanzia Giovani', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1022, 'ME023', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non risulta possibile operare sulla Garanzia Giovani, in quanto l''ultimo appuntamento del Minore selezionato risulta essere in Stato Erogato oppure Da Erogare', 'Non risulta possibile operare sulla Garanzia Giovani, in quanto l''ultimo appuntamento del Minore selezionato risulta essere in Stato Erogato oppure Da Erogare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1024, 'ME025', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non e'' attuabile il calcolo del Profiling, visto che il soggetto non risulta residente in Italia', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non e'' attuabile il calcolo del Profiling, visto che il soggetto non risulta residente in Italia', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1026, 'ME027', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non e'' stata fornita la risposta all''informazione aggiuntiva in inserimento, considerata bloccante', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non e'' stata fornita la risposta all''informazione aggiuntiva in inserimento, considerata bloccante', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3009, 'MI010', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''Adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di riferimento.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1031, 'ME032', 'Messaggi di errore bloccanti 
', 'GG', 'MERR', 'Il Comune indicato non appartiene alla Provincia selezionata', 'Il Comune indicato non appartiene alla Provincia selezionata', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1032, 'ME033', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Il CAP deve essere composta da 5 cifre', 'Il CAP deve essere composta da 5 cifre', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1033, 'ME034', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Se la Residenza/Domicilio e'' all''estero (non e'' in Italia), si devono lasciare vuoti tutti gli altri dati (Toponimo / Indirizzo / N.Civico / Provincia / Comune / CAP)', 'Se la Residenza/Domicilio e'' all''estero (non e'' in Italia), si devono lasciare vuoti tutti gli altri dati (Toponimo / Indirizzo / N.Civico / Provincia / Comune / CAP)', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1034, 'ME035', 'Messaggi di errore bloccanti 
', 'GG', 'MERR', 'Se la Residenza/Domicilio e'' in Italia, si devono valorizzare tutti i dati (Toponimo / Indirizzo / N.Civico / Provincia / Comune / CAP)', 'Se la Residenza/Domicilio e'' in Italia, si devono valorizzare tutti i dati (Toponimo / Indirizzo / N.Civico / Provincia / Comune / CAP)', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1036, 'ME037', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'L''e-mail di contatto e'' fondamentale che venga valorizzata, al fine di poter comunicare gli avanzamenti dell''iter dell''adesione a Garanzia Giovani', 'L''e-mail di contatto e'' fondamentale che venga valorizzata, al fine di poter comunicare gli avanzamenti dell''iter dell''adesione a Garanzia Giovani', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1037, 'ME038', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Il formato del sito internet non e'' corretto', 'Il formato del sito internet non e'' corretto', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1038, 'ME039', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per poter procedere, il Domicilio deve essere in Piemonte; in caso contrario, non sara'' possibile proseguire', 'Per poter procedere, il Domicilio devono essere in Piemonte; in caso contrario, non sara'' possibile proseguire', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1, 'PLAV1', 'Privacy cittadino: intestazione', 'TRV', 'PRV', 'Informativa sul trattamento dei dati personali ad uso dei responsabili esterni', '<p style="text-align: left;" align="center"><strong><strong>Informativa sul trattamento dei dati personali ad uso dei responsabili esterni, ai sensi dell&rsquo;art. 13 e 14 GDPR 2016/679</strong><br /></strong></p>
<p>Gentile Utente,</p>
<p>La informiamo che i dati personali da Lei forniti alla Direzione Coesione sociale della Regione Piemonte o acquisiti tramite altri sistemi informativi della Pubblica Amministrazione (Portale Garanzia Giovani, Sistema delle Comunicazioni Obbligatorie, Sistemi Informativi Lavoro, ecc.), saranno trattati secondo quanto previsto dal &ldquo;Regolamento (UE) 2016/679 relativo alla protezione delle persone fisiche con riguardo al trattamento dei dati personali, nonch&eacute; alla libera circolazione di tali dati e che abroga la direttiva 95/46/CE (Regolamento Generale sulla Protezione dei Dati, di seguito GDPR)&rdquo;.</p>
<p>&nbsp;</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1007, 'ME008', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Per operare sulla Garanzia Giovani a proprio nome, mancando la propria adesione sul sistema regionale del Piemonte, in stato Aperto ...', 'Per operare sulla Garanzia Giovani a proprio nome, mancando la propria adesione sul sistema regionale del Piemonte, in stato Aperto:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare
> si puo'' eventualmente operare per conto di un Minore, se questi ha gia'' aderito; accedere alla funzionalita'' di menu preposta, denominata "Garanzia Giovani per Minore"', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4000, 'HC001', 'Help Profiling', 'TRV', 'MHCA', 'Help campo', '<p>Il profiling &egrave; lo strumento adottato dal Programma Garanzia Giovani che permette&nbsp; ai Servizi per l''Impiego di individuare il percorso pi&ugrave; coerente con le caratteristiche personali, formative e professionali dei giovani iscritti e presi in carico e di determinare il livello di distanza dal mercato del lavoro.</p>
<p>Il calcolo del Profiling non &egrave; obbligatorio.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3011, 'MI012', 'Prenotazione', 'TRV', 'MINF', 'Per poter prenotare l''appuntamento presso il Centro per l''Impiego di competenza, il Domicilio deve essere in Piemonte; in caso contrario, non sara'' possibile effettuarlo', 'Per poter prenotare l''appuntamento presso il Centro per l''Impiego di competenza, il Domicilio devono essere in Piemonte; in caso contrario, non sara'' possibile effettuarlo', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3012, 'MI013', 'Anagrafe', 'TRV', 'MINF', 'Se selezionato erroneamente una Nazione diversa da Italia, con il tasto ANNULLA e'' possibile ripristinare i dati precedenti', 'Se selezionato erroneamente una Nazione diversa da Italia, con il tasto ANNULLA e'' possibile ripristinare i dati precedenti', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4001, 'HC002', 'Help Informazioni Aggiuntive', 'TRV', 'MHCA', 'Help campo', '<p>Per completare il profilo del Cittadino, viene richiesta l''eventuale compilazione delle Informazioni Aggiuntive.</p>
<p>Alcune di queste informazioni potrebbero essere obbligatorie; in tal caso, verr&agrave; evidenziata la casistica.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4002, 'HC003', 'Help Anagrafe per conto proprio e per Minore', 'TRV', 'MHCA', 'Help campo', '<p>I dati anagrafici, nei confronti di se stessi o del Minore, sono richiesti relativamente alla Residenza, al Domicilio e al Recapito.</p>
<p>Obbligatoriamente, deve essere fornito un Domicilio in Piemonte, al fine di poter effettuare il successivo calcolo del Profiling e&nbsp; per poter prenotare l''appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>Anche l''email di contatto deve essere fornita, al fine di poter ricevere le comunicazioni che scaturiscono a fronte dell''iter di lavorazione dell''Adesione a Garanzia Giovani.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4003, 'HC004', 'Help Anagrafe per Responsabile', 'TRV', 'MHCA', 'Help campo', '<p>I dati anagrafici, nei confronti del Responsabile di Minore, sono richiesti relativamente alla Residenza, al Domicilio e al Recapito.</p>
<p>Nel caso che il Cittadino non fosse ancora presente all''interno dell''Anagrafe dei Lavoratori, verranno richieste anche alcune informazioni integrative obbligatorie, tipo: Sesso, Data / Comune / Nazione di Nascita.</p>
<p>Se il Lavoratore avesse una cittadinanza extra-Ue, potr&agrave; eventualmente fornire i dati del Permesso di Soggiorno.</p>
<p>Anche l''email di contatto deve essere fornita, al fine di poter ricevere le comunicazioni che scaturiscono a fronte dell''iter di lavorazione dell''Adesione a Garanzia Giovani.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3, 'GGRIC', 'Mail per completare adesione Garanzia Giovani', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: completamento adesione online', 'Gentile {0},
ti comunichiamo che abbiamo ricevuto in data {1,date,dd/MM/yyyy} la tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}. Per completare la tua adesione devi accedere al servizio {3} attraverso {4} (Sistema Pubblico di Identita'''' Digitale); se sei un Minore, l''''accesso deve essere effettuato da un tuo genitore o da chi detiene la patria potesta''''. Entrato nell''''applicazione, puoi visualizzare i dati in possesso della Regione Piemonte e completarli (alcuni dati richiesti sono obbligatori per procedere). Una volta inseriti i dati, potrai verificarne la correttezza e prenotare un appuntamento presso il tuo Centro per l''''Impiego che ti verra'''' proposto. 
Nel caso in cui non ti presenti al CpI non potrai proseguire il tuo percorso di Garanzia Giovani.'|| chr(10) ||
chr(10) ||
'{5}'|| chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.'|| chr(10) ||
chr(10) ||
'Cordiali Saluti'|| chr(10) ||
chr(10) ||
'{6}' || chr(10) ||
'''', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4, 'APCON', 'Mail per confermare la prenotazione', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: prenotazione appuntamento', 'Gentile {0},
ti comunichiamo che la domanda di adesione alla Garanzia Giovani e'''' stata inoltrata al CPI di {1} in data {2,date,dd/MM/yyyy} con numero progressivo {3}. Ti ricordiamo di presentarti il {4,date,dd/MM/yyyy} alle ore {5} presso il CPI di {1} in {6}; la durata dell''''incontro e'''' stimata in {7} minuti.'|| chr(10) ||
chr(10) ||
'{8}'|| chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.'|| chr(10) ||
chr(10) ||
'Cordiali Saluti'|| chr(10) ||
chr(10) ||
'{9}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (6, 'APANN', 'Mail in caso di annullo prenotazione da parte di operatore CPI', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: annullamento appuntamento', 'Gentile {0},
ti comunichiamo che abbiamo dovuto annullare l''''incontro previsto in data {1,date,dd/MM/yyyy} relativamente alla tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}. Per completare la tua adesione e'''' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''''Impiego attraverso il servizio {3}.'|| chr(10) ||
chr(10) ||
'{4}'|| chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.'|| chr(10) ||
chr(10) ||
'Cordiali Saluti'|| chr(10) ||
chr(10) ||
'{5}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (7, 'APNPR', 'Mail in caso di mancata presentazione del giovane all''appuntamento', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: mancata presentazione appuntamento Garanzia Giovani', 'Gentile {0},
visto che non ti sei presentato all''''incontro previsto in data {1,date,dd/MM/yyyy}, relativamente alla tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}, per completare la tua adesione e'''' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''''Impiego attraverso il servizio {3}. Se non sei piu'''' interessato, ti consigliamo di annullare l''''adesione sul portale Nazionale ANPAL.'|| chr(10) ||
chr(10) ||
'{4}'|| chr(10) ||
chr(10) ||
'Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.'|| chr(10) ||
chr(10) ||
'Cordiali Saluti'|| chr(10) ||
chr(10) ||
'{5}', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (11, 'PGEN1', 'Privacy generale', 'TRV', 'PRV', 'Informativa generale', '<p style="text-align: left;" align="center"><strong>Informativa generale</strong></p>
<p>La gestione dei dati del portale Servizi Lavoro Piemonte avviene secondo le disposizioni previste dal D.P.R. 28 dicembre 2000, n. 445, "Testo unico delle disposizioni legislative regolamentari in materia di documentazione amministrativa" e ss.mm.ii.</p>
<p>&nbsp;</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3000, 'MI001', 'Home Page Privacy ', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Al fine di procedere con l''operativita'' sulla Piattaforma Servizi al Lavoro in Piemonte, cortesemente, al primo accesso, si richiede di prendere visione della normativa sulla privacy.</p>
<p>Dovrai confermare la presa visione, tramite l''apposito campo, posto al termine dell''informativa.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1005, 'ME006', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Cortesemente, si richiede di effettuare nuovamente l''operazione di aggiornamento, in quanto si e'' verificato un problema di connettivita'' ...', 'Cortesemente, si richiede di effettuare nuovamente l''operazione di aggiornamento, in quanto si e'' verificato un problema di connettivita''. Se persistesse il problema, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1015, 'ME016', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'E'' obbligatorio selezionare la presa visione dell''informativa sulla responsabilita'' nei confronti del Minore', 'E'' obbligatorio selezionare la presa visione dell''informativa sulla responsabilita'' nei confronti del Minore', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1020, 'ME021', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Il Codice Fiscale selezionato del Minore ha un''eta'' maggiore/uguale a 18 anni, che non permette di operare per conto di un Minore sulla Garanzia Giovani ...', 'Il Codice Fiscale selezionato del Minore ha un''eta'' maggiore/uguale a 18 anni, che non permette di operare per conto di un Minore sulla Garanzia Giovani.
Essendo diventato maggiorenne, dovra'' operare per proprio conto. Sara'' prima necessario abilitarsi su SPID, in caso non avesse ancora le credenziali.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1023, 'ME024', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Colui che opera in qualita'' di genitore/affidatario/tutore deve essere maggiorenne', 'Colui che opera in qualita'' di genitore/affidatario/tutore deve essere maggiorenne', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1027, 'ME028', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non e'' possibile proseguire senza avere effettuato la prenotazione dell''appuntamento', 'Non e'' possibile proseguire senza avere effettuato la prenotazione dell''appuntamento', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1028, 'ME029', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Attenzione, il tuo appuntamento e'' stato Annullato, in quanto e'' stato variato il Comune di Residenza e/o Domicilio ...', 'Attenzione, il tuo appuntamento e'' stato Annullato, in quanto e'' stato variato il Comune di Residenza e/o Domicilio.
Per completare la tua Adesione a Garanzia Giovani, e'' necessario che prenoti un nuovo appuntamento presso il Centro per l''Impiego di riferimento domiciliare', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4004, 'HC005', 'Help Documenti Allegati', 'TRV', 'MHCA', 'Help campo', '<p>E'' data facolta'' di poter allegare documenti a supporto della prenotazione dell''appuntamento.</p>
<p>Sono accettate solo alcune tipologie di documenti, che sono elencati nel campo apposito di selezione.</p>', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1039, 'ME040', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Non e'' possibile prenotare un appuntamento in quanto il Domicilio non e'' in Piemonte. Se il Domicilio e'' stato erroneamente cambiato, dal riepilogo appuntamenti, ...', 'Non e'' possibile prenotare un appuntamento in quanto il Domicilio non e'' in Piemonte. Se il Domicilio e'' stato erroneamente cambiato, dal riepilogo appuntamenti, si puo'' accedere nuovamente all''anagrafica e impostare un Domicilio in Piemonte', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1040, 'ME041', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'L''e-mail di contatto e'' errata, non rispecchia i canoni di formattazione', 'L''e-mail di contatto e'' errata, non rispecchia i canoni di formattazione', to_date('01/01/2019', 'dd/mm/yyyy'), '');

commit;