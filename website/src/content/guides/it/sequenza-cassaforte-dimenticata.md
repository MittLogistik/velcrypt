---
pageId: forgot-vault-pattern
title: "Password o sequenza della cassaforte foto dimenticata?"
description: "Hai dimenticato password o sequenza della cassaforte foto? Cosa provare prima, perché Velcrypt non ha reset, come gestiscono il recupero le altre app."
h1: "Hai dimenticato la password o la sequenza della cassaforte foto? Cosa puoi e non puoi fare"
navTitle: "Sequenza dimenticata"
answer: "In Velcrypt una sequenza dimenticata non si può reimpostare né recuperare, né da te né da Velcrypt, perché la chiave esiste solo nella tua memoria e nessun server ne conserva una copia. Quello che puoi fare è riprovare con calma piccole varianti della sequenza. Altre app cassaforte possono offrire il recupero tramite email o account: controlla quale usa la tua."
keyFacts:
  - "Velcrypt non ha reset, email di recupero né frase di recupero: le chiavi derivano dalla tua sequenza sul dispositivo."
  - "In Velcrypt una sequenza sbagliata apre una cassaforte vuota invece di mostrare un errore, quindi una cassaforte vuota spesso indica una sequenza leggermente diversa."
  - "Nella prima versione i dati della cassaforte sono esclusi dai backup di iCloud e del computer."
  - "È prevista un’opzione di backup / recupero cifrato, senza date promesse."
  - "Se perdere qualcosa sarebbe insopportabile, conservane una copia in un altro posto di cui ti fidi."
primaryKeyword: "password cassaforte foto dimenticata"
keywords: ["sequenza cassaforte dimenticata", "recuperare cassaforte foto", "app cassaforte foto pin dimenticato", "reimpostare sequenza cassaforte", "bloccato fuori dalla cassaforte foto"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Cosa provare prima, perché Velcrypt non può reimpostare una sequenza dimenticata, come gestiscono il recupero le altre app e le abitudini che evitano i blocchi."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "L’assistenza di Velcrypt può reimpostare la mia sequenza?"
    a: "No. Velcrypt non ha account né server, e le tue chiavi derivano dalla sequenza sul tuo iPhone. Il team non ha nulla da reimpostare o da consultare, ed è anche per questo che nessun altro può entrare."
  - q: "La mia cassaforte all’improvviso sembra vuota. I miei dati sono spariti?"
    a: "Probabilmente no. In Velcrypt una sequenza che l’app non ha mai visto apre una nuova cassaforte vuota, quindi una cassaforte vuota di solito significa che hai disegnato una sequenza leggermente diversa. Chiudi l’app e riprova con attenzione, ed evita di aggiungere qualcosa alla cassaforte vuota."
  - q: "Reinstallare Velcrypt mi permette di ricominciare e tenere le foto?"
    a: "No. Eliminare l’app elimina dal dispositivo i suoi dati cifrati. Reinstallarla ti dà un’app pulita, non l’accesso alle vecchie casseforti. Eliminala solo se hai accettato che il contenuto è perso."
  - q: "Come gestiscono un PIN dimenticato le altre app cassaforte per foto?"
    a: "Molte app basate su account ti permettono di reimpostare il PIN via email o tramite un account cloud, il che significa che esiste una via di recupero al di fuori della tua memoria. Consulta le pagine di aiuto della tua app prima che ti serva, e tieni presente che una via di recupero può essere anche un accesso per qualcun altro."
  - q: "Velcrypt aggiungerà un’opzione di recupero?"
    a: "È prevista un’opzione di backup e recupero cifrato, ma non c’è una data di uscita. Finché non esiste, considera la tua sequenza come l’unica chiave."
---

Quella sensazione di vuoto quando la forma che hai disegnato cento volte all’improvviso non funziona è reale. Prima di tutto: non eliminare né reinstallare l’app. La maggior parte delle sequenze «dimenticate» si rivela ricordata leggermente male, e ci sono cose sensate da provare prima.

## Prima prova questo (in Velcrypt)

Velcrypt si comporta in modo diverso dalla maggior parte delle app quando sbagli la sequenza. Non mostra un errore. Qualsiasi sequenza che non ha mai visto apre semplicemente una nuova cassaforte vuota. Quindi, se la tua cassaforte sembra vuota, la spiegazione più probabile è che tu abbia disegnato una sequenza leggermente diversa, non che i dati siano spariti.

Procedi con calma:

1. **Non aggiungere nulla alla cassaforte vuota.** Se ci importi elementi, crei una nuova cassaforte con quella sequenza sbagliata, il che in seguito aggiunge confusione.
2. **Chiudi l’app e ricomincia.** Velcrypt si blocca quando passa in background (dopo il ritardo che hai impostato), e così ritrovi una schermata di sblocco pulita.
3. **Controlla il punto di partenza.** Una sequenza è un ordine di punti, quindi partire dall’altra estremità della stessa forma in genere dà una sequenza diversa.
4. **Controlla punti saltati o in più.** Su una griglia 5×5, una linea dritta può facilmente passare per un punto in più o in meno di quanto volevi.
5. **Pensa a dove ti trovi di solito.** La memoria muscolare è legata alla postura. Prova a disegnare nella posizione in cui sblocchi di solito: con una mano, con due mani, da seduto.
6. **Disegnala su carta.** Traccia la griglia 5×5, riproduci la sequenza a memoria e confronta le varianti. Poi distruggi il foglio.
7. **Fai una pausa.** Sotto stress la memoria funziona peggio. Riprovare più tardi, riposato, spesso funziona.

## Se è davvero persa

Se niente di tutto questo funziona, ecco la risposta onesta: il contenuto non si può recuperare. Né da te, né da Velcrypt, né da nessun altro.

Non è una regola che si possa aggirare. È il modo in cui funziona la crittografia:

- Velcrypt non ha account, email né server. Vedi [offline, senza account](id:offline-no-account).
- Le chiavi delle tue casseforti vengono sbloccate da una chiave derivata dalla tua sequenza sul dispositivo, usando PBKDF2 e un salt conservato nel Portachiavi di iOS. Senza la sequenza, quella chiave non si può ottenere.
- I dati della cassaforte sono cifrati con AES-256-GCM, che non si può violare per forza bruta. La [guida ad AES-256](id:aes-256-encryption-explained) spiega perché.
- Nella prima versione i dati della cassaforte sono esclusi dai backup di iCloud e di Finder/iTunes, quindi non c’è una copia precedente da cui ripristinare.

Le stesse proprietà che rendono privata la tua cassaforte rendono definitiva una sequenza dimenticata. Un sistema con un pulsante «hai dimenticato la sequenza?» conserva per forza una via d’accesso che non dipende solo da te.

### E le altre casseforti?

Poiché ogni sequenza è una cassaforte a sé, dimenticarne una non influisce sulle altre. Se ricordi la sequenza della tua [cassaforte esca](id:what-is-a-decoy-vault), quella si apre normalmente.

## Perché «nessun reset» è un compromesso voluto

I meccanismi di recupero creano sempre una seconda chiave. I reset via email possono essere avviati da chiunque abbia accesso alla tua casella di posta. I backup nel cloud possono essere ripristinati da chiunque entri nell’account. Le domande di sicurezza spesso si indovinano dai social.

Velcrypt ha scelto di non avere una seconda chiave. Questo esclude un’intera categoria di attacchi e significa che non c’è nulla da richiedere per vie legali, far trapelare o rubare con il phishing. Il prezzo è che la responsabilità di ricordare la sequenza è solo tua. Per molte persone il compromesso vale la pena; per alcuni contenuti no. Decidi che tipo di contenuti stai conservando.

## Evitare di restare chiuso fuori

### Scegli una sequenza robusta ma memorabile

Robustezza e memorabilità non sono opposte. Una buona sequenza sulla griglia 5×5:

- usa da 8 a 12 punti e cambia direzione più volte,
- non parte da un angolo e non traccia una lettera,
- ha una logica personale che conosci solo tu, come una forma legata a un luogo o un gesto che ti viene naturale.

Prova una forma simile (non quella vera) con il [verificatore di robustezza della sequenza](id:pattern-strength-checker), e leggi [sequenza vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) per capire cosa rende deboli le sequenze.

### Esercitati

- Apri spesso la cassaforte nelle prime settimane, così il movimento diventa memoria muscolare.
- Evita di cambiare sequenza subito prima di un periodo stressante, come un viaggio.
- Se hai più casseforti, rendi le loro sequenze chiaramente diverse per non confonderle.

### Conserva gli originali quando una perdita farebbe male

Se perdere una foto o un documento sarebbe davvero insopportabile, una cassaforte non dovrebbe essere l’unico posto in cui si trova. Per gli elementi insostituibili, conserva una copia aggiuntiva in un posto di cui ti fidi, come un’unità cifrata in un luogo sicuro. È un compromesso consapevole: ogni copia in più è un posto in più da proteggere.

### Non scrivere la sequenza vicino al telefono

Se proprio devi tenere un promemoria scritto, fai in modo che solo tu possa interpretarlo e tienilo lontano dal dispositivo.

## Se usi un’altra app cassaforte

Il recupero varia molto da un’app all’altra. Prima che ti serva, controlla:

- **C’è un account?** Le app con accesso tramite email spesso permettono di reimpostare il PIN tramite quella email.
- **C’è un backup nel cloud?** Alcune app possono ripristinare i contenuti dopo la reinstallazione se erano sincronizzati sui loro server.
- **C’è un codice di recupero?** Alcune app ne generano uno durante la configurazione. Se non l’hai salvato, non ti aiuterà.
- **Cosa dice la pagina di aiuto?** Cerca le istruzioni ufficiali di recupero dello sviluppatore. Diffida degli strumenti di «sblocco» di terze parti: raramente funzionano e possono essere truffe.

La [guida alle casseforti per foto senza account](id:photo-vault-without-account) spiega i compromessi tra app basate su account e app solo sul dispositivo.

## Dove si inserisce Velcrypt

Velcrypt è per scelta una cassaforte solo sul dispositivo: niente account, niente server, nessuna frase di recupero, nessuna copia delle tue chiavi altrove. È prevista un’opzione di backup e recupero cifrato come parte di un upgrade Premium facoltativo, senza una data promessa. Se hai dubbi, l’[assistenza](id:support) può spiegarti come si comporta l’app, ma nessuno lì può aprire una cassaforte al posto tuo.
