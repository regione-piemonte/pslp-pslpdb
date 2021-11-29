/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
set define off;
SET SQLBLANKLINES on;

/* --------------------- */
/*     INSERT AMBITO    */
/* --------------------- */

insert into PSLP_D_AMBITO (COD_AMBITO, DESCR_AMBITO, ID_SIL_T_IN_SERVIZIO)
values ('OPE', 'Operatore gestore', null);


/* ----------------------- */
/*     INSERT MESSAGGIO    */
/* ----------------------- */

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1044, 'ME045', 'Messaggi di errore bloccanti', 'RDC', 'MERR', 'Messaggi di errore bloccanti', 'Per operare sul Reddito di Cittadinanza, mancando la propria anagrafica sul sistema regionale del Piemonte, deve prima presentare la domanda presso gli uffici abilitati.', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1045, 'ME046', 'Messaggi di errore bloccanti', 'RDC', 'MERR', 'Messaggi di errore bloccanti', 'Non risulta possibile operare con il Reddito di Cittadinanza, in quanto sul sistema regionale del Piemonte potrebbe: (1) mancare la propria domanda  (2) l''ultima domanda presentata non possiede uno stato idoneo  (3) la residenza non e'' in Piemonte.', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1046, 'ME047', 'Messaggi di errore bloccanti', 'RDC', 'MERR', 'Messaggi di errore bloccanti', '<p><strong>NOTA</strong>&nbsp;Per proseguire, devono essere valorizzati: i dati della Residenza, insieme alla E-mail di contatto.</p>
<p><strong>Attenzione:</strong> Per la prenotazione dell''appuntamento con il Reddito di Cittadinanza, la Residenza dovra'' essere in Piemonte, previa la mancata possibilita'' di prenotare l''appuntamento.</p>', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1047, 'ME048', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'L''anagrafica non esiste nel sistema regionale del Piemonte. Cortesemente, collergarsi all''applicativo Sistema Lavoro per censire il Lavoratore', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1048, 'ME049', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Il Codice Fiscale del Lavoratore e'' presente piu'' volte nell''anagrafica del sistema regionale del Piemonte. Cortesemente, segnalare il Lavoratore all''Assistenza Applicativa di Sistema Lavoro', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1049, 'ME050', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Il Codice Fiscale del Lavoratore non possiede il Codice SAP nell''anagrafica del sistema regionale del Piemonte. Cortesemente, collegarsi all''applicativo Servizi Lavoro per inviare/ricevere la SAP', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1050, 'ME051', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Il Codice Fiscale dell''utente non risulta abilitato ad operare sulla Piattaforma Servizi Lavoro Piemonte', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1051, 'ME052', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'La data inizio o fine del periodo digitato si sovrappone ad un altro periodo, gia'' presente, a parita di Ambito ed Ente (CpI/Sportello)', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1052, 'ME053', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'La data inizio del periodo digitato risulta maggiore a quella di fine. Deve essere minore/uguale', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1053, 'ME054', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'L''ora inizio o fine della fascia digitata si sovrappone ad un altra fascia, gia'' presente, a parita di Giorno della settimana', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1054, 'ME055', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'L''ora inizio della fascia digitata risulta maggiore/uguale a quella di fine. Deve essere minore', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1057, 'ME058', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'L''Eccezione, oggetto di modifica, risulta essere gia'' stata applicata al Calendario. Si invita ad inserire una nuova Eccezione', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1058, 'ME059', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Il numero max di prenotazioni stabilite per l''eccezione e'' inferiore a quanto e'' gia'' presente per il Calendario, nel giorno {0}, alle ore {1}, che riporta un numero di prenotazioni pari a {2}', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1059, 'ME060', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'E'' necessario selezionare un''unica eccezione da modificare', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1060, 'ME061', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Non e'' possibile modificare un''eccezione gia'' elaborata', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1061, 'ME062', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'E'' necessario selezionare almeno un''eccezione da eliminare', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1062, 'ME063', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Data eccezione non fornita', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1063, 'ME064', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Data eccezione inferiore della data inizio validita'' del periodo', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1064, 'ME065', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Data eccezione maggiore della data fine validita'' del periodo', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1065, 'ME066', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Nessuna fascia presente per il giorno selezionato', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3017, 'MI018', 'Home Operatore - Operazioni per conto terzi', 'TRV', 'MINF', 'Messaggi di errore bloccanti', '<p>Questa &egrave; la funzionalit&agrave; che permette di operare per conto di un Cittadino, con lo scopo di effettuare la <strong>prenotazione di un appuntamento</strong>, con una delle <strong>Misure</strong> presenti.</p>', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3018, 'MI019', 'Home Operatore - Gestione Calendari', 'TRV', 'MINF', 'Gestione Calendari', '<p>Questa &egrave; la funzionalit&agrave; che permette di <strong>gestire il Calendario degli appuntamenti</strong>, in termini di inserimento, modifica, cancellazione e ricerca.</p>', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3019, 'MI020', 'Home Operatore - Configurazione piattaforma', 'TRV', 'MINF', 'Configurazione piattaforma', '<p>Questa &egrave; la funzionalit&agrave; che permette di <strong>configurare alcune tipologie di dati</strong>, a livello trasversale.</p>', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3020, 'MI021', 'Stato Politica attiva su Domanda di Reddito di Cittadinanza - Operatore', 'OPE', 'MINF', 'Stato Politica attiva su Domanda RdC', 'Non presente o Proposta. Idoneo a prenotare incontro', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3021, 'MI022', 'Stato Politica attiva su Domanda di Reddito di Cittadinanza - Operatore', 'OPE', 'MINF', 'Stato Politica attiva su Domanda RdC', 'In stato avanzato, successivo alla Proposta. Impossibilitato a prenotare incontro.', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4007, 'HC008', 'Help campo Anagrafe per conto proprio', 'RDC', 'MHCA', 'Anagrafe per conto proprio', '<p>I dati anagrafici sono richiesti relativamente al Domicilio e al Recapito.</p>
<p>Obbligatoriamente, la Residenza deve essere in Piemonte, al fine di poter prenotare l''appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>Anche l''email di contatto deve essere fornita, per poter ricevere le comunicazioni che scaturiscono a fronte dell''iter di lavorazione della Domanda di Reddito di Cittadinanza.</p>', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5014, 'HP015', 'Help pagina Operazioni per conto terzi - Ricerca', 'OPE', 'MHPA', 'Operazioni per conto terzi - Ricerca', 'Operazioni per conto terzi - Ricerca', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5015, 'HP016', 'Help pagina Operazioni per conto terzi - Dati Anagrafici', 'OPE', 'MHPA', 'Operazioni per conto terzi - Dati Anagrafici', 'Operazioni per conto terzi - Dati Anagrafici ', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5016, 'HP017', 'Help pagina Operazioni per conto terzi - Prenotazione appuntamento GG', 'OPE', 'MHPA', 'Operazioni per conto terzi - Prenotazione appuntamento GG', 'Operazioni per conto terzi - Prenotazione appuntamento GG', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5017, 'HP018', 'Help pagina Operazioni per conto terzi - Prenotazione appuntamento RdC', 'OPE', 'MHPA', 'Operazioni per conto terzi - Prenotazione appuntamento RdC', 'Operazioni per conto terzi - Prenotazione appuntamento RdC', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5018, 'HP019', 'Help pagina Presentazione Privacy', 'RDC', 'MHPA', 'Presentazione Privacy', '<p>Il Reddito di Cittadinanza prevede l''adesione online attraverso i portali nazionali ed il completamento attraverso piattaforma regionale.</p>
<p>A seguito dell''adesione online, il richiedente riceve una mail in cui si richiede di completare le informazioni sulla piattaforma regionale, a cui dovra'' accedere attraverso SPID (Sistema Pubblico di Identita'' Digitale).</p>
<p>Collegatosi al sistema via SPID, si dovra'' completare la domanda di adesione, in dettaglio:<br />&gt;&nbsp;visualizza una informativa sul trattamento dei dati personali, sulla quale, al primo accesso, viene richiesta di apporre la presa visione<br />&gt;&nbsp;prenota un appuntamento presso il CpI o sportello (la funzionalita'' non sara'' attivabile, se non sono stati compilati tutti i dati definiti obbligatori).</p>
<p>Una volta effettuata la prenotazione dell''incontro, il sistema restituisce una ricevuta di conferma, inviandone anche una copia nella casella di posta elettronica indicata con i dati della prenotazione dell''appuntamento.<br />A pochi giorni dall''appuntamento, il sistema invia una ulteriore mail con il promemoria della prenotazione.</p>
<p>Il cittadino puo'' spostare l''appuntamento o annullarlo.</p>', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5019, 'HP020', 'Help pagina Dati Anagrafici ', 'RDC', 'MHPA', 'Dati Anagrafici', 'Dati Anagrafici RdC', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5020, 'HP021', 'Help pagina Informazioni aggiuntive & Documenti allegati', 'RDC', 'MHPA', 'Informazioni aggiuntive & Documenti allegati', 'Informazioni aggiuntive & Documenti allegati RdC', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5021, 'HP022', 'Help pagina Conferma', 'RDC', 'MHPA', 'Conferma', 'Conferma RdC', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5022, 'HP023', 'Help pagina Prenotazione appuntamento', 'RDC', 'MHPA', 'Prenotazione appuntamento', 'Prenotazione appuntamento RdC', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5023, 'HP024', 'Help pagina Riepilogo appuntamenti', 'RDC', 'MHPA', 'Riepilogo appuntamenti', 'Riepilogo appuntamenti RdC', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5024, 'HP025', 'Help pagina Scelta Operatore', 'OPE', 'MHPA', 'Scelta Operatore', 'Scelta Operatore', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1055, 'ME056', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti',
'<p><span style="text-decoration: underline;"><strong>GARANZIA GIOVANI:</strong></span> Per il lavoratore digitato, non e'' presente alcuna Adesione</p>',
to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1056, 'ME057', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti',
'<p><span style="text-decoration: underline;"><strong>REDDITO DI CITTADINANZA:</strong></span> Per il lavoratore digitato, non e'' presente alcuna Domanda</p>',
to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1066, 'ME067', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti',
'<p><span style="text-decoration: underline;"><strong>GARANZIA GIOVANI:</strong> </span>Per il lavoratore digitato, e'' presente un''Adesione, ma non e'' possibile prenotare un appuntamento (Stato Adesione diverso da Nuova adesione o ri-adesione o non domiciliato in Piemonte)</p>',
to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1067, 'ME068', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti',
'<p><span style="text-decoration: underline;"><strong>REDDITO DI CITTADINANZA:</strong></span> Per il lavoratore digitato, e'' presente una Domanda, ma non e'' possibile prenotare un appuntamento (Stato Politica attiva mancante o diverso da Proposta o non risiede in Piemonte)</p>',
to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1068, 'ME069', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Attenzione, e'' gia'' presente un Calendario attivo per lo stesso Ambito ed Ente indicati', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1069, 'ME070', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Nessuna fascia selezionata per la modifica', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);

insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1070, 'ME071', 'Messaggi di errore bloccanti', 'OPE', 'MERR', 'Messaggi di errore bloccanti', 'Impossibile operare sulla fascia, in quanto sono stati gia'' generati gli slot per gli appuntamenti', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);


insert into PSLP_D_MESSAGGIO (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (2001, 'ST002', 'Stampa riepilogo Reddito di Cittadinanza', 'RDC', 'STAM', 'Stampa domanda di Reddito di Cittadinanza', '{0}

                                                              Data di emissione {1,date,dd/MM/yyyy}.

Il/La Sig./ra {2} 

  Codice fiscale {3}

  nato/a il {5,date,dd/MM/yyyy} a {4} ,

ha presentato domanda di Reddito di Cittadinanza in data {6,date,dd/MM/yyyy}, con il numero {7}.


                                                              Il funzionario incaricato
                                                                        {8}', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);


insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (29, 'RCDOC', 'Mail in caso di accettazione o non accettazione del documento fornito in allegato alla prenotazione appuntamento RdC', 'RDC', 'MAIL', 'Reddito di Cittadinanza: Documentazione fornita: N. <numero doc> del <data>', 'Gentile {0},
la informiamo che il documento
{1}
inviato il {2} alle ore {3}
presso il CpI di
{4} in {5} 
si trova nel seguente stato: {6}. 

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{7}', to_timestamp('09/12/2019 13:00:00', 'dd/mm/yyyy hh24:mi:ss'), null);



/* ----------------------- */
/*     UPDATE MESSAGGIO    */
/* ----------------------- */

UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'GGRIC' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
ti comunichiamo che abbiamo ricevuto in data {1,date,dd/MM/yyyy} la tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}. Per completare la tua adesione devi accedere al servizio {3} attraverso {4} (Sistema Pubblico di Identita'' Digitale); se sei un Minore, l''accesso deve essere effettuato da un tuo genitore o da chi detiene la patria potesta''.
Entrato nell''applicazione, puoi visualizzare i dati in possesso della Regione Piemonte e completarli (alcuni dati richiesti sono obbligatori per procedere).
Una volta inseriti i dati, potrai verificarne la correttezza e prenotare un appuntamento presso il Centro per l''Impiego di competenza, che ti verra'' proposto.

Nel caso in cui non ti presenti al CpI non potrai proseguire il tuo percorso in Garanzia Giovani.

{5}

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{6}' WHERE ID_MESSAGGIO = 3 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'APCON' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
ti comunichiamo che la domanda di adesione alla Garanzia Giovani in Piemonte e'' stata inoltrata al CPI di {1} in data {2,date,dd/MM/yyyy} con numero progressivo {3}.

Ti ricordiamo di presentarti il {4,date,dd/MM/yyyy} alle ore {5} presso il CPI di {1} in {6}; la durata dell''incontro e'' stimata in {7} minuti.

{8}

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{9}' WHERE ID_MESSAGGIO = 4 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'APPRO' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
ti ricordiamo di presentarti il {1,date,dd/MM/yyyy} alle ore {2} presso il CPI di {3} in {4} per iniziare il tuo percorso in Garanzia Giovani in Piemonte; la durata dell''incontro e'' stimata in {5} minuti. Ricordati che il tuo numero progressivo e'' {6}. 

{7}

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{8}' WHERE ID_MESSAGGIO = 5 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'APANN' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
ti comunichiamo che abbiamo dovuto annullare l''incontro previsto in data {1,date,dd/MM/yyyy} relativamente alla tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}.

Per completare la tua adesione e'' necessario che prenoti un nuovo appuntamento presso il Centro per l''Impiego di competenza, attraverso il servizio {3}.

{4}

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}' WHERE ID_MESSAGGIO = 6 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'APNPR' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
visto che non ti sei presentato all''incontro previsto in data {1,date,dd/MM/yyyy}, relativamente alla tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}, per completare la tua adesione e'' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''Impiego di competenza, attraverso il servizio {3}.

Se non sei piu'' interessato, ti consigliamo di annullare l''adesione sul portale Nazionale A.N.P.A.L.

{4}

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}' WHERE ID_MESSAGGIO = 7 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'GGEND' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
ti comunichiamo che in data {1,date,dd/MM/yyyy} e'' terminato il tuo percorso in Garanzia Giovani in Piemonte con numero progressivo {2} per {3}.

{4}

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}' WHERE ID_MESSAGGIO = 8 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'DOCES' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
ti informiamo che il documento
{1}
inviato il {2} alle ore {3}
presso il CpI di
{4} in {5} 
si trova nel seguente stato: {6}. 

Questo messaggio e'' stato inviato in modalita'' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{7}' WHERE ID_MESSAGGIO = 9 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'RCRIC' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
le comunichiamo che abbiamo ricevuto in data {1,date,dd/MM/yyyy} la notifica della sua domanda per il Reddito di Cittadinanza con numero progressivo {2}. Per iniziare il percorso, dovra'' accedere al servizio {3} attraverso {4} (Sistema Pubblico di Identita'' Digitale).
Entrato nell''applicazione, potra'' visualizzare i dati in possesso della Regione Piemonte e completarli (alcuni dati richiesti sono obbligatori per procedere).
Una volta inseriti i dati, potra'' verificarne la correttezza e prenotare un appuntamento presso il Centro per l''Impiego di competenza, che le verra'' proposto. 

{5}

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{6}' WHERE ID_MESSAGGIO = 23 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'RCCON' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
le comunichiamo che la domanda per il Reddito di Cittadinanza e'' stata inoltrata al Centro per l''Impiego di {1} in data {2,date,dd/MM/yyyy} con numero progressivo {3}.

Le ricordiamo di presentarsi il {4,date,dd/MM/yyyy} alle ore {5} presso il Centro per l''Impiego di {1} in {6}; la durata dell''incontro e'' stimata in {7} minuti.

{8}

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{9}' WHERE ID_MESSAGGIO = 24 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'RCPRO' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
le ricordiamo di presentarsi il {1,date,dd/MM/yyyy} alle ore {2} presso il Centro per l''Impiego di {3} in {4} per iniziare il suo percorso con il Reddito di Cittadinanza; la durata dell''incontro e'' stimata in {5} minuti. Si ricorda che il suo numero progressivo e'' {6}. 

{7}

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{8}' WHERE ID_MESSAGGIO = 25 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'RCANN' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
le comunichiamo che abbiamo dovuto annullare l''incontro previsto in data {1,date,dd/MM/yyyy} relativamente alla sua domanda per il Reddito di Cittadinanza con numero progressivo {2}.

Per iniziare nuovamente il percorso, e'' necessario che prenoti un nuovo appuntamento presso il Centro per l''Impiego di competenza, attraverso il servizio {3}.

{4}

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}' WHERE ID_MESSAGGIO = 26 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'RCNPR' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
visto che non si e'' presentato all''incontro previsto in data {1,date,dd/MM/yyyy}, relativamente alla sua domanda per il Reddito di Cittadinanza con numero progressivo {2}, per iniziare nuovamente il percorso, e'' necessario che prenoti un nuovo appuntamento presso il Centro per l''Impiego di competenza, attraverso il servizio {3}.

{4}

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}' WHERE ID_MESSAGGIO = 27 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'RCEND' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MAIL' , TESTO = 'Gentile {0},
le comunichiamo che in data {1,date,dd/MM/yyyy} e'' terminato il suo percorso per il Reddito di Cittadinanza con numero progressivo {2} per {3}.

{4}

Questo messaggio e'' stato inviato in modalita'' automatica, la preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}' WHERE ID_MESSAGGIO = 28 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME002' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = ' Cortesemente, si richiede di effettuare nuovamente l''operazione, in quanto si e'' verificato un problema di connettivita''. Se persistesse il problema, si consiglia di recarsi presso il Centro per l''Impiego di riferimento' WHERE ID_MESSAGGIO = 1001 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME003' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = ' Per proseguire con l''operativita'' nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento' WHERE ID_MESSAGGIO = 1002 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME005' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = ' Si sono verificati dei problemi che non permettono di proseguire con l''operativita''.
Per poter operare nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento' WHERE ID_MESSAGGIO = 1004 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME006' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = 'Cortesemente, si richiede di effettuare nuovamente l''operazione di aggiornamento, in quanto si e'' verificato un problema di connettivita''. Se persistesse il problema, e'' necessario recarsi presso il Centro per l''Impiego di riferimento' WHERE ID_MESSAGGIO = 1005 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME030' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = 'Non sono piu'' disponibili appuntamenti per il Calendario. E'' necessario recarsi presso il Centro per l''Impiego di riferimento' WHERE ID_MESSAGGIO = 1029 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME031' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = '<p><strong>NOTA</strong>&nbsp;Per proseguire, devono essere valorizzati: i dati della Residenza, i dati del Domicilio, insieme alla E-mail di contatto.</p>
<p><strong>Attenzione:</strong> Per la prenotazione dell''appuntamento con Garanzia Giovani, il Domicilio dovra'' essere in Piemonte, previa la mancata possibilita'' di prenotare l''appuntamento.</p>' WHERE ID_MESSAGGIO = 1030 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME037' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = 'L''e-mail di contatto e'' fondamentale che venga valorizzata, al fine di poter comunicare gli avanzamenti' WHERE ID_MESSAGGIO = 1036 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'ME043' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MERR' , TESTO = 'La Data non e'' nel formato corretto GG/MM/AAAA, rispettando il formalismo del giorno, del mese e del giorno in base al mese' WHERE ID_MESSAGGIO = 1042 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'MI006' , COD_AMBITO = 'GG' , COD_TIPO_MESSAGGIO = 'MINF' , TESTO = '<p class=InfoBlue>Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>Al momento, a tuo nome risulta presente un appuntamento per Minore.</p>' WHERE ID_MESSAGGIO = 3005 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'MI016' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MINF' , TESTO = '<p>&nbsp;</p>
<div id=u35 class=ax_default label>
<div id=u35_text class=text >
<p><span>Benvenuto nel portale&nbsp;</span><span>Servizi al Lavoro</span><span>&nbsp;della Regione Piemonte.</span></p>
<p>&nbsp;</p>
</div>
<div id=u37 class=ax_default label>
<div id=u37_text class=text >
<p><span data-mce-mark=1>Dopo aver preso visione e accettato l''informativa sulla privacy, in pochi e semplici passaggi potrai fissare il primo appuntamento presso il Centro per l''Impiego di competenza&nbsp;</span><span data-mce-mark=1></span></p>
</div>' WHERE ID_MESSAGGIO = 3015 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'MI017' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MINF' , TESTO = '<p class=InfoBlue>Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti del Reddito di Cittadinanza, sara'' possibile operare a proprio nome, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>' WHERE ID_MESSAGGIO = 3016 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'HC007' , COD_AMBITO = 'RDC' , COD_TIPO_MESSAGGIO = 'MHCA' , TESTO = 'Il reddito di cittadinanza e'' un reddito erogato a determinate fasce della popolazione, che si impegnano a seguire corsi di formazione e ad aderire ad una delle offerte di lavoro proposte dai centri per l''impiego' WHERE ID_MESSAGGIO = 4006 ;


UPDATE PSLP_D_MESSAGGIO SET COD_MESSAGGIO = 'HP009' , COD_AMBITO = 'TRV' , COD_TIPO_MESSAGGIO = 'MHPA' , TESTO = '<p><strong>Prenotazione appuntamento: conferma.</strong></p>
<p>Vengono qui riepilogati i dati precedentemente utilizzati nel processo di prenotazione dell''appuntamento.</p>
<p>Ogni pagina su cui il cittadino ha visionato ed eventualmente modificato i dati &egrave; presentata come una sezione iconizzata:<br /><strong>&gt;</strong> Dati anagrafici responsabile richiedente (solo nel caso il cittadino operasse per un minore)<br /><strong>&gt;</strong> Dati anagrafici<br /><strong>&gt;</strong>&nbsp;Profiling (se presente)<br /><strong>&gt;</strong>&nbsp;Informazioni aggiuntive &amp; documenti allegati.</p>
<p>Magnificando ogni singola sezione, tramite l''apposita icona collocata in alto a destra, si potra'' visionare il contenuto e con l''altra icona si potra'' ritornare in modifica sulla pagina.</p>
<p>Il tasto PROSEGUI &egrave; sempre abilitato.</p>' WHERE ID_MESSAGGIO = 5008 ;

commit;
