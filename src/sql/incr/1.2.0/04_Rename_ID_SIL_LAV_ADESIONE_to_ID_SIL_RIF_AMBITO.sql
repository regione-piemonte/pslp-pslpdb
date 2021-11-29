/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
alter table PSLP_T_PRENOTAZIONE rename column ID_SIL_LAV_ADESIONE to ID_SIL_RIF_AMBITO;
comment on column PSLP_T_PRENOTAZIONE.ID_SIL_RIF_AMBITO is 'ID di riferimento alla Misura dell''Ambito valorizzato in SILP, a cui si lega la prenotazione dell''appuntamento. Utile anche per riportare il valore nelle mail e nella stampa.';

alter table PSLP_T_MESSAGGIO_UTENTE rename column ID_SIL_LAV_ADESIONE to ID_SIL_RIF_AMBITO;
comment on column PSLP_T_MESSAGGIO_UTENTE.ID_SIL_RIF_AMBITO is 'ID di riferimento alla Misura dell''Ambito valorizzato in SILP, a cui si lega la prenotazione dell''appuntamento. Utile anche per riportare il valore nelle mail e nella stampa.';
create index IE_PSLP_T_MESSAGGIO_UTENTE_03 on PSLP_T_MESSAGGIO_UTENTE (ID_SIL_RIF_AMBITO) tablespace PSLP_IDX;
