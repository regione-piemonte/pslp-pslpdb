/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

drop table PSLP_D_MACRO_AMBITO cascade constraints;

/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_TIPO_CONTROLLO"                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_TIPO_CONTROLLO (
    COD_TIPO_CONTROLLO VARCHAR2(20) NOT NULL,
    DESCR_TIPO_CONTROLLO VARCHAR2(200) NOT NULL
);

alter table PSLP_D_TIPO_CONTROLLO
  add CONSTRAINT PK_PSLP_D_TIPO_CONTROLLO 
      PRIMARY KEY (COD_TIPO_CONTROLLO)
	  using index 
	  tablespace PSLP_IDX;

COMMENT ON TABLE PSLP_D_TIPO_CONTROLLO IS 'Elenco Tipi Controllo';

COMMENT ON COLUMN PSLP_D_TIPO_CONTROLLO.COD_TIPO_CONTROLLO IS 'Indica quale Tipo di Controllo deve essere attuato';

COMMENT ON COLUMN PSLP_D_TIPO_CONTROLLO.DESCR_TIPO_CONTROLLO IS 'Descrizione del Tipo di Controllo.';

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_MACRO_AMBITO"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_MACRO_AMBITO (
    COD_MACRO_AMBITO VARCHAR2(20) NOT NULL,
    DESCR_MACRO_AMBITO VARCHAR2(200) NOT NULL,
    COD_MACRO_AMBITO_PADRE VARCHAR2(20),
    COD_AMBITO_PRIVACY VARCHAR2(20),
    DESCR_TITOLO VARCHAR2(200),
    DESCR_SOTTO_TITOLO VARCHAR2(400),
    COD_TIPO_CONTROLLO VARCHAR2(20),
    ORDINAMENTO NUMBER(3),
    URL_PAGE VARCHAR2(200),
    URL_IMAGE VARCHAR2(200),
    COD_APP VARCHAR2(1),
    TIPO_LINK VARCHAR2(1),
    FLG_ACCESSO_AUTENTICATO VARCHAR2(1),
    D_INIZIO DATE NOT NULL,
    D_FINE DATE,
    CONSTRAINT CHK_PSLP_D_MACRO_AMBITO_01 CHECK (COD_APP in ('F', 'H')),
    CONSTRAINT CHK_PSLP_D_MACRO_AMBITO_02 CHECK (TIPO_LINK in ('E', 'I')),
    CONSTRAINT CHK_PSLP_D_MACRO_AMBITO_03 CHECK (FLG_ACCESSO_AUTENTICATO = 'S'),
    CONSTRAINT CHK_PSLP_D_MACRO_AMBITO_04 CHECK (not ((URL_IMAGE is not null or COD_APP is not null or TIPO_LINK is not null or FLG_ACCESSO_AUTENTICATO is not null) and URL_PAGE is null))
);

alter table PSLP_D_MACRO_AMBITO
  add CONSTRAINT PK_PSLP_D_MACRO_AMBITO 
      PRIMARY KEY (COD_MACRO_AMBITO)
	  using index 
	  tablespace PSLP_IDX;


CREATE INDEX IE_PSLP_D_MACRO_AMBITO_01 ON PSLP_D_MACRO_AMBITO (COD_MACRO_AMBITO_PADRE, 1) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_D_MACRO_AMBITO_02 ON PSLP_D_MACRO_AMBITO (COD_TIPO_CONTROLLO) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_D_MACRO_AMBITO_03 ON PSLP_D_MACRO_AMBITO (COD_AMBITO_PRIVACY) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.DESCR_MACRO_AMBITO IS 'Descrizione macro ambito';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.COD_AMBITO_PRIVACY IS 'Indica quale tipo di Privacy deve essere controllata';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.DESCR_TITOLO IS 'Descrizione Titolo Intestazione Funzionalità';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.DESCR_SOTTO_TITOLO IS 'Descrizione Sotto Titolo Intestazione funzionalità';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.COD_TIPO_CONTROLLO IS 'Indica quale Tipo di Controllo deve essere attuato per abilitare la voce di Menu o di Sotto-Menu';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.ORDINAMENTO IS 'Fornisce l''ordinamento di un Macro-Ambito, come Menu / Sotto-Menu / Combo';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.URL_PAGE IS 'URL della pagina legata alla voce di Menu o di Sotto-Menu';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.URL_IMAGE IS 'URL dell''immagine da riportare nel box della voce di Menu o di Sotto-Menu';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.COD_APP IS 'Codice interno del software, lato Client, può valere: F Fascicolo - H home';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.TIPO_LINK IS 'Codice interno del software, lato Client, può: valere E esterno - I interno';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.FLG_ACCESSO_AUTENTICATO IS 'Con S, il Flag indica che bisogna autenticarsi per accedere alla voce di Menu o di Sotto-Menu';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.D_INIZIO IS 'Data di inizio validità';

COMMENT ON COLUMN PSLP_D_MACRO_AMBITO.D_FINE IS 'Data di fine validità';

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

ALTER TABLE PSLP_D_AMBITO ADD CONSTRAINT FK_PSLP_D_MACRO_AMBITO_02 
    FOREIGN KEY (COD_MACRO_AMBITO) REFERENCES PSLP_D_MACRO_AMBITO (COD_MACRO_AMBITO);

ALTER TABLE PSLP_D_MACRO_AMBITO ADD CONSTRAINT FK_PSLP_D_MACRO_AMBITO_01 
    FOREIGN KEY (COD_MACRO_AMBITO_PADRE) REFERENCES PSLP_D_MACRO_AMBITO (COD_MACRO_AMBITO);

ALTER TABLE PSLP_D_MACRO_AMBITO ADD CONSTRAINT FK_PSLP_D_TIPO_CONTROLLO_01 
    FOREIGN KEY (COD_TIPO_CONTROLLO) REFERENCES PSLP_D_TIPO_CONTROLLO (COD_TIPO_CONTROLLO);

ALTER TABLE PSLP_D_MACRO_AMBITO ADD CONSTRAINT FK_PSLP_D_AMBITO_09
    FOREIGN KEY (COD_AMBITO_PRIVACY) REFERENCES PSLP_D_AMBITO (COD_AMBITO);

