/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
declare 
  maxIdEccezione INTEGER;
begin

  select max(id_Eccezione) + 1
    into maxIdEccezione
    from PSLP_T_ECCEZIONE;
	
  execute immediate 'CREATE SEQUENCE SEQ_PSLP_T_ECCEZIONE START WITH ' || maxIdEccezione || ' NOCACHE';

end;
/