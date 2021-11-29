/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
alter table PSLP_T_MESSAGGIO_UTENTE add D_ANNULLO DATE;

COMMENT ON COLUMN PSLP_T_MESSAGGIO_UTENTE.D_ANNULLO IS 'Data Annullamento, che impedisce di inviare una mail.';

alter table PSLP_T_MESSAGGIO_UTENTE add D_ALLINEAMENTO DATE;

COMMENT ON COLUMN PSLP_T_MESSAGGIO_UTENTE.D_ALLINEAMENTO IS 'Data Allineamento, che certifica la comunicazione dello Stato e dell''Esito alla Fonte dove la Mail è registrata.';

