/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_R_AMBITO_TIPO_DOC"                                     */
/* ---------------------------------------------------------------------- */
ALTER TABLE PSLP_T_DOCUMENTO DROP CONSTRAINT FK_PSLP_D_AMBITO_03;

CREATE TABLE PSLP_R_AMBITO_TIPO_DOC (
    COD_AMBITO VARCHAR2(5) NOT NULL,
    COD_TIPO_DOCUMENTO VARCHAR2(4) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

ALTER TABLE  PSLP_R_AMBITO_TIPO_DOC
  ADD CONSTRAINT PK_PSLP_R_AMBITO_TIPO_DOC 
      PRIMARY KEY (COD_AMBITO, COD_TIPO_DOCUMENTO)
	  USING INDEX
	  TABLESPACE PSLP_IDX;

/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE PSLP_R_AMBITO_TIPO_DOC ADD CONSTRAINT FK_PSLP_D_AMBITO_03 
    FOREIGN KEY (COD_AMBITO) REFERENCES PSLP_D_AMBITO (COD_AMBITO);

ALTER TABLE PSLP_R_AMBITO_TIPO_DOC ADD CONSTRAINT FK_PSLP_D_TIPO_DOCUMENTO_01 
    FOREIGN KEY (COD_TIPO_DOCUMENTO) REFERENCES PSLP_D_TIPO_DOCUMENTO (COD_TIPO_DOCUMENTO);

CREATE INDEX IE_PSLP_R_AMBITO_TIPO_DOC_01 ON PSLP_R_AMBITO_TIPO_DOC (COD_TIPO_DOCUMENTO) TABLESPACE PSLP_IDX;