/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
alter table PSLP_T_MESSAGGIO_CALENDARIO drop CONSTRAINT AK_PSLP_T_MESSAGGIO_CALEND_01;

CREATE UNIQUE INDEX AK_PSLP_T_MESSAGGIO_CALEND_01 ON PSLP_T_MESSAGGIO_CALENDARIO
(
       ID_CALENDARIO, COD_TIPO_MESSAGGIO_CALEND
)
      TABLESPACE PSLP_IDX
;
