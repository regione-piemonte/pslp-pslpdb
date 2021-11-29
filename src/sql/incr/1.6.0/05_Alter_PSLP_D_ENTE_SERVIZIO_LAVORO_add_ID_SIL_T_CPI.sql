/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

alter table PSLP_D_ENTE_SERVIZIO_LAVORO add ID_SIL_T_CPI NUMBER(7);

comment on column PSLP_D_ENTE_SERVIZIO_LAVORO.ID_SIL_T_CPI is 'ID del CpI presente su SILP nella tab. SIL_T_CPI, utile per risalire alla tripletta dei Calendari, in base alla Residenza/Domicilio del soggetto.';

create index IE_PSLP_D_ENTE_SERVIZIO_LAV_03 on PSLP_D_ENTE_SERVIZIO_LAVORO (ID_SIL_T_CPI) TABLESPACE PSLP_IDX;