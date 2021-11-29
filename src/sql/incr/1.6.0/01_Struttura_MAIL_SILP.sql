/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

/* -------------- */
/* SIL_MAIL_TESTO */
/* -------------- */

create table SIL_MAIL_TESTO (
  ID_SIL_MAIL_TESTO integer not null
);

alter table SIL_MAIL_TESTO 
  add constraint PK_SIL_MAIL_TESTO 
      primary key (ID_SIL_MAIL_TESTO) 
      using index tablespace PSLP_IDX;

comment on column SIL_MAIL_TESTO.ID_SIL_MAIL_TESTO is 'Corrisponde all''ID_SIL_MAIL_TESTO di SILP; praticamente identifica il raggruppamento dei destinatari della stessa mail, con gli stessi allegati';

/* ------------------- */
/* SIL_T_MAIL_ALLEGATO */
/* ------------------- */

create sequence SEQ_SIL_T_MAIL_ALLEGATO nocache;

create table SIL_T_MAIL_ALLEGATO (
    ID_MAIL_ALLEGATO integer not null,
    ALLEGATO blob not null,
    NOME_ALLEGATO varchar2(200) not null,
    ID_SIL_MAIL_TESTO integer not null
);

alter table SIL_T_MAIL_ALLEGATO 
  add constraint PK_SIL_T_MAIL_ALLEGATO 
      primary key (ID_MAIL_ALLEGATO)
      using index
      tablespace PSLP_IDX;

create index IE_SIL_T_MAIL_ALLEGATO_01 on SIL_T_MAIL_ALLEGATO (ID_SIL_MAIL_TESTO) tablespace PSLP_IDX;

comment on column SIL_T_MAIL_ALLEGATO.ID_SIL_MAIL_TESTO is 'Corrisponde all''ID_SIL_MAIL_TESTO di SILP; praticamente identifica il raggruppamento dei destinatari della stessa mail, con gli stessi allegati';

/* ----------------------- */
/* PSLP_T_MESSAGGIO_UTENTE */
/* ----------------------- */

alter table PSLP_T_MESSAGGIO_UTENTE add ID_SIL_MAIL_TESTO integer;

create index IE_PSLP_T_MESSAGGIO_UTENTE_04 on PSLP_T_MESSAGGIO_UTENTE (ID_SIL_MAIL_TESTO) tablespace PSLP_IDX;

comment on column PSLP_T_MESSAGGIO_UTENTE.ID_SIL_MAIL_TESTO is 'Corrisponde all''ID_SIL_MAIL_TESTO di SILP; praticamente identifica il raggruppamento dei destinatari della stessa mail, con gli stessi allegati';

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

alter table PSLP_T_MESSAGGIO_UTENTE 
  add constraint FK_SIL_MAIL_TESTO_01 
      foreign key (ID_SIL_MAIL_TESTO) 
      references SIL_MAIL_TESTO;

alter table SIL_T_MAIL_ALLEGATO 
  add constraint FK_SIL_MAIL_TESTO_02 
      foreign key (ID_SIL_MAIL_TESTO) 
      references SIL_MAIL_TESTO;
