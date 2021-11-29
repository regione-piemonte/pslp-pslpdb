/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
set define off;
SET SQLBLANKLINES on;

-- E' stata creata una nuova versione V02 dello script, che fa solo INSERT.
-- NB= Nella V01 faceva prima le INSERT e poi le UPDATE degli attributi Latitudine & Longitudine.

insert into pslp_d_ente_servizio_lavoro (ID_ENTE_SERVIZIO_LAVORO, DESCR_ENTE_SERVIZIO_LAVORO, COD_TIPO_ENTE, COD_MIN, INDIRIZZO, ID_PROVINCIA, NUM_TEL, EMAIL, GRUPPO_OPERATORE_SA, COD_OPERATORE_SA, SUBCODICE_SEDE, ID_ENTE_PADRE, LATITUDINE, LONGITUDINE, ORARIO_DI_APERTURA, NOTE)
values (1, 'CPI di ....', 'C', 'A052C000357', 'VIA FRANCESCO CRISPI 1234, 12345 AAAAAA BBBBB', '006', '0112223344', 'mail@agenziapiemontelavoro.it', 'A', 1535, '5', null, 44.7744477, 8.4567890, 'Dal Lunedi'' al Venerdi'' dalle ore 8.45 alle ore 12.30.
Lunedi'' e Martedi'' pomeriggio su appuntamento', null);

insert into pslp_d_ente_servizio_lavoro (ID_ENTE_SERVIZIO_LAVORO, DESCR_ENTE_SERVIZIO_LAVORO, COD_TIPO_ENTE, COD_MIN, INDIRIZZO, ID_PROVINCIA, NUM_TEL, EMAIL, GRUPPO_OPERATORE_SA, COD_OPERATORE_SA, SUBCODICE_SEDE, ID_ENTE_PADRE, LATITUDINE, LONGITUDINE, ORARIO_DI_APERTURA, NOTE)
values (2, 'CPI di ,,,', 'C', 'A124C000364', 'VIA ITALIA 1, 12321 ABCDCBA', '004', '0133445577', 'mail@agenziapiemontelavoro.it', 'A', 1535, '17', null, 44.76123, 8.383634, 'Dal Lunedi'' al Venerdi'' dalle ore 9.00 alle ore 12.00 e il pomeriggio su appuntamento', null);

/* ....... */


commit;
