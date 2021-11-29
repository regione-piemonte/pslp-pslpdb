/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_ANNULLAMENTO', 'Testo mail Cittadino di Annullamento');

insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_CLOSE_SILP', 'Testo mail Cittadino di chiusura Misura');

insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_CONFERMA', 'Testo mail Cittadino di Conferma');

insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_DOCUM_ALLEG', 'Testo mail Cittadino di convalida Documento Allegato');

insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_NON_PRESENTATO', 'Testo mail Cittadino di NON Presentato');

insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_OPEN_SILP', 'Testo mail Cittadino di apertura Misura');

insert into pslp_d_tipo_messaggio (COD_TIPO_MESSAGGIO, DESCR_TIPO_MESSAGGIO)
values ('MAIL_PROMEMORIA', 'Testo mail Cittadino di Promemoria');


----

UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_OPEN_SILP'
where id_messaggio = 3 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_CONFERMA'
where id_messaggio = 4 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_PROMEMORIA'
where id_messaggio = 5 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_ANNULLAMENTO'
where id_messaggio = 6 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_NON_PRESENTATO'
where id_messaggio = 7 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_CLOSE_SILP'
where id_messaggio = 8 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'GG'
     , m.cod_tipo_messaggio = 'MAIL_DOCUM_ALLEG'
where id_messaggio = 9 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'RDC'
     , m.cod_tipo_messaggio = 'MAIL_OPEN_SILP'
where id_messaggio = 23 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'RDC'
     , m.cod_tipo_messaggio = 'MAIL_CONFERMA'
where id_messaggio = 24 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'RDC'
     , m.cod_tipo_messaggio = 'MAIL_PROMEMORIA'
where id_messaggio = 25 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'RDC'
     , m.cod_tipo_messaggio = 'MAIL_ANNULLAMENTO'
where id_messaggio = 26 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'RDC'
     , m.cod_tipo_messaggio = 'MAIL_NON_PRESENTATO'
where id_messaggio = 27 ;
UPDATE PSLP_D_MESSAGGIO m
   SET m.cod_ambito         = 'RDC'
     , m.cod_tipo_messaggio = 'MAIL_CLOSE_SILP'
where id_messaggio = 28 ;

commit;
