/* **************************************************** */
/* Copyright Regione Piemonte - 2021					*/
/* SPDX-License-Identifier: EUPL-1.2-or-later			*/
/* **************************************************** */
set define off;

delete pslp_d_messaggio;

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1, 'PLAV1', 'Privacy cittadino: intestazione', 'GG', 'PRV', 'Informativa sul trattamento dei dati personali ad uso dei responsabili esterni', '<p style="text-align: left;" align="center"><strong><strong>Informativa sul trattamento dei dati personali ad uso dei responsabili esterni, ai sensi dell&rsquo;art. 13 e 14 GDPR 2016/679</strong><br /></strong></p>
<p>Gentile Utente,</p>
<p>La informiamo che i dati personali da Lei forniti alla Direzione Coesione sociale della Regione Piemonte o acquisiti tramite altri sistemi informativi della Pubblica Amministrazione (Portale Garanzia Giovani, Sistema delle Comunicazioni Obbligatorie, Sistemi Informativi Lavoro, ecc.), saranno trattati secondo quanto previsto dal &ldquo;Regolamento (UE) 2016/679 relativo alla protezione delle persone fisiche con riguardo al trattamento dei dati personali, nonch&eacute; alla libera circolazione di tali dati e che abroga la direttiva 95/46/CE (Regolamento Generale sulla Protezione dei Dati, di seguito GDPR)&rdquo;.</p>
<p>&nbsp;</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (2, 'PRES1', 'Privacy responsabilita'' genitoriale: intestazione', 'GG', 'PRV', 'Informativa sulla responsabilita'' genitoriale', '<p style="text-align: left;" align="center"><strong>Informativa sulla responsabilita'' genitoriale<br /></strong></p>
<p>La compilazione del presente modulo rientra nelle responsabilit&agrave; genitoriali regolamentate dal codice civile (Titolo IX Della responsabilit&agrave; genitoriale e dei diritti e doveri del figlio), ove si prevede - salvo non diversamente stabilito &ndash; che le decisioni di maggiore interesse per i figli siano esercitate da entrambi i genitori.</p>
<p>&nbsp;</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');
/*
insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3, 'GGRIC', 'Mail per completare adesione Garanzia Giovani', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: completamento adesione online', 'Gentile {0},
ti comunichiamo che abbiamo ricevuto in data {1,date,dd/MM/yyyy} la tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}. Per completare la tua adesione devi accedere al servizio {3} attraverso {4} (Sistema Pubblico di Identita'''' Digitale); se sei un Minore, l''''accesso deve essere effettuato da un tuo genitore o da chi detiene la patria potesta''''. Entrato nell''''applicazione, puoi visualizzare i dati in possesso della Regione Piemonte e completarli (alcuni dati richiesti sono obbligatori per procedere). Una volta inseriti i dati, potrai verificarne la correttezza e prenotare un appuntamento presso il tuo Centro per l''''Impiego che ti verra'''' proposto. 
Nel caso in cui non ti presenti al CpI non potrai proseguire il tuo percorso di Garanzia Giovani.

{5}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{6}
', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4, 'APCON', 'Mail per confermare la prenotazione', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: prenotazione appuntamento', 'Gentile {0},
ti comunichiamo che la domanda di adesione alla Garanzia Giovani in Piemonte e'''' stata inoltrata al CPI di {1} in data {2,date,dd/MM/yyyy} con numero progressivo {3}. Ti ricordiamo di presentarti il {4,date,dd/MM/yyyy} alle ore {5} presso il CPI di {1} in {6}; la durata dell''''incontro e'''' stimata in {7} minuti.

{8}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{9}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5, 'APPRO', 'Mail per promemoria prenotazione', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: promemoria appuntamento', 'Gentile {0},
ti ricordiamo di presentarti il {1,date,dd/MM/yyyy} alle ore {2} presso il CPI di {3} in {4} per iniziare il tuo percorso in Garanzia Giovani in Piemonte; la durata dell''''incontro e'''' stimata in {5} minuti. Ricordati che il tuo numero progressivo e'''' {6}. 

{7}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{8}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (6, 'APANN', 'Mail in caso di annullo prenotazione da parte di operatore CPI', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: annullamento appuntamento', 'Gentile {0},
ti comunichiamo che abbiamo dovuto annullare l''''incontro previsto in data {1,date,dd/MM/yyyy} relativamente alla tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}. Per completare la tua adesione e'''' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''''Impiego attraverso il servizio {3}.

{4}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (7, 'APNPR', 'Mail in caso di mancata presentazione del giovane all''appuntamento', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: mancata presentazione appuntamento', 'Gentile {0},
visto che non ti sei presentato all''''incontro previsto in data {1,date,dd/MM/yyyy}, relativamente alla tua richiesta di adesione alla Garanzia Giovani in Piemonte con numero progressivo {2}, per completare la tua adesione e'''' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''''Impiego attraverso il servizio {3}. Se non sei piu'''' interessato, ti consigliamo di annullare l''''adesione sul portale Nazionale A.N.P.A.L.

{4}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (8, 'GGEND', 'Mail in caso di termine dell''adesione Garanzia Giovani', 'GG', 'MAIL', 'Iscrizione Garanzia Giovani Piemonte: fine adesione', 'Gentile {0},
ti comunichiamo che in data {1,date,dd/MM/yyyy} e'''' terminato il tuo percorso in Garanzia Giovani in Piemonte con numero progressivo {2} per {3}.

{4}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (9, 'DOCES', 'Mail in caso di accettazione o non accettazione del documento fornito in allegato alla prenotazione appuntamento', 'TRV', 'MAIL', 'Documentazione fornita: N. <numero doc> del <data>', 'Gentile {0},
la informiamo che il documento {1} inviato il {2} alle ore {3} presso il CPI di {4} in {5} {6}. 

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{7}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (10, 'PLAV2', 'Privacy cittadino: dettaglio', 'GG', 'PRV', 'Informativa sul trattamento dei dati personali ad uso dei responsabili esterni', '<p>La informiamo, inoltre, che:</p>
<ul>
<li>- I dati personali a Lei riferiti verranno raccolti e trattati nel rispetto dei principi di correttezza, liceit&agrave; e tutela della riservatezza, con modalit&agrave; informatiche ed esclusivamente nell&rsquo;ambito dell&rsquo;erogazione dei servizi di politica del lavoro. Il trattamento &egrave; finalizzato all&rsquo;espletamento delle funzioni istituzionali definite nella normativa di riferimento (Regolamenti UE n. 1303/2013, n. 1304/2013 del Parlamento Europeo e del Consiglio del 17 dicembre 2013, Decisione C (2014) 4969 della Commissione Europea e ss.mm.ii.; D.Lgs. 150/15, D.Lgs. 4/2019, D.Lgs 13/2013 e ss.mm.ii; L.R. 34/2008, L.R. 63/1995 e ss.mm.ii.);</li>
<li>- I dati acquisiti a seguito della presente informativa saranno utilizzati esclusivamente per le finalit&agrave; relative alle politiche per le quali vengono comunicati;</li>
<li>- L&rsquo;acquisizione dei Suoi dati ed il relativo trattamento sono obbligatori in relazione alle finalit&agrave; sopradescritte; ne consegue che l&rsquo;eventuale rifiuto a fornirli potr&agrave; determinare l&rsquo;impossibilit&agrave; del Titolare del trattamento di erogare il servizio richiesto;</li>
<li>- I dati di contatto del Responsabile della protezione dati (DPO) sono: <a href="mailto:dpo@regione.piemonte.it">dpo@regione.piemonte.it</a>;</li>
<li>- Il Titolare del trattamento dei dati personali &egrave; la Giunta regionale, il Delegato al trattamento dei dati &egrave; il Direttore &ldquo;pro tempore&rdquo; della Direzione Coesione Sociale della Regione Piemonte;</li>
<li>- Il Responsabile (esterno) del trattamento &egrave;:
<ul>
<li>_ il Consorzio per il Sistema Informativo Piemonte (CSI), ente strumentale della Regione Piemonte, pec: <a href="mailto:protocollo@cert.csi.it">protocollo@cert.csi.it</a>;</li>
</ul>
</li>
<li>- I suoi dati personali saranno trattati esclusivamente da soggetti incaricati e Responsabili (esterni) individuati dal Titolare o da soggetti incaricati individuati dal Responsabile (esterno), autorizzati ed istruiti in tal senso, adottando tutte quelle misure tecniche ed organizzative adeguate per tutelare i diritti, le libert&agrave; e i legittimi interessi che Le sono riconosciuti per legge in qualit&agrave; di Interessato;</li>
<li>- I Suoi dati, resi anonimi, potranno essere utilizzati anche per finalit&agrave; statistiche (D.Lgs. 281/1999 e s.m.i.);</li>
<li>- I Suoi dati personali sono conservati per il periodo di 10 anni a partire dalla chiusura delle attivit&agrave; connesse alle finalit&agrave; per i quali sono stati conseguiti, salvo i casi in cui la conservazione dei dati sia richiesta da norme di legge od altri fini (contabili, fiscali, di conservazione di attestazioni e certificati, ecc.);</li>
<li>- I Suoi dati personali non saranno in alcun modo oggetto di trasferimento in un Paese terzo extraeuropeo, n&eacute; di comunicazione a terzi fuori dai casi previsti dalla normativa in vigore;</li>
<li>- I Suoi dati personali saranno oggetto di processi decisionali automatizzati, compresa la profilazione, per conoscere il suo livello personale di occupabilit&agrave;, cos&igrave; come stabilito dal D.lgs. 150/2015 Art. 19, ovvero la sua distanza dal mercato del lavoro, per poterle offrire servizi di accompagnamento e inserimento nel mercato del lavoro, in base alle sue specifiche caratteristiche, secondo quanto previsto dal Decreto Direttoriale del Ministero del Lavoro e Politiche Sociali &ndash; Direzione Generale per le Politiche Attive, i Servizi per il Lavoro e la Formazione, nr. 10 del 23 gennaio 2015;</li>
<li>- I Suoi dati personali potranno essere comunicati ai seguenti soggetti:
<ul>
<li>_ Autorit&agrave; con finalit&agrave; ispettive o di vigilanza o Autorit&agrave; giudiziaria nei casi previsti dalla legge;</li>
<li>_ ANPAL, Divisione 3 - Autorit&agrave; di gestione della Misura; Ministero del lavoro e delle politiche sociali, Segretariato Generale - Autorit&agrave; di Audit della Misura; ANPAL, Divisione 6 - Autorit&agrave; di Certificazione della Misura;</li>
<li>_ Autorit&agrave; di Audit e di Certificazione del POR FSE 2014-2020 della Regione Piemonte;</li>
<li>_ Soggetti pubblici, in attuazione delle proprie funzioni previste per legge (ad es. in adempimento degli obblighi di certificazione o in attuazione del principio di leale cooperazione istituzionale, ai sensi dell&rsquo;art. 22, c. 5 della L. 241/1990);</li>
<li>_ Altre Direzioni/Settori della Regione Piemonte per gli adempimenti di legge o per lo svolgimento delle attivit&agrave; istituzionali di competenza.</li>
</ul>
</li>
</ul>
<p>Si precisa che, con riferimento ai file temporanei o permanenti di sessione (cookies) non viene fatto uso di cookies per la trasmissione di informazioni di carattere personale.</p>
<p>Ogni Interessato potr&agrave; esercitare i diritti previsti dagli artt. da 15 a 22 del Regolamento (UE) 2016/679, quali: la conferma dell&rsquo;esistenza o meno dei suoi dati personali e la loro messa a disposizione in forma intellegibile; avere la conoscenza delle finalit&agrave; su cui si basa il trattamento; ottenere la cancellazione, la trasformazione in forma anonima, la limitazione o il blocco dei dati trattati in violazione di legge, nonch&eacute; l&rsquo;aggiornamento, la rettifica o, se vi &egrave; interesse, l&rsquo;integrazione dei dati; opporsi, per motivi legittimi, al trattamento stesso, rivolgendosi al Titolare, al Responsabile della protezione dati (DPO) o al Responsabile del trattamento, tramite i contatti di cui sopra o il diritto di proporre reclamo all&rsquo;Autorit&agrave; di controllo competente.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');
*/
insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (11, 'PGEN1', 'Privacy generale', 'GG', 'PRV', 'Informativa generale', '<p style="text-align: left;" align="center"><strong>Informativa generale</strong></p>
<p>La gestione dei dati del portale Servizi Lavoro Piemonte avviene secondo le disposizioni previste dal D.P.R. 28 dicembre 2000, n. 445, "Testo unico delle disposizioni legislative regolamentari in materia di documentazione amministrativa" e ss.mm.ii.</p>
<p>&nbsp;</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (20, 'PGEN2', 'Privacy generale', 'RDC', 'PRV', 'Informativa generale', '<p style="text-align: left;" align="center"><strong>Informativa generale</strong></p>
<p>La gestione dei dati del portale Servizi Lavoro Piemonte avviene secondo le disposizioni previste dal D.P.R. 28 dicembre 2000, n. 445, "Testo unico delle disposizioni legislative regolamentari in materia di documentazione amministrativa" e ss.mm.ii.</p>
<p>&nbsp;</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (21, 'PLAV3', 'Privacy cittadino: intestazione', 'RDC', 'PRV', 'Informativa sul trattamento dei dati personali ad uso dei responsabili esterni', '<p style="text-align: left;" align="center"><strong><strong>Informativa sul trattamento dei dati personali ad uso dei responsabili esterni, ai sensi dell&rsquo;art. 13 e 14 GDPR 2016/679</strong><br /></strong></p>
<p>Gentile Utente,</p>
<p>La informiamo che i dati personali da Lei forniti alla Direzione Coesione sociale della Regione Piemonte o acquisiti tramite altri sistemi informativi della Pubblica Amministrazione (Portale Garanzia Giovani, Sistema delle Comunicazioni Obbligatorie, Sistemi Informativi Lavoro, ecc.), saranno trattati secondo quanto previsto dal &ldquo;Regolamento (UE) 2016/679 relativo alla protezione delle persone fisiche con riguardo al trattamento dei dati personali, nonch&eacute; alla libera circolazione di tali dati e che abroga la direttiva 95/46/CE (Regolamento Generale sulla Protezione dei Dati, di seguito GDPR)&rdquo;.</p>
<p>&nbsp;</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');
/*
insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (22, 'PLAV4', 'Privacy cittadino: dettaglio', 'RDC', 'PRV', 'Informativa sul trattamento dei dati personali ad uso dei responsabili esterni', '<p>La informiamo, inoltre, che:</p>
<ul>
<li>- I dati personali a Lei riferiti verranno raccolti e trattati nel rispetto dei principi di correttezza, liceit&agrave; e tutela della riservatezza, con modalit&agrave; informatiche ed esclusivamente nell&rsquo;ambito dell&rsquo;erogazione dei servizi di politica del lavoro. Il trattamento &egrave; finalizzato all&rsquo;espletamento delle funzioni istituzionali definite nella normativa di riferimento (Regolamenti UE n. 1303/2013, n. 1304/2013 del Parlamento Europeo e del Consiglio del 17 dicembre 2013, Decisione C (2014) 4969 della Commissione Europea e ss.mm.ii.; D.Lgs. 150/15, D.Lgs. 4/2019, D.Lgs 13/2013 e ss.mm.ii; L.R. 34/2008, L.R. 63/1995 e ss.mm.ii.);</li>
<li>- I dati acquisiti a seguito della presente informativa saranno utilizzati esclusivamente per le finalit&agrave; relative alle politiche per le quali vengono comunicati;</li>
<li>- L&rsquo;acquisizione dei Suoi dati ed il relativo trattamento sono obbligatori in relazione alle finalit&agrave; sopradescritte; ne consegue che l&rsquo;eventuale rifiuto a fornirli potr&agrave; determinare l&rsquo;impossibilit&agrave; del Titolare del trattamento di erogare il servizio richiesto;</li>
<li>- I dati di contatto del Responsabile della protezione dati (DPO) sono: <a href="mailto:dpo@regione.piemonte.it">dpo@regione.piemonte.it</a>;</li>
<li>- Il Titolare del trattamento dei dati personali &egrave; la Giunta regionale, il Delegato al trattamento dei dati &egrave; il Direttore &ldquo;pro tempore&rdquo; della Direzione Coesione Sociale della Regione Piemonte;</li>
<li>- Il Responsabile (esterno) del trattamento &egrave;:
<ul>
<li>_ il Consorzio per il Sistema Informativo Piemonte (CSI), ente strumentale della Regione Piemonte, pec: <a href="mailto:protocollo@cert.csi.it">protocollo@cert.csi.it</a>;</li>
</ul>
</li>
<li>- I suoi dati personali saranno trattati esclusivamente da soggetti incaricati e Responsabili (esterni) individuati dal Titolare o da soggetti incaricati individuati dal Responsabile (esterno), autorizzati ed istruiti in tal senso, adottando tutte quelle misure tecniche ed organizzative adeguate per tutelare i diritti, le libert&agrave; e i legittimi interessi che Le sono riconosciuti per legge in qualit&agrave; di Interessato;</li>
<li>- I Suoi dati, resi anonimi, potranno essere utilizzati anche per finalit&agrave; statistiche (D.Lgs. 281/1999 e s.m.i.);</li>
<li>- I Suoi dati personali sono conservati per il periodo di 10 anni a partire dalla chiusura delle attivit&agrave; connesse alle finalit&agrave; per i quali sono stati conseguiti, salvo i casi in cui la conservazione dei dati sia richiesta da norme di legge od altri fini (contabili, fiscali, di conservazione di attestazioni e certificati, ecc.);</li>
<li>- I Suoi dati personali non saranno in alcun modo oggetto di trasferimento in un Paese terzo extraeuropeo, n&eacute; di comunicazione a terzi fuori dai casi previsti dalla normativa in vigore;</li>
<li>- I Suoi dati personali saranno oggetto di processi decisionali automatizzati, compresa la profilazione, per conoscere il suo livello personale di occupabilit&agrave;, cos&igrave; come stabilito dal D.lgs. 150/2015 Art. 19, ovvero la sua distanza dal mercato del lavoro, per poterle offrire servizi di accompagnamento e inserimento nel mercato del lavoro, in base alle sue specifiche caratteristiche, secondo quanto previsto dal Decreto Direttoriale del Ministero del Lavoro e Politiche Sociali &ndash; Direzione Generale per le Politiche Attive, i Servizi per il Lavoro e la Formazione, nr. 10 del 23 gennaio 2015;</li>
<li>- I Suoi dati personali potranno essere comunicati ai seguenti soggetti:
<ul>
<li>_ Autorit&agrave; con finalit&agrave; ispettive o di vigilanza o Autorit&agrave; giudiziaria nei casi previsti dalla legge;</li>
<li>_ ANPAL, Divisione 3 - Autorit&agrave; di gestione della Misura; Ministero del lavoro e delle politiche sociali, Segretariato Generale - Autorit&agrave; di Audit della Misura; ANPAL, Divisione 6 - Autorit&agrave; di Certificazione della Misura;</li>
<li>_ Autorit&agrave; di Audit e di Certificazione del POR FSE 2014-2020 della Regione Piemonte;</li>
<li>_ Soggetti pubblici, in attuazione delle proprie funzioni previste per legge (ad es. in adempimento degli obblighi di certificazione o in attuazione del principio di leale cooperazione istituzionale, ai sensi dell&rsquo;art. 22, c. 5 della L. 241/1990);</li>
<li>_ Altre Direzioni/Settori della Regione Piemonte per gli adempimenti di legge o per lo svolgimento delle attivit&agrave; istituzionali di competenza.</li>
</ul>
</li>
</ul>
<p>Si precisa che, con riferimento ai file temporanei o permanenti di sessione (cookies) non viene fatto uso di cookies per la trasmissione di informazioni di carattere personale.</p>
<p>Ogni Interessato potr&agrave; esercitare i diritti previsti dagli artt. da 15 a 22 del Regolamento (UE) 2016/679, quali: la conferma dell&rsquo;esistenza o meno dei suoi dati personali e la loro messa a disposizione in forma intellegibile; avere la conoscenza delle finalit&agrave; su cui si basa il trattamento; ottenere la cancellazione, la trasformazione in forma anonima, la limitazione o il blocco dei dati trattati in violazione di legge, nonch&eacute; l&rsquo;aggiornamento, la rettifica o, se vi &egrave; interesse, l&rsquo;integrazione dei dati; opporsi, per motivi legittimi, al trattamento stesso, rivolgendosi al Titolare, al Responsabile della protezione dati (DPO) o al Responsabile del trattamento, tramite i contatti di cui sopra o il diritto di proporre reclamo all&rsquo;Autorit&agrave; di controllo competente.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (23, 'RCCON', 'Mail per confermare la prenotazione', 'RDC', 'MAIL', 'Reddito di Cittadinanza: prenotazione appuntamento', 'Gentile {0},
ti comunichiamo che l''appuntamento per il Reddito di Cittadinanza in Piemonte e'''' stata trasmesso al CPI di {1} in data {2,date,dd/MM/yyyy} con numero progressivo {3}. Ti ricordiamo di presentarti il {4,date,dd/MM/yyyy} alle ore {5} presso il CPI di {1} in {6}; la durata dell''''incontro e'''' stimata in {7} minuti.

{8}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{9}', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (24, 'RCPRO', 'Mail per promemoria prenotazione', 'RDC', 'MAIL', 'Reddito di Cittadinanza: promemoria appuntamento', 'Gentile {0},
ti ricordiamo di presentarti il {1,date,dd/MM/yyyy} alle ore {2} presso il CPI di {3} in {4} per iniziare il tuo percorso con il Reddito di Cittadinanza in Piemonte; la durata dell''''incontro e'''' stimata in {5} minuti. Ricordati che il tuo numero progressivo e'''' {6}. 

{7}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{8}', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (25, 'RCANN', 'Mail in caso di annullo prenotazione da parte di operatore CPI', 'RDC', 'MAIL', 'Reddito di Cittadinanza: annullamento appuntamento', 'Gentile {0},
ti comunichiamo che abbiamo dovuto annullare l''''incontro previsto in data {1,date,dd/MM/yyyy} relativamente alla tua richiesta nei confronti del Reddito di Cittadinanza in Piemonte con numero progressivo {2}. Per completare la tua adesione e'''' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''''Impiego attraverso il servizio {3}.

{4}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (26, 'RCNPR', 'Mail in caso di mancata presentazione del giovane all''appuntamento', 'RDC', 'MAIL', 'Reddito di Cittadinanza: mancata presentazione appuntamento', 'Gentile {0},
visto che non ti sei presentato all''''incontro previsto in data {1,date,dd/MM/yyyy}, relativamente alla tua richiesta nei confronti del Reddito di Cittadinanza in Piemonte con numero progressivo {2}, per completare la tua adesione e'''' necessario che prenoti un nuovo appuntamento presso il tuo Centro per l''''Impiego attraverso il servizio {3}. Se non sei piu'''' interessato, ti consigliamo di annullare l''''adesione sul portale Nazionale A.N.P.A.L.

{4}

Questo messaggio e'''' stato inviato in modalita'''' automatica, ti preghiamo di non rispondere a questo indirizzo.

Cordiali Saluti

{5}', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');
*/
insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1000, 'ME001', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Le credenziali di SPID imputate non sono state riconosciute; verificare la correttezza di quanto indicato a livello di Nome Utente e/o Password', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1001, 'ME002', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Cortesemente, si richiede di effettuare nuovamente l''operazione, in quanto si e'' verificato un problema di connettivita''. Se persistesse il problema, si consiglia di recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1002, 'ME003', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per proseguire con l''operativita'' nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1003, 'ME004', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'E'' obbligatorio selezionare la presa visione dell''informativa sulla privacy
', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1004, 'ME005', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Si sono verificati dei problemi che non permettono di proseguire con l''operativita''. 
Per poter operare nei confronti del soggetto imputato da SPID, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1005, 'ME006', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Cortesemente, si richiede di effettuare nuovamente l''operazione di aggiornamento, in quanto si e'' verificato un problema di connettivita''. Se persistesse il problema, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1006, 'ME007', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani a proprio nome, mancando la propria anagrafica sul sistema regionale del Piemonte:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare
> si puo'' eventualmente operare per conto di un Minore, se questi ha gia'' aderito.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1007, 'ME008', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani a proprio nome, mancando la propria adesione sul sistema regionale del Piemonte, in stato Aperto:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare
> si puo'' eventualmente operare per conto di un Minore, se questi ha gia'' aderito; accedere alla funzionalita'' di menu preposta, denominata "Garanzia Giovani per Minore"', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1008, 'ME009', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non risulta possibile operare sulla Garanzia Giovani, in quanto l''ultimo appuntamento del Cittadino risulta essere in Stato Erogato oppure Da Erogare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1009, 'ME010', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani, si rende necessario effettuare il calcolo del Profiling', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1010, 'ME011', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Le credenziali di SPID imputate sono riconducibili ad un Soggetto minorenne; e'' consentito operare solo su Soggetti maggiorenni.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1011, 'ME012', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non sono state fornite le risposte a tutte le informazioni aggiuntive in elenco (vedasi la colonna risposta vuota, per individuare quelle su cui fornire la risposta mancante)', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1012, 'ME013', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani, si rende necessario prenotare un appuntamento', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1013, 'ME014', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non e'' possibile mettere in Stato Erogato un appuntamento con data futura', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1014, 'ME015', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per procedere con la modifica dei dati anagrafici, si rende necessaria la variazioni di almeno uno dei dati', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1015, 'ME016', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'E'' obbligatorio selezionare la presa visione dell''informativa sulla responsabilita'' nei confronti del Minore', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1016, 'ME017', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani per conto di un Minore, e'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1017, 'ME018', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani per conto di un Minore, mancando l''anagrafica di quest''ultimo sul sistema regionale del Piemonte:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1018, 'ME019', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per operare sulla Garanzia Giovani per conto di un Minore, mancando l''adesione di quest''ultimo sul sistema regionale del Piemonte, in stato Aperto:
> devi prima aderire sul portale nazionale di A.N.P.A.L. oppure ti devi recare presso il Centro per l''Impiego di riferimento domiciliare.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1019, 'ME020', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Il Codice Fiscale selezionato del Minore ha un''eta'' inferiore a 15 anni, eta'' minima utile per poter operare sulla Garanzia Giovani', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1020, 'ME021', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Il Codice Fiscale selezionato del Minore ha un''eta'' maggiore/uguale a 18 anni, che non permette di operare per conto di un Minore sulla Garanzia Giovani.
Essendo diventato maggiorenne, dovra'' operare per proprio conto. Sara'' prima necessario abilitarsi su SPID, in caso non avesse ancora le credenziali.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1021, 'ME022', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Essendo l''appuntamento in uno stato finale (diverso "Da Erogare") non risulta possibile annullare o spostare l''incontro', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1022, 'ME023', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non risulta possibile operare sulla Garanzia Giovani, in quanto l''ultimo appuntamento del Minore selezionato risulta essere in Stato Erogato oppure Da Erogare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1023, 'ME024', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Colui che opera in qualita'' di genitore/affidatario/tutore deve essere maggiorenne', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1024, 'ME025', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non e'' attuabile il calcolo del Profiling, visto che il soggetto non risulta residente in Italia', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1025, 'ME026', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Avendo variato il dato anagrafico della Provincia di Residenza e/o Domicilio rispetto all''ultimo calcolo, si rende necessario il ricalcolo del Profiling', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1026, 'ME027', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non e'' possibile proseguire con la prenotazione dell''appuntamento, in quanto non e'' stata fornita la risposta all''informazione aggiuntiva in inserimento, considerata bloccante', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1027, 'ME028', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non e'' possibile proseguire senza avere effettuato la prenotazione dell''appuntamento', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1028, 'ME029', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Attenzione, il tuo appuntamento e'' stato Annullato, in quanto e'' stato variato il Comune di Residenza e/o Domicilio.
Per completare la tua Adesione a Garanzia Giovani, e'' necessario che prenoti un nuovo appuntamento presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1029, 'ME030', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non sono piu'' disponibili appuntamenti per il Calendario. E'' necessario recarsi presso il Centro per l''Impiego di riferimento domiciliare', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1030, 'ME031', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', '<p><strong>NOTA</strong>&nbsp;Per proseguire, devono essere valorizzati: i dati della Residenza, i dati del Domicilio, insieme alla E-mail di contatto.</p>
<p><strong>Attenzione:</strong> il Domicilio deve essere in Piemonte, previa la mancata possibilita'' di prenotare l''appuntamento.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1031, 'ME032', 'Messaggi di errore bloccanti 
', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Il Comune indicato non appartiene alla Provincia selezionata', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1032, 'ME033', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Il CAP deve essere composta da 5 cifre', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1033, 'ME034', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Se la Residenza/Domicilio e'' all''estero (non e'' in Italia), si devono lasciare vuoti tutti gli altri dati (Toponimo / Indirizzo / N.Civico / Provincia / Comune / CAP)', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1034, 'ME035', 'Messaggi di errore bloccanti 
', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Se la Residenza/Domicilio e'' in Italia, si devono valorizzare tutti i dati (Toponimo / Indirizzo / N.Civico / Provincia / Comune / CAP)', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1035, 'ME036', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Il Telefono / Cellulare / Fax deve essere composto da sole cifre numeriche ed eventualmente dai seguenti caratteri separatori: / - .', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1036, 'ME037', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'L''e-mail di contatto e'' fondamentale che venga valorizzata, al fine di poter comunicare gli avanzamenti dell''iter dell''adesione a Garanzia Giovani', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1037, 'ME038', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Il formato del sito internet non e'' corretto', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1038, 'ME039', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Per poter procedere, il Domicilio deve essere in Piemonte; in caso contrario, non sara'' possibile proseguire', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1039, 'ME040', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'Non e'' possibile prenotare un appuntamento in quanto il Domicilio non e'' in Piemonte. Se il Domicilio e'' stato erroneamente cambiato, dal riepilogo appuntamenti, si puo'' accedere nuovamente all''anagrafica e impostare un Domicilio in Piemonte', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1040, 'ME041', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', 'L''e-mail di contatto e'' errata, non rispecchia i canoni di formattazione', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1041, 'ME042', 'Messaggi di errore bloccanti ', 'TRV', 'MERR', 'Messaggi di errore bloccanti ', 'Per la stessa data e ora selezionate, e'' stata effettua la prenotazione dell''attuale appuntamento in vigore', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1042, 'ME043', 'Messaggi di errore bloccanti ', 'TRV', 'MERR', 'Messaggi di errore bloccanti ', 'La Data non ¿ nel formato corretto GG/MM/AAAA, rispettando il formalismo del giorno, del mese e del giorno in base al mese', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (1043, 'ME044', 'Messaggi di errore bloccanti ', 'GG', 'MERR', 'Messaggi di errore bloccanti ', '<p><strong>NOTA</strong>&nbsp;Per proseguire, devono essere valorizzati: Sesso, Data Nascita, Comune o Nazione Nascita, i dati della Residenza, i dati del Domicilio, insieme alla E-mail di contatto.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');
/*
insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (2000, 'ST001', 'Stampa riepilogo Adesione GG', 'GG', 'STAM', 'Adesione a Garanzia Giovani', '{0}

                                                              Data di emissione {1,date,dd/MM/yyyy}.

Il/La Sig./ra {2} 

  Codice fiscale {3}

  nato/a il {5,date,dd/MM/yyyy} a {4} ,

ha aderito al programma Garanzia Giovani in Piemonte in data {6,date,dd/MM/yyyy}, con il numero {7}.

Lo stato attuale dell''''adesione e'''' {8} a partire dal {9,date,dd/MM/yyyy}.


                                                              Il funzionario incaricato
                                                                        {10}', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');
*/
insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3000, 'MI001', 'Home Page Privacy e Riepilogo', 'TRV', 'MINF', 'Benvenuto', '<p class="InfoBlue">Al fine di procedere con l''operativita'' sulla Piattaforma Servizi al Lavoro in Piemonte, cortesemente, al primo accesso, si richiede di prendere visione della normativa sulla privacy.</p>
<p>Dovrai confermare la presa visione, tramite l''apposito campo, posto al termine dell''informativa.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3001, 'MI002', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, non essendo la tua anagrafica registrata a sistema; potrai altresi'' operare per conto di un Minore, se questi possiede l''adesione in stato attivo, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p class="InfoBlue">In caso volessi registrare la tua anagrafica e presentare l''adesione a Garanzia Giovani a tuo nome, dovrai prima aderire sul portale nazionale di A.N.P.A.L..</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3002, 'MI003', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, non essendo la tua adesione registrata a sistema; potrai altresi'' operare per conto di un Minore, se questi possiede l''adesione in stato attivo, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>In caso volessi presentare l''adesione a Garanzia Giovani a tuo nome, dovrai prima aderire sul portale nazionale di A.N.P.A.L..</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3003, 'MI004', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, essendo la tua adesione registrata a sistema, ma gia'' conclusa; potrai altresi'' operare per conto di un Minore, se questi possiede l''adesione in stato attivo, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>In caso volessi presentare un''altra adesione a Garanzia Giovani a tuo nome, dovrai prima aderire sul portale nazionale di A.N.P.A.L..</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3004, 'MI005', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p>Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>Al momento, a tuo nome non risulta presente un appuntamento, neanche a fronte di un Minore.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3005, 'MI006', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p> 
<p>Al momento, a tuo nome risulta presente un appuntamento per Minore.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3006, 'MI007', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p class="InfoBlue">Non sara'' possibile operare con la Garanzia Giovani a proprio nome, essendo l''ultimo appuntamento in stato Da Erogare / Erogato.</p>
<p class="InfoBlue">Potrai altresi'' operare per conto di un Minore, se questi possiede l''adesione in stato attivo, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3007, 'MI008', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p>&nbsp;</p>
<div id="u35" class="ax_default label">
<div id="u35_text" class="text ">
<p><span>Benvenuto nel portale&nbsp;</span><span>Servizi al Lavoro</span><span>&nbsp;della Regione Piemonte, dedicato ai giovani dai 15 ai 34 anni.</span></p>
<p>&nbsp;</p>
</div>
<div id="u37" class="ax_default label">
<div id="u37_text" class="text ">
<p><span data-mce-mark="1">Dopo aver preso visione e accettato l''informativa sulla privacy, in pochi e semplici passaggi potrai completare l''adesione al programma Garanzia Giovani e fissare il primo appuntamento presso il Centro per l''Impiego di competenza,&nbsp;</span><span data-mce-mark="1">per te o per un minore di cui sei in possesso di responsabilit&agrave; genitoriale</span></p>
</div>
', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3008, 'MI009', 'Allegati', 'TRV', 'MINF', 'Allegati', '<p>In questa sezione puoi eventualmente caricare e successivamente inviare al Centro per l''Impiego di competenza la documentazione utile a completare il tuo profilo professionale.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3009, 'MI010', 'Home Page Privacy e Riepilogo Garanzia Giovani', 'GG', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti dell''Adesione a Garanzia Giovani, sara'' possibile operare a proprio nome oppure per conto di un Minore, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di riferimento.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3010, 'MI011', 'Profiling', 'GG', 'MINF', 'Profiling', 'Per poter eseguire il calcolo del Profiling, il Domicilio deve essere in Piemonte; in caso contrario, non sara'' possibile effettuarlo', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3011, 'MI012', 'Prenotazione', 'GG', 'MINF', 'Prenotazione', 'Per poter prenotare l''appuntamento presso il Centro per l''Impiego di competenza, il Domicilio deve essere in Piemonte; in caso contrario, non sara'' possibile effettuarlo', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3012, 'MI013', 'Anagrafe', 'TRV', 'MINF', 'Anagrafe', 'Se selezionato erroneamente una Nazione diversa da Italia, con il tasto ANNULLA e'' possibile ripristinare i dati precedenti', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3013, 'MI014', 'Informazioni Aggiuntive', 'TRV', 'MINF', 'Informazioni Aggiuntive', 'Al momento, non sono richieste Informazioni Aggiuntive da inserire a supporto della prenotazione dell''appuntamento.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3014, 'MI015', 'Documenti Allegati', 'TRV', 'MINF', 'Documenti Allegati', 'Al momento, non sono richiesti Documenti da allegare a supporto della prenotazione dell''appuntamento.', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3015, 'MI016', 'Home Page Privacy e Riepilogo Reddito di Cittadinanza', 'RDC', 'MINF', 'Benvenuto', '<p class="InfoBlue">Sono a tua disposizione le funzionalita'' con cui operare sulla Piattaforma Servizi al Lavoro in Piemonte.</p>
<p>Per quanto concerne l''iter nei confronti del Reddito di Cittadinanza, sara'' possibile operare a proprio nome, con l''intento di prenotare un appuntamento presso il Centro per l''Impiego di competenza.</p> ', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (3016, 'MI017', 'Home Page Privacy e Riepilogo Reddito di Cittadinanza', 'RDC', 'MINF', 'Benvenuto', '<p>&nbsp;</p>
<div id="u35" class="ax_default label">
<div id="u35_text" class="text ">
<p><span>Benvenuto nel portale&nbsp;</span><span>Servizi al Lavoro</span><span>&nbsp;della Regione Piemonte.</span></p>
<p>&nbsp;</p>
</div>
<div id="u37" class="ax_default label">
<div id="u37_text" class="text ">
<p><span data-mce-mark="1">Dopo aver preso visione e accettato l''informativa sulla privacy, in pochi e semplici passaggi potrai fissare il primo appuntamento presso il Centro per l''Impiego di competenza&nbsp;</span><span data-mce-mark="1"></span></p>
</div>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4000, 'HC001', 'Help campo Profiling
', 'GG', 'MHCA', 'Profiling
', '<p>Il profiling &egrave; lo strumento adottato dal Programma Garanzia Giovani che permette&nbsp; ai Servizi per l''Impiego di individuare il percorso pi&ugrave; coerente con le caratteristiche personali, formative e professionali dei giovani iscritti e presi in carico e di determinare il livello di distanza dal mercato del lavoro.</p>
<p>Il calcolo del Profiling non &egrave; obbligatorio.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4001, 'HC002', 'Help campo Informazioni Aggiuntive
', 'TRV', 'MHCA', 'Informazioni Aggiuntive', '<p>Per completare il profilo del Cittadino, viene richiesta l''eventuale compilazione delle Informazioni Aggiuntive.</p>
<p>Alcune di queste informazioni potrebbero essere obbligatorie; in tal caso, verr&agrave; evidenziata la casistica.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4002, 'HC003', 'Help campo Anagrafe per conto proprio e per Minore
', 'GG', 'MHCA', 'Anagrafe per conto proprio e per Minore', '<p>I dati anagrafici, nei confronti di se stessi o del Minore, sono richiesti relativamente alla Residenza, al Domicilio e al Recapito.</p>
<p>Obbligatoriamente, deve essere fornito un Domicilio in Piemonte, al fine di poter effettuare il successivo calcolo del Profiling e&nbsp; per poter prenotare l''appuntamento presso il Centro per l''Impiego di competenza.</p>
<p>Anche l''email di contatto deve essere fornita, al fine di poter ricevere le comunicazioni che scaturiscono a fronte dell''iter di lavorazione dell''Adesione a Garanzia Giovani.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4003, 'HC004', 'Help campo Anagrafe del Responsabile
', 'GG', 'MHCA', 'Anagrafe del Responsabile', '<p>I dati anagrafici, nei confronti del Responsabile di Minore, sono richiesti relativamente alla Residenza, al Domicilio e al Recapito.</p>
<p>Nel caso che il Cittadino non fosse ancora presente all''interno dell''Anagrafe dei Lavoratori, verranno richieste anche alcune informazioni integrative obbligatorie, tipo: Sesso, Data / Comune / Nazione di Nascita.</p>
<p>Se il Lavoratore avesse una cittadinanza extra-Ue, potr&agrave; eventualmente fornire i dati del Permesso di Soggiorno.</p>
<p>Anche l''email di contatto deve essere fornita, al fine di poter ricevere le comunicazioni che scaturiscono a fronte dell''iter di lavorazione dell''Adesione a Garanzia Giovani.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4004, 'HC005', 'Help campo Documenti Allegati
', 'TRV', 'MHCA', 'Documenti Allegati', '<p>E'' data facolta'' di poter allegare documenti a supporto della prenotazione dell''appuntamento.</p>
<p>Sono accettate solo alcune tipologie di documenti, che sono elencate nel campo apposito di selezione.</p>', to_date('29/04/2019 16:27:15', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4005, 'HC006', 'Help campo Home page icona Garanzia Giovani
', 'GG', 'MHCA', 'Home page icona Garanzia Giovani', 'Il Programma Garanzia Giovani (Youth Guarantee) e'' il Piano europeo per la lotta alla disoccupazione giovanile', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (4006, 'HC007', 'Help campo Home page icona Reddito di Cittadinanza
', 'RDC', 'MHCA', 'Home page icona Reddito di Cittadinanza', 'Il reddito di cittadinanza ¿ un reddito erogato a determinate fasce della popolazione, che si impegnano a seguire corsi di formazione e ad aderire ad una delle offerte di lavoro proposte dai centri per l''impiego ', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5000, 'HP001', 'Help pagina Home', 'TRV', 'MHPA', 'HomeGiovani', '<p>Benvenuto nella piattaforma tecnologica di gestione dei servizi al lavoro in Piemonte integrata con il Sistema Informativo Lavoro Regionale, che assicura un tracciamento informatico dalla registrazione al termine delle politiche attive attuate.</p>
<p>La nuova piattaforma regionale e'' utilizzabile da tutti i cittadini che vogliono partecipare ai progetti di politica attiva della Regione Piemonte. Si prevede di tracciare la registrazione e i dati relativi alla scheda anagrafico professionale (SAP) e tutte le informazioni utili al fine di poter erogare i servizi di politica attiva in maniera efficiente.</p>
<p>Nella fattispecie, la piattaforma e'' principalmente coinvolta con la memorizzazione dell''appuntamento presso il Centro per l''Impiego di competenza, andando a tracciare anche i successivi eventi che scaturiscono a valle dell''incontro, tipo: disdetta da parte del Cittadino, disdetta da parte dell''operatore regionale, mancata presentazione, inizio dell''erogazione delle politiche attive.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5001, 'HP002', 'Help pagina Presentazione Privacy per conto proprio', 'GG', 'MHPA', 'Presentazione Privacy per conto proprio', '<p><strong>Prenotazione appuntamento: privacy per conto proprio.</strong></p>
<p>Il programma Garanzia Giovani (iniziato nell''Aprile del 2014 e gestito dalle Regione attraverso la rete dei Centri per l''impiego (CpI)), prevede l''adesione online attraverso i portali nazionali ed il completamento attraverso piattaforma regionale.</p>
<p>A seguito dell''adesione online, il giovane riceve una mail in cui si richiede di completare le informazioni sulla piattaforma regionale, a cui dovra'' accedere attraverso SPID (Sistema Pubblico di Identita'' Digitale), se risulta maggiorenne, in caso di minore, dovra'' operare un responsabile in sua vece.</p>
<p>Collegatosi al sistema si dovra'' completare la domanda di adesione, in dettaglio:<br /><strong>&gt;</strong> Se opera per conto proprio, visualizza una informativa sul trattamento dei dati personali, sulla quale, al primo accesso, viene<br /> richiesta di apporre la presa visione<br /><strong>&gt;</strong> Se opera per conto di un minore, visualizza una informativa sulla responsabilita'' nei confronti del minore, sulla quale, al primo<br /> accesso, viene richiesta di apporre la presa visione <br /><strong>&gt;</strong> Visualizza i dati anagrafici ed eventualmente aggiorna la residenza e/o il domicilio e/o il recapito<br /><strong>&gt;</strong> Calcola il profiling Garanzia Giovani, inserendo i dati richiesti dal servizio esposto da ANPAL (Agenzia Nazionale Politiche<br /> Attive del Lavoro)<br /><strong>&gt;</strong> Inserisce le informazioni aggiuntivi ed eventuali documenti allegati<br /><strong>&gt;</strong> Prenota un appuntamento presso il CpI (Centro per l''Impiego) o sportello (la funzionalita'' non sara'' attivabile, se non sono<br /> stati compilati tutti i dati definiti obbligatori).</p>
<p>Una volta effettuata la prenotazione dell''incontro, il sistema restituisce una ricevuta di conferma, inviandone anche una copia nella casella di posta elettronica indicata con i dati della prenotazione dell''appuntamento. A pochi giorni dall''appuntamento, il sistema invia una ulteriore mail con il promemoria della prenotazione.</p>
<p>Il cittadino puo'' spostare l''appuntamento o annullarlo.</p>
<p>Quando si presenta al CpI o ad un suo sportello, viene intervistato e viene redatto un patto di servizio firmato sia dal giovane che dagli operatori del CpI; successivamente, iniziera'' il percorso delle politiche attive del lavoro.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5002, 'HP003', 'Help pagina Dati Anagrafici ', 'GG', 'MHPA', 'Dati Anagrafici', '<p><strong>Prenotazione appuntamento: dati anagrafici.</strong></p>
<p>Nei confronti del cittadino, che ha effettuato l''accesso, oppure del Minore per cui il Cittadino risulta responsabile, vengono riportati i dati anagrafici che lo caratterizzano, in termini di:</p>
<p><strong>&gt;</strong> riferimenti anagrafici<br /><strong>&gt;</strong>&nbsp;permesso di soggiorno (solo se cittadino extra-UE)<br /><strong>&gt;</strong>&nbsp;residenza<br /><strong>&gt;&nbsp;</strong>domicilio<br /><strong>&gt;</strong>&nbsp;recapito.</p>
<p><strong>NB=</strong> I campi che riportato l''asterisco (*) sono da intendersi obbligatori e sono:<br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; &gt;</strong>&nbsp;i dati della residenza<br /><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>&gt;</strong>&nbsp;i dati del domicilio<br /><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>&gt;</strong>&nbsp;l''e-mail di contatto del recapito.</p>
<p>Operativamente, sono modificabili i dati di: residenza - domicilio - recapito, tramite l''apposito tasto MODIFICA DATI.</p>
<p>Si apre in modifica un''apposita sezione, dove valorizzare i singoli campi.<br />Alcuni di questi sono da selezionare dall''elenco proposto tramite il menu'' a tendina dell''icona posta a destra del campo; altri sono da digitare.</p>
<p>Se la residenza e domicilio fossero in Italia, e'' richiesto di valorizzare tutti i campi, tranne la nazione.<br />Se la residenza fosse all''estero, e'' richiesto di valorizzare solamente la nazione (i restanti dati vengono automaticamente puliti).</p>
<p>Il domicilio deve essere obbligatoriamente in Piemonte, altrimenti non sara'' possibile proseguire con la prenotazione dell''appuntamento.<br />Al fine di ricevere le comunicazioni via mail inerenti all''iter di prenotazione, e'' anche obbligatorio indicare l''e-mail di contatto, all''interno della sezione recapito.</p>
<p>Con il tasto CONFERMA MODIFICHE, si proteggono i dati valorizzati.<br />Con il tasto ANNULLA, si ripristinano i dati iniziali.</p>
<p>Se tutti i dati obbligatori risultano gia'' valorizzati, al momento dell''apertura della pagina, il tasto PROSEGUI risultera'' attivo, altrimenti sara'' disabilitato.</p>
<p>Se e'' stata attuata una qualsiasi modifica e i dati obbligatori sono valorizzati, sara'' attivo il tasto SALVA &amp; PROSEGUI.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5003, 'HP004', 'Help pagina Calcolo Profiling', 'GG', 'MHPA', 'Calcolo Profiling', '<p><strong>Prenotazione appuntamento: calcolo del profiling.</strong></p>
<p>Il cittadino potra'', opzionalmente, specificare i dati utili a calcolare il profiling Garanzia Giovani.</p>
<p>Il profiling e'' lo strumento adottato dal Programma Garanzia Giovani che permette ai Centri per l''Impiego di individuare il percorso piu'' coerente con le caratteristiche personali, formative e professionali dei giovani iscritti e presi in carico e di determinare il livello di distanza dal mercato del lavoro.</p>
<p>I dati relativi alla profilazione sono:<br /><strong>&gt;</strong>&nbsp;Provincia di Domicilio in Piemonte; impostato dal sistema in base al domicilio dichiarato tra i suoi dati anagrafici&nbsp;&nbsp;(non modificabile)<br /><strong>&gt;</strong>&nbsp;Eta'',&nbsp;impostato dal sistema in base ai suoi dati anagrafici (non modificabile)<br /><strong>&gt;</strong>&nbsp;Genere, impostato dal sistema in base ai dati presenti (non modificabile)<br /><strong>&gt;</strong>&nbsp;Titolo di studio; da selezionare dall''elenco proposto tramite il menu'' a tendina dell''icona posta a destra del campo<br /><strong>&gt;</strong>&nbsp;Condizione occupazionale un anno prima dell''adesione;&nbsp;da selezionare dall''elenco proposto tramite il menu'' a tendina dell''icona posta a destra del campo<br /><strong>&gt;</strong> Periodo di presenza in Italia; da selezionare dall''elenco proposto tramite il menu'' a tendina dell''icona posta a destra del campo.</p>
<p>L''operazione verra'' attivata tramite il tasto CALCOLO PROFILING.<br />Al termine, verra'' proposto il risultato del calcolo dove saranno riportati:<br /><strong>&gt;</strong> il valore di profiling determinato<br /><strong>&gt;</strong>&nbsp;la data del calcolo<br /><strong>&gt;</strong>&nbsp;il riassunto dei parametri valorizzati dal cittadino.</p>
<p>Nel caso fosse gia'' presente un calcolo precedente, verranno forniti gli estremi, che sono gli stessi presentati a fronte di un nuovo calcolo.</p>
<p>Se non si intende effettuare il calcolo, si potra'' comunque procedere con il tasto PROSEGUI.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5004, 'HP005', 'Help pagina Informazioni aggiuntive & Documenti allegati', 'GG', 'MHPA', 'Informazioni aggiuntive & Documenti allegati', '<p><strong>Prenotazione appuntamento:</strong></p>
<p><br /><strong>Informazioni aggiuntive.</strong></p>
<p>Il cittadino potra'' fornire le risposte a specifiche informazioni aggiuntive.</p>
<p>Si possono presentare tre differenti situazioni:<br /><strong>1&deg;</strong> non sono richieste; in questo caso compare la dicitura:<br />&nbsp; &nbsp; <strong>&nbsp;&gt;</strong> Al momento, non sono richieste Informazioni Aggiuntive da inserire a supporto della prenotazione dell''appuntamento;<br /><strong>2&deg;</strong> sono opzionali; sara&rsquo; a discrezione del cittadino, di fornire una risposta all&rsquo;informazione aggiuntiva che lui vuole; con il tasto AGGIUNGI UN&rsquo;ALTRA INFORMAZIONE, si potra&rsquo; selezionare con quale tipologia interagire dall''elenco proposto tramite il menu'' a tendina dell''icona posta a destra del campo;<br /><strong>3&deg;</strong> sono obbligatorie; il cittadino sara&rsquo; tenuto a rispondere a ciascuna delle informazioni aggiuntive, presentate preventivamente.</p>
<p>Le risposte fornite andranno a popolare un apposito elenco, il quale sara&rsquo; anche presentato per illustrare la situazione di quanto era stato caricato precedentemente.</p>
<p>Su quelle caricate nella presente sessione, sara&rsquo; data anche la possibilita&rsquo; di eliminare tale risposta, tramite l&rsquo;icona posta alla destra della voce.</p>
<p>Con il tasto AGGIUNGI UN&rsquo;ALTRA INFORMAZIONE, si potra&rsquo; comunque fornire una nuova risposta sulla medesima informazione a cui si era gia&rsquo; dato una risposta precedentemente.</p>
<p>La valorizzazione comporta fornire:<br /><strong>&gt;</strong>&nbsp;la risposta alla domanda con SI o NO<br /><strong>&gt;</strong>&nbsp;osservazioni integrative opzionali.</p>
<p><br /><strong>Documenti allegati.</strong></p>
<p>Al momento, non sono richiesti Documenti da allegare a supporto della prenotazione dell''appuntamento.</p>
<p><br /><strong>Procedere con la pagina (comune ad entrambe le tipologie di dati).</strong></p>
<p>Se tutti i dati obbligatori risultano gia'' valorizzati, al momento dell''apertura della pagina, il tasto PROSEGUI risultera'' attivo, altrimenti sara'' disabilitato.</p>
<p>Se e'' stata attuata una qualsiasi modifica e i dati obbligatori sono valorizzati, sara'' attivo il tasto SALVA &amp; PROSEGUI</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5005, 'HP006', 'Help pagina Scelta Minore', 'GG', 'MHPA', 'Scelta Minore', 'DSFSDFSDDSGFD', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5006, 'HP007', 'Help pagina Presentazione Privacy per Responsabile', 'GG', 'MHPA', 'Presentazione Privacy per Responsabile', '<p><strong>Prenotazione appuntamento: privacy per responsabile di minore.</strong></p>
<p>Alla stessa stregua della prevacy per conto proprio, si invita il cittadino a visione il contenuto dell''informativa sulla responsabilita'' nei confronti del minore.</p>
<p>Anche in questo, al primo accesso,&nbsp;viene richiesta di apporre la presa visione.</p>
<p>&nbsp;</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5007, 'HP008', 'Help pagina Dati Anagrafici Responsabile', 'GG', 'MHPA', 'Dati Anagrafici Responsabile', '<p><strong>Prenotazione appuntamento: dati anagrafici responsabile richiedente.</strong></p>
<p>Nei confronti del cittadino responsabile nei confronti di un Minore, vengono riportati i dati anagrafici che lo caratterizzano, in termini di:<br /><strong>&gt;</strong> riferimenti anagrafici<br /><strong>&gt;</strong>&nbsp;permesso di soggiorno (solo se cittadino extra-UE)<br /><strong>&gt;</strong>&nbsp;residenza<br /><strong>&gt;</strong>&nbsp;domicilio<br /><strong>&gt;</strong>&nbsp;recapito.</p>
<p><strong>NB=</strong> I campi che riportato l''asterisco (*) sono da intendersi obbligatori e sono:<br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; &gt;</strong>&nbsp;i dati dei riferimenti anagrafici<br /><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>&gt;</strong>&nbsp;i dati del permesso di soggiorno<br /><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>&gt;</strong>&nbsp;i dati della residenza<br /><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>&gt;</strong>&nbsp;i dati del domicilio<br /><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>&gt;</strong>&nbsp;l''e-mail di contatto del recapito.</p>
<p>Operativamente, sono modificabili i dati di: <br /><strong>&gt;</strong> riferimenti anagrafici (solo se il cittadino non risulta presente sui sistemi regionali)<br /><strong>&gt;</strong>&nbsp;i dati del permesso di soggiorno (solo se cittadino extra-UE e se non risulta presente sui sistemi regionali)<br /><strong>&gt;</strong>&nbsp;residenza<br /><strong>&gt;</strong>&nbsp;domicilio<br /><strong>&gt;</strong>&nbsp;recapito<br />tramite l''apposito tasto MODIFICA DATI.</p>
<p>Si apre in modifica un''apposita sezione, dove valorizzare i singoli campi.<br />Alcuni di questi sono da selezionare dall''elenco proposto tramite il menu'' a tendina dell''icona posta a destra del campo; altri sono da digitare.</p>
<p>Se la residenza e domicilio fossero in Italia, e'' richiesto di valorizzare tutti i campi, tranne la nazione.<br />Se la residenza fosse all''estero, e'' richiesto di valorizzare solamente la nazione (i restanti dati vengono automaticamente puliti).</p>
<p>Il domicilio deve essere obbligatoriamente in Piemonte, altrimenti non sara'' possibile proseguire con la prenotazione dell''appuntamento.<br />Al fine di ricevere le comunicazioni via mail inerenti all''iter di prenotazione, e'' anche obbligatorio indicare l''e-mail di contatto, all''interno della sezione recapito.</p>
<p>Con il tasto CONFERMA MODIFICHE, si proteggono i dati valorizzati.<br />Con il tasto ANNULLA, si ripristinano i dati iniziali.</p>
<p>Se tutti i dati obbligatori risultano gia'' valorizzati al momento dell''apertura della pagina, il tasto PROSEGUI risultera'' attivo, altrimenti sara'' disabilitato.</p>
<p>Se e'' stata attuata una qualsiasi modifica e i dati obbligatori sono valorizzati, sara'' attivo il tasto SALVA &amp; PROSEGUI.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5008, 'HP009', 'Help pagina Conferma', 'GG', 'MHPA', 'Conferma', 'dsfsdfsdfd', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5009, 'HP010', 'Help pagina Prenotazione appuntamento', 'GG', 'MHPA', 'Prenotazione appuntamento', 'fsdfsdfsdfsd', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

insert into pslp_d_messaggio (ID_MESSAGGIO, COD_MESSAGGIO, DESCR_MESSAGGIO, COD_AMBITO, COD_TIPO_MESSAGGIO, INTESTAZIONE, TESTO, D_INIZIO, D_FINE)
values (5010, 'HP011', 'Help pagina Riepilogo appuntamenti', 'GG', 'MHPA', 'Riepilogo appuntamenti', '<p><strong>Riepilogo appuntamenti Garanzia Giovani.</strong></p>
<p>Nei confronti del Cittadino, che ha effettuato l''accesso, vengono riportati i dati dell''adesione a Garanzia Giovani e dell''eventuale appuntamento prenotato presso il Centro per l''Impiego.</p>
<p>Nel caso si fosse operato per conto del Minore, sono visualizzati gli stessi dati, riferiti in questo caso ad ogni Minore dove il Cittadino risulta esserne il responsabile.</p>
<p>In termini operativi, vengono fornite le seguenti possibilita'':<br /><strong>&gt;</strong> prenotare un nuovo appuntamento per conto proprio (se ne fosse sprovvisto o se disdetto) o per conto di un Minore (tasto NUOVO APPUNTAMENTO)<br /><strong>&gt;</strong> stampare i dati riassuntivi dell''adesione a Garanzia Giovani (tasto STAMPA ADESIONE)<br /><strong>&gt;</strong> visualizzare e/o modificare singolarmente i dati Anagrafici - Profiling - Informazioni Aggiuntive - Documenti Allegati, sia per conto proprio che per conto di un Minore (tasto VISUALIZZA MODIFICA)<br /><strong>&gt;</strong> annullare e/o spostare l''appuntamento (tasti ANNULLA e SPOSTA).<br /> <strong>NB=</strong> lo spostamento potrebbe non essere disponibile, se si e'' oltrepassato il limite temporale che lo rende attuabile,&nbsp;entro un determinato lasso di tempo, prima della data e ora dell''appuntamento.</p>', to_date('30/08/2019 12:00:00', 'dd/mm/yyyy hh24:mi:ss'), '');

commit;
