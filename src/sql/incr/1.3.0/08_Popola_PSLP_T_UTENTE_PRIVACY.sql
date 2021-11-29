/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
BEGIN
  for utente in (select *
                   from PSLP_T_UTENTE
				  where D_PRESA_VISIONE_PRIVACY is not null
				     or D_PRESA_VISIONE_PRIVACY_RDC is not null
                  order by ID_UTENTE) loop
    
    if utente.D_PRESA_VISIONE_PRIVACY is not null then

      insert 
        into PSLP_T_UTENTE_PRIVACY (
              ID_UTENTE_PRIVACY,
              ID_UTENTE,
              D_PRESA_VISIONE,
              COD_AMBITO,
              COD_USER_INSERIM,
              D_INSERIM,
              COD_USER_AGGIORN,
              D_AGGIORN
             )
      values (
              SEQ_PSLP_T_UTENTE_PRIVACY.nextval,
              utente.ID_UTENTE,
              utente.D_PRESA_VISIONE_PRIVACY,
              'GG',
              utente.COD_USER_INSERIM,
              utente.D_INSERIM,
              utente.COD_USER_AGGIORN,
              utente.D_AGGIORN 
             );

    end if;

    if utente.D_PRESA_VISIONE_PRIVACY_RDC is not null then

      insert 
        into PSLP_T_UTENTE_PRIVACY (
              ID_UTENTE_PRIVACY,
              ID_UTENTE,
              D_PRESA_VISIONE,
              COD_AMBITO,
              COD_USER_INSERIM,
              D_INSERIM,
              COD_USER_AGGIORN,
              D_AGGIORN
             )
      values (
              SEQ_PSLP_T_UTENTE_PRIVACY.nextval,
              utente.ID_UTENTE,
              utente.D_PRESA_VISIONE_PRIVACY_RDC,
              'RDC',
              utente.COD_USER_INSERIM,
              utente.D_INSERIM,
              utente.COD_USER_AGGIORN,
              utente.D_AGGIORN 
             );

    end if;

  end loop;
  
  commit;

EXCEPTION
  when others then
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
    rollback;

END;
/