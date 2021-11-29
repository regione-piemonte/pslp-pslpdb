/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
insert into pslp_d_ambito (cod_ambito, descr_ambito, id_sil_t_in_servizio)
values ('RDC', 'Reddito di Cittadinanza', 2205);

update pslp_d_ambito 
   set id_sil_t_in_servizio = 2200 
 where cod_ambito = 'GG';
 
commit;
