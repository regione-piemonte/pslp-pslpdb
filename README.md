# Prodotto 
PSLP - PSLPDB : DB script (Oracle) per il prodotto PSLP

# Descrizione del prodotto
Il DBMS di riferimento è Oracle. Tramite questi script viene creato e popolato lo schema dati usato dalle altre componenti. 

# Configurazioni iniziali
Definire utente "PSLP" su una istanza DBMS Oracle (v 11.2.0.4.0) proprietario dello schema, ed utente "PSLP_RW" per l'accesso da applicativo.

# Getting Started
Una volta prelevata e portata in locale dal repository la componente ("git clone"), predisporsi per poter eseguire gli script nella sequenza indicata.

# Prerequisiti di sistema
DBMS Oracle versione 11.2.0.4.0, utente con permessi adeguati ad eseguire istruzioni di creazione tabelle.

# Installazione
Lanciare tutti gli script nell'ordine indicato dal prefisso del nome del file, lanciando per ultimo lo script 98_Grant_to_USER_RW.sql.

# Versioning
Per il versionamento del software si usa la tecnica Semantic Versioning (http://semver.org).

# Authors
Fare riferimento a quanto riportato nel file AUTHORS.txt.

#Copyrights
© Copyright Regione Piemonte – 2021
© Copyright CSI-Piemonte – 2021

Questo stesso elenco dei titolari del software è anche riportato in Copyrights.txt .

# License
Il prodotto software è sottoposto alla licenza EUPL-1.2 o versioni successive.
SPDX-License-Identifier: EUPL-1.2-or-later
Vedere il file EUPL v1_2 IT-LICENSE.txt per i dettagli.
