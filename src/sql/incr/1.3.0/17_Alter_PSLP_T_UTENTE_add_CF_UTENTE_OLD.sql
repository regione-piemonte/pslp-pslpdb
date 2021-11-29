/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
ALTER TABLE PSLP_T_UTENTE ADD CF_UTENTE_OLD VARCHAR2(16);
COMMENT ON COLUMN PSLP_T_UTENTE.CF_UTENTE_OLD IS 'Salvataggio Cod Fiscale con cui il Cittadino aveva acceduto precedentemente a PSLP';
