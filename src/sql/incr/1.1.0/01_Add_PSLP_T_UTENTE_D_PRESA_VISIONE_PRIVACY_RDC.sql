/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
alter table PSLP_T_UTENTE add D_PRESA_VISIONE_PRIVACY_RDC DATE;

comment on column PSLP_T_UTENTE.D_PRESA_VISIONE_PRIVACY_RDC is 'Data di presa visione della privacy per il Reddito Di Cittadinanza';