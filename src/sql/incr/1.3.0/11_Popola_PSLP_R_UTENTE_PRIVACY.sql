/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
insert 
  into PSLP_R_UTENTE_PRIVACY (
        ID_R_UTENTE_PRIVACY,
        ID_RESPONSABILE,
        ID_TUTELATO,
        D_PRESA_VISIONE,
        COD_AMBITO,
        COD_USER_INSERIM,
        D_INSERIM,
        COD_USER_AGGIORN,
        D_AGGIORN
       )
select SEQ_PSLP_R_UTENTE_PRIVACY.nextval,
       ID_RESPONSABILE,
	   ID_TUTELATO,
	   D_PRESA_VISIONE_RESPONSABIL,
	   'GG',
       COD_USER_INSERIM,
       D_INSERIM,
       COD_USER_AGGIORN,
       D_AGGIORN
  from PSLP_R_UTENTE
 where D_PRESA_VISIONE_RESPONSABIL is not null;

commit;
	   
