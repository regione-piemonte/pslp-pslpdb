/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
CREATE SEQUENCE SEQ_PSLP_T_CHIAMATA_SMS NOCACHE;

CREATE SEQUENCE SEQ_PSLP_T_SMS NOCACHE;

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_SISTEMA_CHIAMANTE"                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_SISTEMA_CHIAMANTE (
    COD_SISTEMA_CHIAMANTE VARCHAR2(5) NOT NULL,
    DESCR_SISTEMA_CHIAMANTE VARCHAR2(200) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE,
    DS_MAIL_RIFERIMENTO VARCHAR2(200) NOT NULL
);

ALTER TABLE PSLP_D_SISTEMA_CHIAMANTE ADD CONSTRAINT PK_PSLP_D_SISTEMA_CHIAMANTE PRIMARY KEY (COD_SISTEMA_CHIAMANTE) USING INDEX TABLESPACE PSLP_IDX;

COMMENT ON TABLE PSLP_D_SISTEMA_CHIAMANTE IS 'Tabella con i sistemi chiamanti ammessi a utilizzare i servizi esposti';

INSERT INTO PSLP_D_SISTEMA_CHIAMANTE (COD_SISTEMA_CHIAMANTE, DESCR_SISTEMA_CHIAMANTE, D_INIZIO, DS_MAIL_RIFERIMENTO) 
VALUES ('SILP','SILP.silpserver', to_date('15/03/2020 00:00:00', 'dd/mm/yyyy hh24:mi:ss'), 'servizio.lavoro@csi.it');

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_T_CHIAMATA_SMS"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_T_CHIAMATA_SMS (
    ID_CHIAMATA_SMS INTEGER NOT NULL,
    ID_SMS INTEGER,
    COD_SISTEMA_CHIAMANTE VARCHAR2(5) NOT NULL,
    METODO_CHIAMATO VARCHAR2(100) NOT NULL,
    ORA_INIZIO DATE NOT NULL,
    ORA_FINE DATE,
    MSG_INPUT CLOB NOT NULL,
    COD_ESITO VARCHAR2(20),
    DESCR_ESITO VARCHAR2(4000),
    NOTE VARCHAR2(4000)
);

ALTER TABLE PSLP_T_CHIAMATA_SMS ADD CONSTRAINT PK_PSLP_T_CHIAMATA_SMS PRIMARY KEY (ID_CHIAMATA_SMS) USING INDEX TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_CHIAMATA_SMS_01 ON PSLP_T_CHIAMATA_SMS (ID_SMS) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_CHIAMATA_SMS_02 ON PSLP_T_CHIAMATA_SMS (COD_SISTEMA_CHIAMANTE) TABLESPACE PSLP_IDX;

COMMENT ON TABLE PSLP_T_CHIAMATA_SMS IS 'Tabella che registra tutte le chiamate ricevute e effettuate in ambito SMS';

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_T_SMS"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_T_SMS (
    ID_SMS INTEGER NOT NULL,
    COD_SISTEMA_CHIAMANTE VARCHAR2(5) NOT NULL,
    COD_PRENOTAZIONE VARCHAR2(20),
    ID_ENTE INTEGER NOT NULL,
    NUM_CELL VARCHAR2(20) NOT NULL,
    TESTO_MESSAGGIO VARCHAR2(4000) NOT NULL,
    COD_CONTRATTO_SMS VARCHAR2(10),
    COD_TIPO_STATO VARCHAR2(40) NOT NULL,
    D_STATO DATE NOT NULL,
    COD_ERRORE VARCHAR2(20),
    DESCR_ERRORE VARCHAR2(4000),
    D_CANCELLAZIONE DATE,
    ID_SMS_REINOLTRO INTEGER,
    D_ULTIMO_AGGIORNAMENTO DATE NOT NULL,
    D_AGGIORN_SISTEMA_CHIAMANTE DATE,
    D_INSERIM DATE NOT NULL,
    D_AGGIORN DATE NOT NULL
);

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT PK_PSLP_T_SMS PRIMARY KEY (ID_SMS) USING INDEX TABLESPACE PSLP_IDX;

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT CHK_PSLP_T_SMS_01 CHECK ((COD_ERRORE <> 'E' and COD_TIPO_STATO is null) or (COD_ERRORE = 'E' and COD_TIPO_STATO is not null));

CREATE INDEX IE_PSLP_T_SMS_01 ON PSLP_T_SMS (COD_PRENOTAZIONE) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_02 ON PSLP_T_SMS (ID_ENTE) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_03 ON PSLP_T_SMS (COD_TIPO_STATO) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_04 ON PSLP_T_SMS (COD_ERRORE) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_05 ON PSLP_T_SMS (ID_SMS_REINOLTRO) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_06 ON PSLP_T_SMS (D_AGGIORN_SISTEMA_CHIAMANTE, 1) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_07 ON PSLP_T_SMS (COD_CONTRATTO_SMS) TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_T_SMS_08 ON PSLP_T_SMS (COD_SISTEMA_CHIAMANTE) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_T_SMS.COD_PRENOTAZIONE IS 'Codice prenotazione ricevuto da gateway SMS';

COMMENT ON COLUMN PSLP_T_SMS.D_CANCELLAZIONE IS 'Data di cancellazione del messaggio, se valorizzata indica che il messaggio ? stato cancellato';

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_STATO_SMS"                                           */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_STATO_SMS (
    COD_TIPO_STATO VARCHAR2(20) NOT NULL,
    DESCR_TIPO_STATO VARCHAR2(100) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

ALTER TABLE PSLP_D_STATO_SMS ADD CONSTRAINT PK_PSLP_D_STATO_SMS PRIMARY KEY (COD_TIPO_STATO) USING INDEX TABLESPACE PSLP_IDX;

insert into PSLP_D_STATO_SMS (COD_TIPO_STATO, DESCR_TIPO_STATO, D_INIZIO)
values ('S', 'Salvato', to_date('01/03/2020 00:00:00', 'dd/mm/yyyy hh24:mi:ss')); 
insert into PSLP_D_STATO_SMS (COD_TIPO_STATO, DESCR_TIPO_STATO, D_INIZIO)
values ('P', 'Prenotato', to_date('01/03/2020 00:00:00', 'dd/mm/yyyy hh24:mi:ss')); 
insert into PSLP_D_STATO_SMS (COD_TIPO_STATO, DESCR_TIPO_STATO, D_INIZIO)
values ('I', 'Inviato', to_date('01/03/2020 00:00:00', 'dd/mm/yyyy hh24:mi:ss')); 
insert into PSLP_D_STATO_SMS (COD_TIPO_STATO, DESCR_TIPO_STATO, D_INIZIO)
values ('W', 'In attesa di risposta', to_date('01/03/2020 00:00:00', 'dd/mm/yyyy hh24:mi:ss')); 
insert into PSLP_D_STATO_SMS (COD_TIPO_STATO, DESCR_TIPO_STATO, D_INIZIO)
values ('E', 'Errore)', to_date('01/03/2020 00:00:00', 'dd/mm/yyyy hh24:mi:ss'));

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_D_CONTRATTO_SMS"                                       */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_D_CONTRATTO_SMS (
    COD_CONTRATTO_SMS VARCHAR2(10) NOT NULL,
    DESCR_CONTRATTO VARCHAR2(100) NOT NULL,
    USERNAME_UTENTE VARCHAR2(20) NOT NULL,
    PASSWORD_UTENTE VARCHAR2(100) NOT NULL,
    COD_PROGETTO VARCHAR2(20) NOT NULL
);

ALTER TABLE PSLP_D_CONTRATTO_SMS ADD CONSTRAINT PK_PSLP_D_CONTRATTO_SMS PRIMARY KEY (COD_CONTRATTO_SMS) USING INDEX TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_D_CONTRATTO_SMS_01 ON PSLP_D_CONTRATTO_SMS (COD_PROGETTO) TABLESPACE PSLP_IDX;

COMMENT ON COLUMN PSLP_D_CONTRATTO_SMS.PASSWORD_UTENTE IS 'Password salvata criptata da applicativo';

INSERT INTO PSLP_D_CONTRATTO_SMS(COD_CONTRATTO_SMS,DESCR_CONTRATTO,USERNAME_UTENTE,PASSWORD_UTENTE,COD_PROGETTO)
VALUES ('APL01','Contratto per APL attivato a marzo 2020','PSLP','QCkr0SwZC0UdDuWC3CDRAQ==','49');

/* ---------------------------------------------------------------------- */
/* Add table "PSLP_R_SIST_CONTR_SMS"                                      */
/* ---------------------------------------------------------------------- */

CREATE TABLE PSLP_R_SIST_CONTR_SMS (
    COD_SISTEMA_CHIAMANTE VARCHAR2(5) NOT NULL,
    COD_CONTRATTO_SMS VARCHAR2(10) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

ALTER TABLE PSLP_R_SIST_CONTR_SMS ADD CONSTRAINT PK_PSLP_R_SIST_CONTR_SMS PRIMARY KEY (COD_SISTEMA_CHIAMANTE, COD_CONTRATTO_SMS) USING INDEX TABLESPACE PSLP_IDX;

CREATE INDEX IE_PSLP_R_SIST_CONTR_SMS_01 ON PSLP_R_SIST_CONTR_SMS (COD_CONTRATTO_SMS) TABLESPACE PSLP_IDX;

COMMENT ON TABLE PSLP_R_SIST_CONTR_SMS IS 'Mappa le abilitazioni ai vari contratti per ogni sistema chiamante';

INSERT INTO PSLP_R_SIST_CONTR_SMS(COD_SISTEMA_CHIAMANTE,COD_CONTRATTO_SMS,D_INIZIO)
VALUES ('SILP','APL01',TO_DATE('2020/01/01', 'YYYY/MM/DD'));

/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE PSLP_T_CHIAMATA_SMS ADD CONSTRAINT FK_PSLP_D_SISTEMA_CHIAMANTE_01 
    FOREIGN KEY (COD_SISTEMA_CHIAMANTE) REFERENCES PSLP_D_SISTEMA_CHIAMANTE (COD_SISTEMA_CHIAMANTE);

ALTER TABLE PSLP_T_CHIAMATA_SMS ADD CONSTRAINT FK_PSLP_T_SMS_01 
    FOREIGN KEY (ID_SMS) REFERENCES PSLP_T_SMS (ID_SMS);

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT FK_PSLP_D_ENTE_SERVIZIO_LAV_02 
    FOREIGN KEY (ID_ENTE) REFERENCES PSLP_D_ENTE_SERVIZIO_LAVORO (ID_ENTE_SERVIZIO_LAVORO);

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT FK_PSLP_D_STATO_SMS_01 
    FOREIGN KEY (COD_TIPO_STATO) REFERENCES PSLP_D_STATO_SMS (COD_TIPO_STATO);

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT FK_PSLP_T_SMS_03 
    FOREIGN KEY (ID_SMS_REINOLTRO) REFERENCES PSLP_T_SMS (ID_SMS);

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT FK_PSLP_D_CONTRATTO_SMS_02 
    FOREIGN KEY (COD_CONTRATTO_SMS) REFERENCES PSLP_D_CONTRATTO_SMS (COD_CONTRATTO_SMS);

ALTER TABLE PSLP_T_SMS ADD CONSTRAINT FK_PSLP_D_SISTEMA_CHIAMANTE_03
    FOREIGN KEY (COD_SISTEMA_CHIAMANTE) REFERENCES PSLP_D_SISTEMA_CHIAMANTE (COD_SISTEMA_CHIAMANTE);

ALTER TABLE PSLP_R_SIST_CONTR_SMS ADD CONSTRAINT FK_PSLP_D_SISTEMA_CHIAMANTE_02 
    FOREIGN KEY (COD_SISTEMA_CHIAMANTE) REFERENCES PSLP_D_SISTEMA_CHIAMANTE (COD_SISTEMA_CHIAMANTE);

ALTER TABLE PSLP_R_SIST_CONTR_SMS ADD CONSTRAINT FK_PSLP_D_CONTRATTO_SMS_01 
    FOREIGN KEY (COD_CONTRATTO_SMS) REFERENCES PSLP_D_CONTRATTO_SMS (COD_CONTRATTO_SMS);
