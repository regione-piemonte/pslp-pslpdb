/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
insert 
  into pslp_d_parametro (ID_PARAMETRO, 
                         COD_PARAMETRO, 
						 DESCR_PARAMETRO, 
						 VALORE_PARAMETRO, 
						 VALORE_PARAMETRO_EXT, 
						 DT_INIZIO)
                 values (13, 
				         'GG_INVIO_MAIL_KO', 
						 'Indica per quanti giorni, a partire dalla data inserimento nella tab. pslp_t_evento, il batch di invio massivo tentera'' di inviare una mail in Stato KO, individuata per id_tipo_evento = 3', 
						 '2', 
						 null, 
						 to_date('09-12-2019', 'dd-mm-yyyy'));

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (14, 'RIC_RDC_DT_MAIL', 'Data invio mail per ricezione Domanda di Reddito di Cittadinanza. La mail viene inviata se la data invio e'' maggiore/uguale alla data parametro', '01/01/2022', Null, to_date('09-12-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (21, 'OPER_CONTO_TERZI_FLG', 'Operatore - Abilitazione voce menu: Conto Terzi', 'S', Null, to_date('09-12-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (22, 'OPER_CALENDARIO', 'Operatore - Abilitazione voce menu: Gestione Calendari', 'S', Null, to_date('09-12-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (23, 'OPER_CONFIGURAZIONI', 'Operatore - Abilitazione voce menu: Configurazioni', 'S', Null, to_date('09-12-2019', 'dd-mm-yyyy'), null);

insert into pslp_d_parametro (ID_PARAMETRO, COD_PARAMETRO, DESCR_PARAMETRO, VALORE_PARAMETRO, VALORE_PARAMETRO_EXT, DT_INIZIO, DT_FINE)
values (24, 'INVIO_MAIL_ASINCRONO', 'Indica se l''invio di tutte le mail avviene in immediato (=N) oppure posticipato (=S)', 'S', Null, to_date('09-12-2019', 'dd-mm-yyyy'), null);

commit;

