---
pageId: plausible-deniability-explained
title: "Negabilità plausibile nella crittografia, spiegata"
description: "Cosa significa negabilità plausibile nella crittografia, come l’hanno introdotta i volumi nascosti, come la applica Velcrypt e quali sono i suoi limiti."
h1: "La negabilità plausibile nella crittografia, spiegata"
navTitle: "Negabilità plausibile spiegata"
answer: "Negabilità plausibile, nella crittografia, significa che anche dopo aver sbloccato qualcosa nessuno può dimostrare se esistano altri dati nascosti. Velcrypt la applica facendo aprire a ogni sequenza una cassaforte propria e mostrando una cassaforte vuota, non un errore, per le sequenze sconosciute. Non nasconde però che sul dispositivo esistano dati cifrati."
keyFacts:
  - "La negabilità plausibile riguarda ciò che si può dimostrare, non il nascondere che esistano un’app o dei dati cifrati."
  - "Gli strumenti di cifratura dei dischi hanno introdotto l’idea con volumi nascosti dentro volumi cifrati ordinari."
  - "In Velcrypt qualsiasi sequenza sconosciuta apre una cassaforte vuota, senza errori e senza un elenco delle casseforti."
  - "Lo spazio occupato e l’analisi forense possono mostrare che esistono dati cifrati, anche se non si possono leggere."
  - "La negabilità protegge da curiosità e pressioni informali; non è uno scudo legale."
primaryKeyword: "negabilità plausibile crittografia"
keywords: ["cos’è la negabilità plausibile", "crittografia negabile", "volume nascosto spiegato", "negabilità plausibile cassaforte foto", "cassaforte negabile iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Il concetto dietro volumi nascosti e casseforti esca, come lo usa Velcrypt con le sequenze sconosciute e cosa, onestamente, non può fare."
category: security
order: 42
related: [what-is-a-decoy-vault, hidden-vaults, duress-pattern, duress-password-explained, self-destruct-photo-vault, aes-256-encryption-explained, phone-privacy-border-crossing, security]
faq:
  - q: "Cosa significa negabilità plausibile in parole semplici?"
    a: "Significa che puoi dire in modo credibile «questo è tutto» e nessuno può dimostrare il contrario. Nella crittografia si ottiene con design in cui i dati nascosti sono indistinguibili dallo spazio vuoto o da dati che non esistono."
  - q: "Velcrypt nasconde che uso un’app cassaforte?"
    a: "No. L’app è visibile nella schermata Home a meno che tu non usi l’opzione di iOS per nascondere le app, e lo spazio che occupa compare nelle Impostazioni dell’iPhone. La negabilità di Velcrypt riguarda quante casseforti esistono e cosa contengono, non se sul dispositivo ci siano dati cifrati."
  - q: "Gli strumenti forensi possono rilevare le casseforti nascoste?"
    a: "Potrebbero riuscire a mostrare che l’app conserva più dati cifrati di quelli giustificati dalla cassaforte aperta. Senza la sequenza giusta i dati restano cifrati con AES-256-GCM, ma per un esperto la loro esistenza potrebbe non essere negabile."
  - q: "La negabilità plausibile è legale?"
    a: "Usare la crittografia è legale nella maggior parte dei paesi, ma le leggi sull’obbligo di rivelare le chiavi e sull’inganno a pubblici ufficiali variano molto. Questa guida non è una consulenza legale; se ti trovi in una situazione legale, parla con un avvocato."
  - q: "Cos’è un volume nascosto?"
    a: "Un volume nascosto è un secondo volume cifrato conservato nello spazio libero di un volume cifrato ordinario. Una password apre il volume esterno, un’altra apre quello nascosto, e i dati nascosti sembrano spazio libero casuale."
---

La crittografia risponde molto bene a una domanda: qualcuno può leggere questo senza la chiave? La negabilità plausibile risponde a una domanda più difficile e più umana: cosa succede quando qualcuno pretende la chiave? Questa guida spiega il concetto, da dove viene, come lo usa Velcrypt e dove smette di funzionare.

## Cosa significa negabilità plausibile

La negabilità plausibile è la proprietà per cui, anche dopo che hai aperto qualcosa sotto pressione, nessuno può dimostrare che stai nascondendo altro. Puoi dire «è tutto qui», e il sistema non dà all’altra persona alcuna prova per contraddirti.

Conta perché una crittografia robusta sposta il punto debole dalla matematica alla persona. Se un file è protetto con AES-256, nessuno violerà l’algoritmo. Ti chiederanno, insisteranno o minacceranno. I design negabili cercano di rendere sicuro il cedere solo in parte.

## Un po’ di storia: i volumi nascosti

L’idea si è diffusa grazie ai software di cifratura dei dischi. Gli strumenti della famiglia TrueCrypt e VeraCrypt hanno introdotto il **volume nascosto**: un secondo contenitore cifrato infilato nello spazio inutilizzato di un normale contenitore cifrato.

Il trucco funziona perché l’output di una buona crittografia sembra rumore casuale, e lo stesso vale per lo spazio libero di un volume cifrato riempito di dati casuali. Una password apre il volume esterno, che contiene file esca credibili. Un’altra password apre il volume nascosto. Senza quella seconda password, la parte nascosta è indistinguibile dallo spazio vuoto.

I ricercatori hanno studiato anche la «crittografia negabile» in modo più formale, in cui lo stesso testo cifrato può essere decifrato in testi in chiaro diversi con chiavi diverse. I volumi nascosti ne sono stati la versione pratica e diffusa.

Negli anni, gli stessi ricercatori e professionisti ne hanno documentato anche i limiti: i sistemi operativi lasciano tracce (elenchi di file recenti, miniature, log), le persone si comportano in modo incoerente, e un avversario che sa che il software supporta i volumi nascosti può semplicemente dare per scontato che ne esista uno.

## Come applica l’idea Velcrypt

Velcrypt adatta il principio a una cassaforte per foto e documenti su iPhone. Non ci sono un volume esterno e uno interno; invece:

- **Ogni sequenza è una cassaforte a sé.** Ogni cassaforte ha una propria chiave master casuale a 256 bit, sbloccata da una chiave derivata da quella sequenza.
- **Non esiste un elenco delle casseforti.** L’app non conserva nulla che enumeri quante casseforti esistono.
- **Le sequenze sconosciute aprono una cassaforte vuota.** Disegna una sequenza che Velcrypt non ha mai visto e ti ritrovi in una nuova cassaforte vuota. Non c’è nessun messaggio di «sequenza errata».

La conseguenza è che una sequenza sbagliata e una cassaforte valida ma vuota sono identiche. Se apri una cassaforte per qualcuno, nell’interfaccia non c’è nulla che mostri l’esistenza di altre casseforti. Questo rende la [cassaforte esca](id:what-is-a-decoy-vault) un uso naturale invece di una modalità speciale. La pagina della funzione [casseforti nascoste](id:hidden-vaults) mostra come funziona in pratica.

La [sequenza di emergenza](id:duress-pattern), disponibile con il Premium, estende questo concetto: una sequenza speciale apre una cassaforte esca ed elimina in silenzio e definitivamente tutte le altre casseforti sull’iPhone. L’app non mostra mai se ne è impostata una, quindi anche la sua esistenza è negabile. [La password di emergenza, spiegata](id:duress-password-explained) mette l’idea nel suo contesto.

## I limiti, con onestà

La negabilità è facile da sopravvalutare. Ecco cosa Velcrypt **non** sostiene.

### Non nasconde l’esistenza dell’app

Velcrypt è nella schermata Home come qualsiasi altra app. Da iOS 18 puoi nascondere le app in una cartella nascosta bloccata con Face ID, ma è una funzione di iOS, e chiunque conosca il codice del dispositivo può comunque guardare. Vedere un’app cassaforte dice agli altri che tieni alla privacy; non dice loro cosa conservi.

### Non nasconde l’esistenza di dati cifrati

Velcrypt non sostiene di nascondere che sul dispositivo siano conservati dati cifrati. I file cifrati occupano spazio, e le Impostazioni dell’iPhone mostrano quanto spazio usa ogni app. Un esame forense di un dispositivo potrebbe mostrare che l’app contiene più dati cifrati della cassaforte che hai aperto. Senza la sequenza non può decifrarli, ma il fatto che «qui c’è dell’altro» potrebbe essere visibile a un esperto.

### Non può annullare le copie altrove

Se una foto esiste ancora nella libreria di Foto, in Eliminati di recente, su iCloud o in una chat, la negabilità della cassaforte è irrilevante. [Rimuovi gli originali](id:delete-original-photos-after-import) dopo l’importazione.

### Non può impedire l’osservazione

Se qualcuno ti ha visto disegnare la sequenza vera, o ha filmato lo schermo, la negabilità è persa. Disegna in privato e copri lo schermo.

### Non è una strategia legale

In alcuni paesi, rifiutarsi di rivelare le chiavi o ingannare un pubblico ufficiale può comportare sanzioni. La negabilità è utile soprattutto contro pressioni informali: un partner geloso, un ladro, un parente impiccione. Per tutto ciò che coinvolge le autorità, leggi la [guida ai controlli alla frontiera](id:phone-privacy-border-crossing) e chiedi una vera consulenza legale.

## Negabilità e segretezza: due promesse diverse

Aiuta separare le due idee, perché il marketing spesso le confonde.

| | Segretezza (crittografia) | Negabilità |
|---|---|---|
| La domanda a cui risponde | Qualcuno può leggere questo senza la chiave? | Qualcuno può dimostrare che esiste più di ciò che hai mostrato? |
| Su cosa si basa | Matematica e gestione delle chiavi | Design indistinguibile e comportamento credibile |
| Quanto è forte | Molto forte con AES-256 e una buona derivazione della chiave | Dipende dalla situazione, da chi osserva e dal contesto |
| Cosa la fa crollare | Segreti deboli, chiavi trapelate, copie altrove | Spazio occupato, tracce forensi, esitazioni, osservazione |

La crittografia mantiene illeggibili i tuoi contenuti in quasi ogni scenario. La negabilità è uno strato più morbido e sociale sopra di essa: preziosa sul momento, ma mai qualcosa su cui puntare tutto.

## Rendere credibile la negabilità

La tecnologia fornisce la possibilità; il tuo comportamento fornisce la plausibilità.

1. **Tieni vissuta la cassaforte che apriresti.** Album veri, elementi recenti, uno scopo credibile.
2. **Fai combaciare la storia con lo spazio occupato.** Un’esca con una manciata di documenti stona accanto a molti gigabyte occupati dall’app.
3. **Non esitare.** Esercitati con la sequenza che apriresti finché non diventa automatica.
4. **Evita le tracce.** Non dare altrove agli album nomi che richiamano ciò che nascondi, e non lasciare originali in altre app.

## Dove si inserisce Velcrypt

Velcrypt unisce una struttura negabile a una crittografia robusta: AES-256-GCM tramite Apple CryptoKit, chiavi derivate dalla tua sequenza con PBKDF2-HMAC-SHA512 (almeno 600.000 iterazioni) e chiavi per singolo file derivate con HKDF. Tutto resta sul dispositivo, senza account e senza server che possano rivelare quante casseforti hai. La [pagina sulla crittografia](id:encryption) contiene i dettagli, e la [panoramica sulla sicurezza](id:security) elenca le minacce che non è progettata per fermare.
