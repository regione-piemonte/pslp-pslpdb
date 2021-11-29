/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
ALTER TABLE PSLP_T_MESSAGGIO_AGGIUNTIVO DROP CONSTRAINT CHK_PSLP_T_MESSAGGIO_AGGIUN_02;

ALTER TABLE PSLP_T_MESSAGGIO_AGGIUNTIVO 
  ADD CONSTRAINT CHK_PSLP_T_MESSAGGIO_AGGIUN_02
      CHECK (NOT (ID_CALENDARIO IS NOT NULL AND GRUPPO_OPERATORE IS NOT NULL));

COMMIT;
