/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

insert into PSLP_D_PARAMETRO (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (34, 'NUM_MAX_ESP_LAV_SAP', 'SAP - Numero massimo di esperienza di lavoro piu'' recenti da estrarre con una sap', '300', '', to_date('26-02-2020', 'dd-mm-yyyy'), null);

commit;