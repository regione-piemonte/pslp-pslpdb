/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

/* ---------------------------------------------------------------------- */
/* Add sequences                                                          */
/* ---------------------------------------------------------------------- */

CREATE SEQUENCE SEQ_PSLP_R_CPI_AMBITO NOCACHE;

CREATE SEQUENCE SEQ_PSLP_R_CPI_HUB NOCACHE;

/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_MACRO_AMBITO"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_MACRO_AMBITO (
    COD_MACRO_AMBITO VARCHAR2(20) NOT NULL,
    DESCR_MACRO_AMBITO VARCHAR2(200) NOT NULL,
    COD_MACRO_AMBITO_PADRE VARCHAR2(20),
    DESCR_TITOLO VARCHAR2(200),
    DESCR_SOTTO_TITOLO VARCHAR2(200),
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

alter table PSLP_D_MACRO_AMBITO
  add CONSTRAINT PK_PSLP_D_MACRO_AMBITO 
      PRIMARY KEY (COD_MACRO_AMBITO)
	  using index 
	  tablespace PSLP_IDX;


CREATE INDEX IE_PSLP_D_MACRO_AMBITO_01 ON PSLP_D_MACRO_AMBITO (COD_MACRO_AMBITO, 1) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.DESCR_MACRO_AMBITO IS 'Descrizione macro ambito';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.DESCR_TITOLO IS 'Descrizione Titolo Intestazione Funzionalità';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.DESCR_SOTTO_TITOLO IS 'Descrizione Sotto Titolo Intestazione funzionalità';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.D_INIZIO IS 'Data di inizio validità';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.D_FINE IS 'Data di fine validità';

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_VISIBILITA"                                          */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_VISIBILITA (
    COD_VISIBILITA VARCHAR2(1) NOT NULL,
    DESCR_VISIBILITA VARCHAR2(200) NOT NULL
);

alter table PSLP_D_VISIBILITA
  add CONSTRAINT PK_PSLP_D_VISIBILITA 
      PRIMARY KEY (COD_VISIBILITA)
	  using index 
	  tablespace PSLP_IDX;

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_AMBITO"                                              */
/* ---------------------------------------------------------------------- */

alter table PSLP_D_AMBITO add COD_MACRO_AMBITO VARCHAR2(20);
alter table PSLP_D_AMBITO add COD_VISIBILITA VARCHAR2(1);
alter table PSLP_D_AMBITO add D_INIZIO DATE DEFAULT to_date('31/07/2019 00:00:00', 'dd/mm/yyyy hh24:mi:ss') NOT NULL;
alter table PSLP_D_AMBITO add D_FINE DATE;

CREATE INDEX IE_PSLP_D_AMBITO_01 ON PSLP_D_AMBITO (COD_MACRO_AMBITO) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_D_AMBITO_02 ON PSLP_D_AMBITO (COD_VISIBILITA) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_D_AMBITO.COD_MACRO_AMBITO IS 'Macro Ambito che si lega alla tabella padre PSLP_D_MACRO_AMBITO';

COMMENT ON COLUMN PSLP_D_AMBITO.COD_VISIBILITA IS 'Questo valore viene assegnato al Calendario dell''Ambito in fase di creazione e stabilisce con quale Comune del Cittadino viene ricercato il Calendario da prenotare.';

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_R_CPI_AMBITO"                                          */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_R_CPI_AMBITO (
    ID_CPI_AMBITO INTEGER NOT NULL,
    COD_AMBITO VARCHAR2(20) NOT NULL,
    GRUPPO_OPERATORE VARCHAR2(1) NOT NULL,
    COD_OPERATORE NUMBER(5) NOT NULL,
    SUBCODICE NUMBER(3) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

alter table PSLP_R_CPI_AMBITO
  add CONSTRAINT PK_PSLP_R_CPI_AMBITO 
      PRIMARY KEY (ID_CPI_AMBITO)
	  using index 
	  tablespace PSLP_IDX;


CREATE INDEX IE_PSLP_R_CPI_AMBITO_01 ON PSLP_R_CPI_AMBITO (COD_AMBITO,GRUPPO_OPERATORE,COD_OPERATORE,SUBCODICE) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_R_CPI_AMBITO_02 ON PSLP_R_CPI_AMBITO (GRUPPO_OPERATORE,COD_OPERATORE,SUBCODICE) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_R_CPI_AMBITO.ID_CPI_AMBITO IS 'Chiave della tabella, solo i CpI/Sportelli di un Ambito possiederanno il relativo Calendario di prenotazione incontro. Si lega alla PSLP_R_CPI_HUB';

COMMENT ON COLUMN PSLP_R_CPI_AMBITO.GRUPPO_OPERATORE IS 'Primo campo della Tripletta che Identifica un CpI/Sportello';

COMMENT ON COLUMN PSLP_R_CPI_AMBITO.COD_OPERATORE IS 'Secondo campo della Tripletta che Identifica un CpI/Sportello';

COMMENT ON COLUMN PSLP_R_CPI_AMBITO.SUBCODICE IS 'Terzo campo della Tripletta che Identifica un CpI/Sportello';

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_R_CPI_HUB"                                             */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_R_CPI_HUB (
    ID_CPI_HUB INTEGER NOT NULL,
    ID_CPI_AMBITO INTEGER NOT NULL,
    GRUPPO_OPERATORE VARCHAR2(1) NOT NULL,
    COD_OPERATORE NUMBER(5) NOT NULL,
    SUBCODICE NUMBER(3) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

alter table PSLP_R_CPI_HUB
  add CONSTRAINT PK_PSLP_R_CPI_HUB 
      PRIMARY KEY (ID_CPI_HUB)
	  using index 
	  tablespace PSLP_IDX;

CREATE INDEX IE_PSLP_R_CPI_HUB_01 ON PSLP_R_CPI_HUB (ID_CPI_AMBITO,GRUPPO_OPERATORE,COD_OPERATORE,SUBCODICE) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_R_CPI_HUB_02 ON PSLP_R_CPI_HUB (GRUPPO_OPERATORE,COD_OPERATORE,SUBCODICE) TABLESPACE PSLP_IDX;

COMMENT ON TABLE PSLP_R_CPI_HUB IS 'Insieme (Hub) di CpI/Sportelli che si legano ad uno o più CpI/Sportelli abilitati all''Ambito per un Calendario. Praticamente, ad un Cittadino che appartiene ad un CpI di un Hub verrà proposto il Calendario a cui si lega l''Hub, perchè il suo Calendario non è presente.';

COMMENT ON COLUMN PSLP_R_CPI_HUB.GRUPPO_OPERATORE IS 'Primo campo della Tripletta che Identifica un CpI/Sportello';

COMMENT ON COLUMN PSLP_R_CPI_HUB.COD_OPERATORE IS 'Secondo campo della Tripletta che Identifica un CpI/Sportello';

COMMENT ON COLUMN PSLP_R_CPI_HUB.SUBCODICE IS 'Terzo campo della Tripletta che Identifica un CpI/Sportello';

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

ALTER TABLE PSLP_D_AMBITO ADD CONSTRAINT FK_PSLP_D_MACRO_AMBITO_02 
    FOREIGN KEY (COD_MACRO_AMBITO) REFERENCES PSLP_D_MACRO_AMBITO (COD_MACRO_AMBITO);

ALTER TABLE PSLP_D_AMBITO ADD CONSTRAINT FK_PSLP_D_VISIBILITA_01 
    FOREIGN KEY (COD_VISIBILITA) REFERENCES PSLP_D_VISIBILITA (COD_VISIBILITA);

ALTER TABLE PSLP_D_MACRO_AMBITO ADD CONSTRAINT FK_PSLP_D_MACRO_AMBITO_01 
    FOREIGN KEY (COD_MACRO_AMBITO_PADRE) REFERENCES PSLP_D_MACRO_AMBITO (COD_MACRO_AMBITO);

ALTER TABLE PSLP_R_CPI_AMBITO ADD CONSTRAINT FK_PSLP_D_AMBITO_08 
    FOREIGN KEY (COD_AMBITO) REFERENCES PSLP_D_AMBITO (COD_AMBITO);

ALTER TABLE PSLP_R_CPI_HUB ADD CONSTRAINT FK_PSLP_R_CPI_AMBITO_01 
    FOREIGN KEY (ID_CPI_AMBITO) REFERENCES PSLP_R_CPI_AMBITO (ID_CPI_AMBITO);
