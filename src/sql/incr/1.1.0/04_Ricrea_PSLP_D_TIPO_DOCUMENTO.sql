/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

DROP TABLE PSLP_D_TIPO_DOCUMENTO CASCADE CONSTRAINTS;

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_TIPO_DOCUMENTO"                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_TIPO_DOCUMENTO (
    COD_TIPO_DOCUMENTO VARCHAR2(5) NOT NULL,
    DESCR_TIPO_DOCUMENTO VARCHAR2(100) NOT NULL
);

ALTER TABLE PSLP_D_TIPO_DOCUMENTO
  ADD CONSTRAINT PK_PSLP_D_TIPO_DOCUMENTO 
      PRIMARY KEY (COD_TIPO_DOCUMENTO)
	  USING INDEX 
	  TABLESPACE PSLP_IDX;
