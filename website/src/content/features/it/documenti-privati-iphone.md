---
pageId: private-documents
title: "Documenti privati su iPhone: cifra PDF, scansioni e ID"
description: "Importa PDF, scansioni e documenti d'identità dall'app File in una cassaforte cifrata Velcrypt, aprili offline ed esporta una copia solo quando serve."
h1: "Proteggi i documenti privati in una cassaforte cifrata"
navTitle: "Documenti privati"
answer: "Velcrypt importa documenti come PDF, scansioni e copie di documenti d'identità dall'app File di iOS in una cassaforte cifrata. Puoi aprirli nell'app, tenerli in album ed esportarne una copia quando devi inviarli o stamparli. L'originale in File resta finché non lo elimini."
keyFacts:
  - "Importa documenti dall'app File, inclusi PDF e pagine scansionate."
  - "Ogni documento viene cifrato sul dispositivo con AES-256-GCM."
  - "Apri i documenti dentro la cassaforte, completamente offline."
  - "L'esportazione crea una copia fuori dalla cassaforte: gestiscila con cura."
  - "L'originale in File resta finché non lo elimini."
primaryKeyword: "app documenti privati iphone"
keywords: ["proteggere pdf iphone", "conservare documenti identità iphone", "cassaforte documenti iphone", "nascondere documenti iphone", "scansione passaporto cifrata iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importa PDF, scansioni e copie di documenti d'identità da File in una cassaforte cifrata, aprili offline ed esporta solo se serve."
status: available
schemaType: WebPage
order: 8
related: [scan-documents-privately-iphone, medical-and-id-documents, password-protect-folder-iphone, encryption, albums]
faq:
  - q: "Quali documenti posso conservare in Velcrypt?"
    a: "I documenti che raggiungi dall'app File di iOS, come PDF e pagine scansionate, oltre alle immagini di documenti. Esempi tipici sono copie di passaporto e carta d'identità, referti medici, contratti e documenti fiscali."
  - q: "Posso scansionare un documento direttamente in Velcrypt?"
    a: "Velcrypt non ha uno scanner né una fotocamera integrati. Scansiona con un'app che salva in File, importa la scansione in Velcrypt e poi elimina il file creato."
  - q: "Posso inviare a qualcuno un documento dalla mia cassaforte?"
    a: "Sì, esportandolo. L'esportazione crea una copia decifrata fuori dalla cassaforte, per esempio in File o in una destinazione del menu di condivisione. Quella copia non è più protetta da Velcrypt, quindi eliminala quando hai finito."
  - q: "I miei documenti privati su iPhone vengono caricati o sincronizzati?"
    a: "No. Velcrypt non ha server, account né sincronizzazione cloud. I documenti restano cifrati sul tuo iPhone e nella prima versione sono esclusi dai backup di iCloud e del computer."
---

Passaporti, tessere sanitarie, referti medici e contratti firmati finiscono spesso come file sparsi nei Download o come foto nel rullino. Velcrypt dà loro un posto dedicato e cifrato sul tuo iPhone, separato da tutto ciò che sfogli ogni giorno.

## Importare dall'app File

Velcrypt importa i documenti tramite il selettore di documenti di iOS, lo stesso browser che vedi nell'app File. Puoi scegliere file da «Sul mio iPhone», da iCloud Drive o da altre posizioni mostrate dall'app File, e Velcrypt salva una copia cifrata nella cassaforte che hai aperta.

Cose che si conservano spesso:

- **PDF** come contratti, buste paga, dichiarazioni dei redditi e lettere della banca.
- **Scansioni** di documenti cartacei.
- **Copie di documenti d'identità**: passaporto, patente, permesso di soggiorno, tessera sanitaria.
- **Documenti medici**: risultati di esami, prescrizioni, richieste di visita.

Ogni documento viene cifrato sul dispositivo con AES-256-GCM, usando una propria chiave derivata dalla chiave principale della cassaforte. La pagina sulla [crittografia](id:encryption) spiega come.

## Scansionare in modo riservato

Velcrypt non include una fotocamera né uno scanner. Il flusso più sicuro è scansionare con uno strumento che salva in File, importare il risultato in Velcrypt e poi eliminare la scansione dalla posizione originale. Se lo scanner ha salvato una copia anche in Foto o in una cartella cloud, elimina anche quella.

La guida su [come scansionare documenti in modo riservato su iPhone](id:scan-documents-privately-iphone) confronta le opzioni di scansione integrate in iOS e dove ciascuna salva i risultati.

## Aprire i documenti nella cassaforte

I documenti si aprono dentro Velcrypt, quindi puoi controllare il numero del passaporto o leggere una lettera senza esportare nulla. Tutto avviene offline e nulla viene inviato altrove per mostrare il file.

Puoi raggruppare i documenti in [album](id:albums), per esempio «Identità», «Salute» e «Casa», e spostarli tra album con la selezione multipla. Quando esci dall'app, il [blocco automatico](id:auto-lock) chiude la cassaforte e il selettore delle app non mostra alcuna anteprima del documento aperto.

## Esportare un documento

L'esportazione è il modo per riportare un documento fuori dalla cassaforte, per esempio per inviarlo via email a un ufficio, caricarlo in un modulo o stamparlo. Quando esporti, Velcrypt scrive una **copia decifrata** fuori dalla cassaforte.

Quella copia non è più protetta da Velcrypt. Trattala come qualsiasi altro file:

1. **Esporta solo ciò che ti serve**, solo quando ti serve.
2. **Invialo o stampalo.**
3. **Elimina la copia esportata** da File, dai Download o da dovunque sia finita.
4. **Ricorda la copia del destinatario.** Una volta inviato, il documento vive sul suo dispositivo e nella sua casella di posta, fuori dal tuo controllo.

Per tutto il tempo l'originale resta nella tua cassaforte.

## Eliminare gli originali da File

Importare copia un file, non lo sposta. Dopo aver verificato che il documento si apre in Velcrypt, elimina l'originale dall'app File. I file eliminati da iCloud Drive o da «Sul mio iPhone» finiscono nella posizione «Eliminati di recente» di File, dove di solito si possono ripristinare per un massimo di 30 giorni, quindi rimuovili anche da lì.

## Velcrypt, una cartella o una nota protetta

| Opzione | Come è protetta | Note |
| --- | --- | --- |
| Cartella nell'app File | Solo il codice del dispositivo | Chiunque usi il telefono sbloccato può aprirla |
| Nota bloccata in Note | Codice del dispositivo o una password separata per le note | Cifrata, ma limitata alle note |
| Cassaforte Velcrypt | La tua sequenza, separata dal codice del dispositivo | Cifratura per file, casseforti separate per ogni sequenza |

Se stai decidendo tra queste opzioni, [come proteggere una cartella con password su iPhone](id:password-protect-folder-iphone) le analizza una per una e il caso d'uso sui [documenti medici e d'identità](id:medical-and-id-documents) mostra una configurazione completa.

## Buono a sapersi

- Nella prima versione i dati delle casseforti non sono inclusi nei backup di iCloud o del computer. Tieni una seconda copia degli originali insostituibili, come la scansione del passaporto, in un posto di cui ti fidi.
- Una cassaforte non può proteggere un documento che qualcuno fotografa mentre è aperto sul tuo schermo.
