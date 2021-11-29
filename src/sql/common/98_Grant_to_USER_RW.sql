/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/
declare
	user_grantee varchar2(30);
begin
	
	DBMS_OUTPUT.ENABLE(99999);

	user_grantee := 'PSLP_RW'; 

	for riga in (	select 'GRANT SELECT, UPDATE, DELETE, INSERT ON '||OBJECT_NAME||' TO '||user_grantee comando
					from all_objects 
					where owner = user 
					  and object_type in ('TABLE','VIEW'--,'SYNONYM'
					  )) loop
		begin				
			execute immediate riga.comando;
			--dbms_output.put_line(riga.comando||';');
		exception
		when others then
			dbms_output.put_line('*** '||sqlerrm||' *** '||riga.comando);					  
		end;					  
	end loop;

	
	for riga in (	select 'GRANT EXECUTE ON '||OBJECT_NAME||' TO '||user_grantee comando
					from all_objects 
					where owner = user 
					  and object_type in ('PACKAGE', 'FUNCTION', 'PROCEDURE'
					  )) loop
		begin				
			execute immediate riga.comando;
			--dbms_output.put_line(riga.comando||';');
		exception
		when others then
			dbms_output.put_line('*** '||sqlerrm||' *** '||riga.comando);					  
		end;					  
	end loop;
	
	for riga in (	select 'GRANT SELECT, ALTER ON '||OBJECT_NAME||' TO '||user_grantee comando
					from all_objects 
					where owner = user 
					  and object_type in ('SEQUENCE'
					  )) loop
		begin				
			execute immediate riga.comando;
			--dbms_output.put_line(riga.comando||';');
		exception
		when others then
			dbms_output.put_line('*** '||sqlerrm||' *** '||riga.comando);					  
		end;					  
	end loop;

end;
/




