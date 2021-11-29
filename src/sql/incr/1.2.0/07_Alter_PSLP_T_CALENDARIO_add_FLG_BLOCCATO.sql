/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
ALTER TABLE PSLP_T_CALENDARIO ADD FLG_BLOCCATO VARCHAR2(1);

COMMENT ON COLUMN PSLP_T_CALENDARIO.FLG_BLOCCATO IS 'Se = ''S'' non è possibile prenotare il calendario';

ALTER TABLE PSLP_T_CALENDARIO ADD CONSTRAINT CHK_PSLP_T_CALENDARIO_05 CHECK (FLG_BLOCCATO = 'S');

