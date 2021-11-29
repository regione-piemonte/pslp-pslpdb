/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
INSERT INTO PSLP_D_TIPO_EVENTO (ID_TIPO_EVENTO,DESCR_TIPO_EVENTO) 
VALUES (10070, 'PSLWEB - SaveSAP - Inserimento SAP');

UPDATE PSLP_D_TIPO_EVENTO 
   SET DESCR_TIPO_EVENTO = 'PSLWEB - SaveSAP - Modifica SAP' 
 WHERE ID_TIPO_EVENTO = 10041;

commit;
