/* *****************************************************
 * Copyright Regione Piemonte - 2021
 * SPDX-License-Identifier: EUPL-1.2-or-later
 ******************************************************/
set define off;

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3013, 'MI014', 'Informazioni Aggiuntive', 'TRV', 'MINF', 'Al momento, non sono disponibili Informazioni Aggiuntive da inserire', 'Al momento, non sono disponibili Informazioni Aggiuntive da inserire.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3014, 'MI015', 'Documenti Allegati', 'TRV', 'MINF', 'Al momento, non e'' possibile fornire Documenti in Allegato alla prenotazione dell''Appuntamento.', 'Al momento, non e'' possibile fornire Documenti in Allegato alla prenotazione dell''Appuntamento.', to_date('01/01/2019', 'dd/mm/yyyy'), '');

commit;