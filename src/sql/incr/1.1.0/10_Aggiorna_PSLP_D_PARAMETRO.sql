/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
delete pslp_d_parametro;

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (15, 'MITTENTE_ALIAS', 'Nome descrittivo del mittente per invio mail', 'Alias Regione Piemonte test', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (9, 'DESTINATARIO_TEST', 'SOLO x AMBIENTE DI DEV/TEST: Destinatari mail', indirizzo1@organizzazione.it, indirizzo2@organizzazione.it, indirizzo3@organizzazione.it', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (11, 'INVIO_MAIL_SEMAPHORE', 'Semaforo per batch invio mail', 'S', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (12, 'INVIO_MAIL_RANGE', 'Orari per esecuzione batch invio mail Promemoria (nel formato: ora1,ora2,...)', '6,18,22', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (1, 'FINE_GG_FLG', 'Indica se inviare la mail per fine percorso Garanzia Giovani. Assume valore S o N. Se uguale ad S, si deve valutare anche il parametro FINE_GG_DT_MAIL', 'S', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (2, 'FINE_GG_DT_MAIL', 'Data invio mail per fine percorso GG. La mail viene inviata se la data invio e'' maggiore/uguale alla data parametro. Si deve valutare anche il parametro FINE_GG_FLG', '01/01/2010', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (3, 'STAMPA_PRIVACY', 'Dicitura per il riferimento di legge alla Privacy nella Stampa Adesione GG', '', 'TUTELA DELLA RISERVATEZZA (diritto alla Privacy) ai sensi del Decreto legislativo 196/2003, art. 13:', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (4, 'MITTENTE', 'Mail: Mittente', 'noreply@regione.piemonte.it', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (5, 'URL_PSLP', 'Mail: URL alla Piattaforma Servizi lavoro Piemonte (* DA CAMBIARE X PROD)', 'https://tst-sito.dominio.it/pslweb', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (6, 'URL_SPID', 'Mail: URL SPID', 'https://www.spid.gov.it/', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (7, 'FIRMA', 'Mail: Firma', 'Regione Piemonte - Settore Politiche del Lavoro', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (8, 'GG_DT_OK', 'Data idoneita'' a PSLP delle adesioni GG. Le adesioni GG vengono considerate in PSLP solo se la data adesione e'' maggiore/uguale alla data parametro', '01/01/2000', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (10, 'APPUNT_MARGINE_GG', 'Numero gg di margine per poter prenotare appuntamento. Nel fornire il primo giorno utile alla prenotazione, deve considerare N gg di margine per renderlo disponibile', '1', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (16, 'PROMEM_MARGINE_ORE', 'Numero ore di margine per inviare massivamente la mail di Promemoria al Cittadino, per evitare che la si mandi troppo a ridosso dell''incontro.', '12', '', to_date('29-04-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (17, 'RIC_GG_DT_MAIL', 'Data invio mail per ricezione iscrizione Adesione a GG. La mail viene inviata se la data invio e'' maggiore/uguale alla data parametro', '01/01/2019', '', to_date('30-08-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (18, 'GG_PROFILING_FLG', 'Indica se proporre la pagina del Profiling nel wizard per Garanzia Giovani. Assume valore S o N.', 'S', '', to_date('30-08-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (19, 'RDC_FLG', 'Indica se deve proporre la scelta della gestione del Reddito di Cittadinanza', 'N', '', to_date('30-08-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (20, 'TEMPO_ESPO_MSG', 'Tempo di esposizione dei messaggi a video. Unita'' di misura in secondi.', '4', '', to_date('30-08-2019', 'dd-mm-yyyy'), null);

commit;