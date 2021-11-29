/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */

alter table PSLP_D_AMBITO          modify COD_AMBITO varchar2(20);
alter table PSLP_D_MESSAGGIO       modify COD_AMBITO varchar2(20);
alter table PSLP_R_AMBITO_TIPO_DOC modify COD_AMBITO varchar2(20);

drop index AK_PSLP_R_UTENTE_AMBITO_01;
alter table PSLP_R_UTENTE_AMBITO   modify COD_AMBITO varchar2(20);
create unique index AK_PSLP_R_UTENTE_AMBITO_01 
    on PSLP_R_UTENTE_AMBITO (ID_UTENTE, COD_AMBITO, NVL(D_FINE,TO_DATE(' 9999-12-31 23:59:59', 'syyyy-mm-dd hh24:mi:ss')))
       tablespace PSLP_IDX;

alter table PSLP_R_UTENTE_PRIVACY  modify COD_AMBITO varchar2(20);
alter table PSLP_T_CALENDARIO      modify COD_AMBITO varchar2(20);
alter table PSLP_T_DOCUMENTO       modify COD_AMBITO varchar2(20);
alter table PSLP_T_EVENTO          modify COD_AMBITO varchar2(20);
alter table PSLP_T_UTENTE_PRIVACY  modify COD_AMBITO varchar2(20);
