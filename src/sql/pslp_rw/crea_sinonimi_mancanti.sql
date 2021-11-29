/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/
 
/*
Script da lanciare all'evenienza dall'utente RW per acquisire eventuali sinonimi su oggetti nuovi creati sull'utente proprietario a cui sono state date le grant
*/

declare

  cursor cur_sinonimi_da_creare is
    select 'CREATE SYNONYM ' || OBJECT_NAME || ' FOR ' || OBJECT_OWNER || '.' || OBJECT_NAME as istruzione_sql
      from (
            select distinct GRANTOR OBJECT_OWNER, TABLE_NAME OBJECT_NAME
              from user_tab_privs tp
                   join all_objects o on o.OWNER = tp.GRANTOR
                                     and o.OBJECT_NAME = tp.TABLE_NAME
            minus
            select TABLE_OWNER OBJECT_OWNER, TABLE_NAME OBJECT_NAME
              from user_synonyms
           )
    ;

begin
  
  for sinonimo in cur_sinonimi_da_creare loop
    execute immediate sinonimo.istruzione_sql;
  end loop;
  
exception
  when others then
    dbms_output.put_line(SQLERRM);

end;
/
