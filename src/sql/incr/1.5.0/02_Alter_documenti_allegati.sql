/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
alter table PSLP_T_DOCUMENTO add ID_SILP_RICH_COLL_MIR integer;
comment on column PSLP_T_DOCUMENTO.ID_SILP_RICH_COLL_MIR is 'Riferimento alla Richiesta Iscrizione/Trasferimento per il Collocamento Mirato di SILP.';

alter table PSLP_T_DOCUMENTO modify COD_TIPO_DOCUMENTO varchar2(5);

--

alter table PSLP_R_AMBITO_TIPO_DOC add FLG_OBBLIGATORIO varchar2(1);
comment on column PSLP_R_AMBITO_TIPO_DOC.FLG_OBBLIGATORIO is 'Con S, il Flag indica che si richiede obbligatoriamente la tipologia di un documento per l''Ambito.';
alter table PSLP_R_AMBITO_TIPO_DOC 
  add constraint CHK_PSLP_R_AMBITO_TIPO_DOC_01
      check (FLG_OBBLIGATORIO = 'S');

alter table PSLP_R_AMBITO_TIPO_DOC modify COD_TIPO_DOCUMENTO varchar2(5);

--

alter table PSLP_R_TIPO_DOC_ESTENSIONE modify COD_TIPO_DOCUMENTO varchar2(5);

--

alter table PSLP_D_AMBITO add FLG_SOLO_OPERAT_ABIL varchar2(1);
comment on column PSLP_D_AMBITO.FLG_SOLO_OPERAT_ABIL is 'Con S, il Flag indica che l''Ambito/Funzionalità è abilitato solo agli Operatori profilati nella tab. PSLP_R_OPERAT_ABIL.';
alter table PSLP_D_AMBITO 
  add constraint CHK_PSLP_D_AMBITO_01
      check (FLG_SOLO_OPERAT_ABIL = 'S');

--

create sequence SEQ_PSLP_R_UTENTE_AMBITO nocache;

create table PSLP_R_UTENTE_AMBITO (
    ID_UTENTE_AMBITO INTEGER NOT NULL,
    ID_UTENTE INTEGER NOT NULL,
    COD_AMBITO VARCHAR2(5) NOT NULL,
    D_INIZIO DATE NOT NULL,
    D_FINE DATE
);

alter table PSLP_R_UTENTE_AMBITO 
  add constraint PK_PSLP_R_UTENTE_AMBITO 
      primary key (ID_UTENTE_AMBITO)
      using index
      tablespace PSLP_IDX;

create index IE_PSLP_R_UTENTE_AMBITO_01 on PSLP_R_UTENTE_AMBITO (COD_AMBITO) tablespace PSLP_IDX;

create unique index AK_PSLP_R_UTENTE_AMBITO_01 on PSLP_R_UTENTE_AMBITO (ID_UTENTE, COD_AMBITO, nvl(D_FINE, to_date('31/12/9999 23:59:59', 'dd/mm/yyyy hh24:mi:ss'))) tablespace PSLP_IDX;

comment on column PSLP_R_UTENTE_AMBITO.ID_UTENTE_AMBITO is 'ID progressivo tabella (sequence SEQ_PSLP_R_OPERATORE_AMBITO).';

comment on column PSLP_R_UTENTE_AMBITO.ID_UTENTE is 'Utente Operatore di tab. PSLP_T_UTENTE, non sono considerati gli Utenti di Tipo Cittadino.';

comment on column PSLP_R_UTENTE_AMBITO.COD_AMBITO is 'Codice Ambito/Funzionalità di tab. PSLP_D_AMBITO.';

alter table PSLP_R_UTENTE_AMBITO 
  add constraint FK_PSLP_D_AMBITO_07 
      foreign key (COD_AMBITO) 
      references PSLP_D_AMBITO;

alter table PSLP_R_UTENTE_AMBITO 
  add constraint FK_PSLP_T_UTENTE_09 
      foreign key (ID_UTENTE) 
      references PSLP_T_UTENTE;