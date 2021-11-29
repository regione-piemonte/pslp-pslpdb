/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_ESTENSIONE_DOC"                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_ESTENSIONE_DOC (
    COD_ESTENSIONE_DOC VARCHAR2(4) NOT NULL,
    DESCR_ESTENSIONE_DOC VARCHAR2(100) NOT NULL,
    DS_MIME_TYPE VARCHAR2(500)
);

ALTER TABLE PSLP_D_ESTENSIONE_DOC
  ADD CONSTRAINT PK_PSLP_D_ESTENSIONE_DOC 
      PRIMARY KEY (COD_ESTENSIONE_DOC)
	  USING INDEX
	  TABLESPACE PSLP_IDX;

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_R_TIPO_DOC_ESTENSIONE"                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_R_TIPO_DOC_ESTENSIONE (
    COD_TIPO_DOCUMENTO VARCHAR2(4) NOT NULL,
    COD_ESTENSIONE_DOC VARCHAR2(4) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

ALTER TABLE PSLP_R_TIPO_DOC_ESTENSIONE
  ADD CONSTRAINT PK_PSLP_R_TIPO_DOC_ESTENSIONE 
      PRIMARY KEY (COD_TIPO_DOCUMENTO, COD_ESTENSIONE_DOC)
	  USING INDEX
	  TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_R_TIPO_DOC_ESTENS_01 ON PSLP_R_TIPO_DOC_ESTENSIONE (COD_ESTENSIONE_DOC) TABLESPACE PSLP_IDX;

/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE PSLP_R_TIPO_DOC_ESTENSIONE ADD CONSTRAINT FK_PSLP_D_TIPO_DOCUMENTO_02 
    FOREIGN KEY (COD_TIPO_DOCUMENTO) REFERENCES PSLP_D_TIPO_DOCUMENTO (COD_TIPO_DOCUMENTO);

ALTER TABLE PSLP_R_TIPO_DOC_ESTENSIONE ADD CONSTRAINT FK_PSLP_D_ESTENSIONE_DOC_01 
    FOREIGN KEY (COD_ESTENSIONE_DOC) REFERENCES PSLP_D_ESTENSIONE_DOC (COD_ESTENSIONE_DOC);
