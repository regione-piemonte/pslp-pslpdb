/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/
 
insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (1, 'FINE_GG_FLG', 'Indica se inviare la mail per fine percorso Garanzia Giovani. Assume valore S o N. Se uguale ad S, si deve valutare anche il parametro FINE_GG_DT_MAIL', 'S', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (2, 'FINE_GG_DT_MAIL', 'Data invio mail per fine percorso GG. Le mail di fine percorso GG vengono inviate solo se la data di invio mail e'' maggiore/uguale alla data parametro. Si deve valutare anche il parametro FINE_GG_FLG', '01/01/2019', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (3, 'STAMPA_PRIVACY', 'Dicitura per il riferimento di legge alla Privacy nella Stampa Adesione GG', '', 'TUTELA DELLA RISERVATEZZA (diritto alla Privacy) ai sensi del Decreto legislativo 196/2003, art. 13:', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (4, 'MITTENTE', 'Mail: Mittente', 'noreply@regione.piemonte.it', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (5, 'URL_PSLP', 'Mail: URL alla Piattaforma Servizi lavoro Piemonte (* DA CAMBIARE X PROD)', 'https://secure.sistemapiemonte.it/pslweb', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (6, 'URL_SPID', 'Mail: URL SPID', 'https://www.spid.gov.it/', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (7, 'FIRMA', 'Mail: Firma', 'Regione Piemonte - Settore Politiche del Lavoro', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (8, 'GG_DT_OK', 'Data idoneita'' a PSLP delle adesioni GG. Le adesioni GG vengono considerate in PSLP solo se la data adesione e'' maggiore/uguale alla data parametro', '01/01/2018', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (9, 'DESTINATARIO_TEST', 'SOLO x AMBIENTE DI DEV/TEST: Destinatari mail', 'nome1.cognome1@organizzazione.nn, nome2.cognome2@organizzazione.nn, nome3.cognome3@organizzazione.nn, nome4.cognome4@organizzazione.nn', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (10, 'APPUNT_MARGINE_GG', 'Numero di gg come margine per poter prenotare appuntamento', '1', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (11, 'INVIO_MAIL_SEMAPHORE', 'Semaforo per batch invio mail', 'S', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (12, 'INVIO_MAIL_RANGE', 'Orari per esecuzione batch invio mail (nel formato: ora1,ora2,...)', '6.22', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (15, 'MITTENTE_ALIAS', 'Nome descrittivo del mittente per invio mail', 'Alias Regione Piemonte test', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (16, 'PROMEM_MARGINE_ORE', 'Numero di ore come margine per inviare la mail di promemoria al Cittadino', '12', '', to_date('01/01/2019', 'dd/mm/yyyy'), null);

commit;