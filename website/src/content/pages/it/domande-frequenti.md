---
pageId: faq
title: "Domande frequenti Velcrypt: casseforti e cifratura"
description: "Risposte alle domande più comuni su Velcrypt: casseforti a sequenza, cifratura, backup, privacy, prezzi e su quali iPhone funziona."
h1: "Domande frequenti su Velcrypt"
navTitle: "FAQ"
answer: "Velcrypt è un’app per iPhone (iOS 17 o successivo) che conserva foto, video e documenti in casseforti cifrate sul dispositivo. Ogni cassaforte si apre con la propria sequenza, non c’è un account e nulla viene caricato: per questo una sequenza dimenticata non si può recuperare."
keyFacts:
  - "App per iPhone, iOS 17 o successivo."
  - "Ogni sequenza apre la propria cassaforte; le sequenze sconosciute ne aprono una vuota."
  - "Cifratura AES-256-GCM, solo sul dispositivo, nessun account."
  - "Nessun recupero se dimentichi la sequenza o perdi il telefono."
  - "Versione gratuita più Premium facoltativo; prezzi da annunciare."
primaryKeyword: "velcrypt domande frequenti"
keywords: ["velcrypt faq", "come funziona velcrypt", "app cassaforte foto domande", "velcrypt aiuto sequenza", "velcrypt backup"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Le basi"
    items:
      - q: "Cos’è Velcrypt?"
        a: "Velcrypt è un’app per iPhone che conserva foto, video e documenti privati in casseforti cifrate sul dispositivo. Apri una cassaforte disegnando una sequenza su una griglia di 5×5 punti."
      - q: "Cosa posso conservare in Velcrypt?"
        a: "Foto e video dalla libreria di Foto e documenti dall’app File. In una cassaforte puoi organizzare gli elementi in album, guardare foto e video con zoom e scorrimento e spostare o esportare gli elementi in modo sicuro."
      - q: "Importare una foto in Velcrypt la rimuove dalla libreria di Foto?"
        a: "No. L’importazione crea una copia cifrata e l’originale resta in Foto finché non lo elimini. Dopo averlo eliminato, svuota anche Eliminati di recente, dove altrimenti gli elementi restano per circa 30 giorni."
      - q: "Velcrypt ha una fotocamera integrata?"
        a: "No. Velcrypt non include una fotocamera. Scatti le foto con l’app Fotocamera dell’iPhone e poi le importi in una cassaforte."
      - q: "Velcrypt è uguale all’album Nascosti dell’iPhone?"
        a: "No. L’album Nascosti toglie solo le foto dalla vista principale della libreria e si apre con Face ID o con il codice. Velcrypt cifra i file con una chiave derivata da una sequenza separata, che non è il codice del dispositivo."
  - title: "Sequenza e casseforti"
    items:
      - q: "Come deve essere una sequenza valida in Velcrypt?"
        a: "Una linea continua che passa per almeno 6 punti della griglia 5×5, con almeno un cambio di direzione. Si consigliano sequenze più lunghe, da 8 a 12 punti."
      - q: "Come creo una seconda cassaforte?"
        a: "Disegna una sequenza nuova che non hai mai usato. Ogni sequenza è una cassaforte a sé, quindi una sequenza nuova apre una cassaforte nuova e vuota che puoi iniziare a riempire."
      - q: "Perché la mia sequenza ha aperto una cassaforte vuota?"
        a: "Molto probabilmente hai disegnato una sequenza leggermente diversa, che Velcrypt considera un’altra cassaforte. Riprova con calma; per scelta, l’app non mostra mai un messaggio di “sequenza errata”."
      - q: "Posso vedere l’elenco delle mie casseforti?"
        a: "No. Velcrypt non tiene alcun elenco di casseforti, quindi nulla nell’app rivela quante ne esistono. Devi ricordare tu ogni sequenza."
      - q: "Cos’è una cassaforte esca?"
        a: "Una cassaforte esca è una cassaforte dall’aspetto normale con contenuti innocui, che puoi aprire se vieni messo sotto pressione, mentre quella privata resta dietro un’altra sequenza. Nulla in Velcrypt prova che la seconda esista."
      - q: "Cos’è la sequenza di emergenza?"
        a: "La sequenza di emergenza è una funzione Premium in programma, in arrivo. Disegnandola si aprirebbe una cassaforte scelta da te e si rimuoverebbe in silenzio l’accesso alle altre."
      - q: "Posso organizzare gli elementi all’interno di una cassaforte?"
        a: "Sì. Ogni cassaforte può contenere album, e puoi selezionare più elementi e spostarli tra gli album di quella cassaforte."
      - q: "Perché Velcrypt non usa Face ID né Touch ID?"
        a: "Per scelta. Un volto o un dito possono essere usati senza il tuo consenso, per esempio mentre dormi o sotto pressione, mentre una sequenza esiste solo nella tua memoria."
  - title: "Sicurezza e cifratura"
    items:
      - q: "Come cifra i miei file Velcrypt?"
        a: "Con AES-256-GCM tramite Apple CryptoKit. Ogni cassaforte ha una propria chiave master casuale a 256 bit e ogni file riceve una propria chiave derivata con HKDF."
      - q: "Come viene trasformata la mia sequenza in una chiave?"
        a: "Velcrypt elabora la sequenza con PBKDF2-HMAC-SHA512 con almeno 600.000 iterazioni e un salt casuale unico per il tuo dispositivo, conservato nel portachiavi di iOS. La sequenza in sé non viene mai salvata."
      - q: "Velcrypt usa la Protezione dati di iOS?"
        a: "Sì. I file delle casseforti usano la classe di protezione completa, quindi iOS li mantiene cifrati ogni volta che l’iPhone è bloccato, in aggiunta alla cifratura di Velcrypt."
      - q: "Velcrypt si blocca automaticamente?"
        a: "Sì. Si blocca quando l’app passa in background, dopo un ritardo che puoi configurare, e i contenuti delle casseforti sono nascosti nel selettore app."
      - q: "Velcrypt è stato sottoposto a un audit di sicurezza?"
        a: "Finora non c’è stato alcun audit indipendente. Velcrypt usa algoritmi standard e CryptoKit di Apple, e accoglieremmo volentieri una revisione esterna."
      - q: "Da cosa Velcrypt non può proteggerti?"
        a: "Da qualcuno che ti guarda mentre disegni la sequenza, dall’essere costretto a sbloccare, da un telefono consegnato con una cassaforte aperta, da malware su un dispositivo compromesso o con jailbreak, da foto dello schermo e da copie che esistono ancora altrove. La pagina sulla sicurezza elenca tutti questi limiti."
  - title: "Backup e recupero"
    items:
      - q: "Cosa succede se dimentico la sequenza di Velcrypt?"
        a: "La cassaforte non potrà più essere aperta. Velcrypt non salva mai la tua sequenza né le chiavi, quindi né tu né Velcrypt potete recuperarla."
      - q: "La mia cassaforte è inclusa nel backup iCloud?"
        a: "No. Nella prima versione i dati delle casseforti sono esclusi dai backup iCloud, così i file cifrati non lasciano mai il dispositivo."
      - q: "La mia cassaforte è inclusa in un backup del Finder o di iTunes?"
        a: "No. Nella prima versione i dati delle casseforti sono esclusi anche dai backup sul computer."
      - q: "Cosa succede alle mie casseforti se prendo un nuovo iPhone?"
        a: "Nella prima versione le casseforti non si trasferiscono su un nuovo dispositivo. Prima di cambiare telefono esporta ciò che vuoi tenere e conservalo in un posto di cui ti fidi."
      - q: "Velcrypt offrirà un backup cifrato?"
        a: "Un’opzione di backup cifrato è in programma come parte del Premium. Non abbiamo ancora una data e non ne prometteremo una finché non sarà pronta."
      - q: "L’assistenza Velcrypt può reimpostare la mia sequenza?"
        a: "No. L’assistenza non ha accesso alle tue casseforti, sequenze o chiavi, quindi da parte nostra non c’è nulla da reimpostare."
  - title: "Privacy"
    items:
      - q: "Serve un account per usare Velcrypt?"
        a: "No. Non c’è registrazione, indirizzo email né login. Installi l’app e disegni una sequenza."
      - q: "Velcrypt carica le mie foto online?"
        a: "No. Velcrypt non ha server per i tuoi contenuti e i file delle casseforti non lasciano mai il tuo iPhone."
      - q: "Velcrypt raccoglie dati analitici?"
        a: "Velcrypt non raccoglie statistiche sui contenuti delle casseforti. Se nelle impostazioni di iOS hai scelto di condividere le analisi con gli sviluppatori, Apple può condividere con noi dati su arresti anomali e diagnostica."
      - q: "Gli altri possono capire che uso Velcrypt?"
        a: "L’icona dell’app è visibile nella schermata Home, e strumenti forensi potrebbero rilevare che Velcrypt contiene dati cifrati e all’incirca quanti. Velcrypt nasconde il numero di casseforti e il loro contenuto, non la propria esistenza."
      - q: "Velcrypt mostra pubblicità o vende dati?"
        a: "No. Velcrypt non ha pubblicità e non vende dati. Del resto non raccoglie nemmeno i tuoi contenuti."
  - title: "Prezzi e disponibilità"
    items:
      - q: "Velcrypt è gratis?"
        a: "C’è una versione gratuita, più un upgrade Premium facoltativo. I prezzi del Premium saranno annunciati."
      - q: "Cosa includerà il Premium?"
        a: "Il Premium in programma prevede elementi illimitati, più casseforti, la sequenza di emergenza (in arrivo) e un futuro backup cifrato."
      - q: "Dove posso scaricare Velcrypt?"
        a: "Velcrypt è un’app per iPhone distribuita tramite l’App Store. Controlla il pulsante App Store su questo sito per la disponibilità attuale."
      - q: "Chi gestisce i pagamenti?"
        a: "Apple gestisce tutti gli acquisti tramite l’App Store. Velcrypt non vede mai i tuoi dati di pagamento."
  - title: "Compatibilità"
    items:
      - q: "Quale versione di iOS serve per Velcrypt?"
        a: "Velcrypt richiede iOS 17 o successivo su iPhone."
      - q: "Esiste un’app Velcrypt per iPad, Mac o Android?"
        a: "No. Velcrypt è solo un’app per iPhone e non esiste una versione web."
      - q: "Velcrypt si sincronizza tra dispositivi?"
        a: "No. Non c’è sincronizzazione cloud; ogni cassaforte esiste solo sull’iPhone in cui è stata creata."
      - q: "Posso importare documenti dall’app File?"
        a: "Sì. Puoi importare documenti dall’app File in qualsiasi cassaforte, insieme a foto e video."
---

Queste sono le domande più frequenti su Velcrypt, raggruppate per argomento. Ogni risposta è autonoma, quindi puoi andare direttamente alla sezione che ti serve.

Se vuoi il quadro tecnico completo, la pagina sul [modello di sicurezza](id:security) spiega come la tua sequenza diventa una chiave e come vengono cifrati i file, insieme a ciò da cui Velcrypt non può proteggerti. Per sapere cosa include ogni versione, vedi i [prezzi](id:pricing). Se pensi di aver perso l’accesso a una cassaforte, leggi [hai dimenticato la sequenza?](id:forgot-vault-pattern) prima di tentare qualsiasi altra cosa, e ricorda che disegnare una sequenza sconosciuta apre semplicemente una cassaforte nuova e vuota, non un errore.

Non trovi la tua domanda? [Contatta l’assistenza](id:support) e ti aiuteremo per quanto possibile. Possiamo rispondere a domande sul funzionamento dell’app, ma non possiamo mai aprire, reimpostare o recuperare una cassaforte al posto tuo.
