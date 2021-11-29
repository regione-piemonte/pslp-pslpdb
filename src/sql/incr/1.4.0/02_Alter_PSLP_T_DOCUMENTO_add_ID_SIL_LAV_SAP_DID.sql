/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
ALTER TABLE PSLP_T_DOCUMENTO ADD ID_SIL_LAV_SAP_DID INTEGER;

CREATE INDEX IE_PSLP_T_DOCUMENTO_08 ON PSLP_T_DOCUMENTO (ID_SIL_LAV_SAP_DID) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_T_DOCUMENTO.ID_SIL_LAV_SAP_DID IS 'Riferimento alla Dichiarazione DID a cui il Patto di Servizio è collegato.';

