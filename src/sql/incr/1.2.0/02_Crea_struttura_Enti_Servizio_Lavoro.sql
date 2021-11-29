/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
/* ---------------------------------------------------------------------- */
/* Tables                                                                 */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_PROVINCIA"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_PROVINCIA (
    ID_PROVINCIA VARCHAR2(3) NOT NULL,
    DESCR_PROVINCIA VARCHAR2(30) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

COMMENT ON TABLE PSLP_D_PROVINCIA IS 'Tabella nata con le sole province piemontesi per visualizzazione in una combo in maschera per selezionare la provincia di cui si vogliono vedere gli enti_servizio_lavoro';

ALTER TABLE PSLP_D_PROVINCIA
  ADD CONSTRAINT PK_PSLP_D_PROVINCIA 
      PRIMARY KEY (ID_PROVINCIA)
	  USING INDEX
	  TABLESPACE PSLP_IDX;
	  
/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_TIPO_ENTE"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_TIPO_ENTE (
    COD_TIPO_ENTE VARCHAR2(2) NOT NULL,
    DESCR_TIPO_ENTE VARCHAR2(100) NOT NULL
);

ALTER TABLE PSLP_D_TIPO_ENTE
  ADD CONSTRAINT PK_PSLP_D_TIPO_ENTE 
      PRIMARY KEY (COD_TIPO_ENTE)
	  USING INDEX
	  TABLESPACE PSLP_IDX;

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_ENTE_SERVIZIO_LAVORO"                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_ENTE_SERVIZIO_LAVORO (
    ID_ENTE_SERVIZIO_LAVORO INTEGER NOT NULL,
    DESCR_ENTE_SERVIZIO_LAVORO VARCHAR2(50) NOT NULL,
    COD_TIPO_ENTE VARCHAR2(2) NOT NULL,
    COD_MIN VARCHAR2(20),
    INDIRIZZO VARCHAR2(200),
    ID_PROVINCIA VARCHAR2(3) NOT NULL,
    NUM_TEL VARCHAR2(50),
    EMAIL VARCHAR2(60),
    GRUPPO_OPERATORE_SA VARCHAR2(1),
    COD_OPERATORE_SA NUMBER(5),
    SUBCODICE_SEDE VARCHAR2(4),
    ID_ENTE_PADRE INTEGER,
    LATITUDINE NUMBER,
    LONGITUDINE NUMBER,
    ORARIO_DI_APERTURA VARCHAR2(1000),
    NOTE VARCHAR2(4000)
);

ALTER TABLE PSLP_D_ENTE_SERVIZIO_LAVORO
  ADD CONSTRAINT PK_PSLP_D_ENTE_SERVIZIO_LAVORO 
      PRIMARY KEY (ID_ENTE_SERVIZIO_LAVORO)
	  USING INDEX
	  TABLESPACE PSLP_IDX;

ALTER TABLE PSLP_D_ENTE_SERVIZIO_LAVORO
  ADD CONSTRAINT CHK_PSLP_D_ENTE_SERVIZ_LAV_01
      CHECK ((COD_TIPO_ENTE = 'S' AND ID_ENTE_PADRE IS NOT NULL) OR (COD_TIPO_ENTE <> 'S' AND ID_ENTE_PADRE IS NULL));

CREATE INDEX IE_PSLP_D_ENTE_SERVIZIO_LAV_01 ON PSLP_D_ENTE_SERVIZIO_LAVORO (ID_PROVINCIA) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_D_ENTE_SERVIZIO_LAV_02 ON PSLP_D_ENTE_SERVIZIO_LAVORO (ID_ENTE_PADRE) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.COD_MIN IS 'Eventuale codice ministeriale dell''ente';

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.INDIRIZZO IS 'Contiene l''indirizzo dell''ente in formato testo libero, comprensivo anche di cap, comune, ...';

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.NUM_TEL IS 'Numero di telefono dell''ente; in caso di più numeri di telefono, vengono inseriti tutti in questo campo';

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.ID_ENTE_PADRE IS 'Nel caso di sportello CPI, contiene il CPI di appartenenza';

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.LATITUDINE IS 'Espressa in numero decimale';

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.LONGITUDINE IS 'Espressa in numero decimale';

COMMENT ON COLUMN PSLP_D_ENTE_SERVIZIO_LAVORO.ORARIO_DI_APERTURA IS 'Campo di testo libero per inserire gli orari di apertura';

/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE PSLP_D_ENTE_SERVIZIO_LAVORO ADD CONSTRAINT FK_PSLP_D_TIPO_ENTE_01 
    FOREIGN KEY (COD_TIPO_ENTE) REFERENCES PSLP_D_TIPO_ENTE (COD_TIPO_ENTE);

ALTER TABLE PSLP_D_ENTE_SERVIZIO_LAVORO ADD CONSTRAINT FK_PSLP_D_PROVINCIA_01 
    FOREIGN KEY (ID_PROVINCIA) REFERENCES PSLP_D_PROVINCIA (ID_PROVINCIA);

ALTER TABLE PSLP_D_ENTE_SERVIZIO_LAVORO ADD CONSTRAINT FK_PSLP_D_ENTE_SERVIZIO_LAV_01 
    FOREIGN KEY (ID_ENTE_PADRE) REFERENCES PSLP_D_ENTE_SERVIZIO_LAVORO (ID_ENTE_SERVIZIO_LAVORO);

-- INSERT
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('001', 'TORINO', to_date('01/01/1861', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('002', 'VERCELLI', to_date('01/01/1861', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('003', 'NOVARA', to_date('01/01/1861', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('004', 'CUNEO', to_date('01/01/1861', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('005', 'ASTI', to_date('01/01/1861', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('006', 'ALESSANDRIA', to_date('01/01/1861', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('096', 'BIELLA', to_date('16/04/1992', 'dd/mm/yyyy'));
insert into PSLP_D_PROVINCIA (ID_PROVINCIA, DESCR_PROVINCIA, D_INIZIO) values ('103', 'VERBANO CUSIO OSSOLA', to_date('23/05/1992', 'dd/mm/yyyy'));

insert into PSLP_D_TIPO_ENTE (COD_TIPO_ENTE, DESCR_TIPO_ENTE) values ('C', 'CPI');
insert into PSLP_D_TIPO_ENTE (COD_TIPO_ENTE, DESCR_TIPO_ENTE) values ('S', 'SPORTELLO CPI');

commit;
