---
pageId: duress-password-explained
title: "Password di emergenza: cos'è e cosa fa un codice antipanico"
description: "Cos'è una password di emergenza o codice antipanico, da dove nasce l'idea, come la usano le app per telefono e come funziona la sequenza di Velcrypt."
h1: "Password di emergenza, codici antipanico e sequenze di emergenza: la spiegazione"
navTitle: "Password di emergenza spiegata"
answer: "Una password di emergenza (o codice antipanico, password di coercizione) è un secondo segreto da usare solo quando qualcuno ti costringe a sbloccare qualcosa. Sembra uno sblocco normale, ma avvia in silenzio un'azione protettiva, come un allarme silenzioso o l'eliminazione di dati sensibili. In Velcrypt la sequenza di emergenza apre una cassaforte esca ed elimina definitivamente tutte le altre casseforti sull'iPhone."
keyFacts:
  - "Una password di emergenza sembra uno sblocco normale, ma avvia un'azione protettiva nascosta."
  - "L'idea nasce dagli impianti d'allarme e dalle banche, dove un codice di coercizione fa scattare un allarme silenzioso."
  - "Sui telefoni, i codici di emergenza di solito aprono contenuti innocui ed eliminano o bloccano il resto."
  - "In Velcrypt la sequenza di emergenza apre una cassaforte esca ed elimina definitivamente tutte le altre."
  - "L'eliminazione è irreversibile: solo un file di backup creato prima riporta indietro i dati."
  - "È uno strumento per la sicurezza personale, mai un modo per distruggere prove o opporsi a ordini legittimi."
primaryKeyword: "password di emergenza"
keywords: ["codice antipanico", "password di coercizione", "cos'è una password di emergenza", "pin di emergenza telefono", "sequenza di emergenza"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Cosa sono le password di emergenza e i codici antipanico, da dove vengono, come li usano le app e come funziona la sequenza di emergenza di Velcrypt."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "Cos'è una password di emergenza?"
    a: "Una password di emergenza è un segreto che usi solo sotto costrizione. Per chi guarda, inserirla sembra uno sblocco normale, ma in background avvia qualcosa di protettivo, come un allarme silenzioso, l'apertura di contenuti esca o l'eliminazione di dati sensibili."
  - q: "Codice antipanico e password di coercizione sono la stessa cosa?"
    a: "Sì, nell'uso comune i termini indicano la stessa cosa. «Codice di coercizione» o «codice antirapina» è frequente negli impianti d'allarme, «password antipanico» o «PIN di emergenza» nelle app e nei dispositivi. Velcrypt usa una sequenza invece di un PIN, quindi chiama la sua versione sequenza di emergenza."
  - q: "Digitare il PIN al contrario al bancomat chiama la polizia?"
    a: "No. La storia del «PIN al contrario» è un mito che circola da anni. Le banche hanno studiato e persino brevettato idee simili, ma in generale i bancomat non funzionano così. Non farci affidamento."
  - q: "Cosa fa la sequenza di emergenza di Velcrypt?"
    a: "Disegnarla nella schermata di blocco apre la cassaforte esca in cui l'hai configurata e, nello stesso momento, elimina in silenzio e definitivamente tutte le altre casseforti su quell'iPhone. Lo sblocco ha lo stesso aspetto e la stessa durata di uno normale."
  - q: "Posso usare una password di emergenza se polizia o autorità di frontiera chiedono l'accesso?"
    a: "Non dovresti usarla per eliminare dati in quella situazione. Le leggi cambiano da Paese a Paese, ed eliminare dati in risposta a una richiesta legittima può essere di per sé un reato, per esempio distruzione di prove o intralcio alla giustizia. Chiedi piuttosto una consulenza legale."
---

Quasi tutta la sicurezza serve a tenere fuori gli estranei. Una password di emergenza riguarda un momento diverso: quando qualcuno è accanto a te e ti costringe a farlo entrare. Questa guida spiega cosa sono le password di emergenza, da dove nasce l'idea, come la usano le app per telefono e come funziona la sequenza di emergenza di Velcrypt, compresi i suoi limiti.

## Cos'è una password di emergenza

Una **password di emergenza** è un secondo segreto che usi solo quando subisci una costrizione. Per la persona che ti osserva, inserirla è identico a uno sblocco normale. Dietro le quinte, però, fa qualcosa in più per proteggere te o i tuoi dati.

Troverai diversi nomi per la stessa idea:

- **Codice di coercizione** o **codice antirapina**, i termini usuali per impianti d'allarme e strutture protette.
- **Password antipanico** o **PIN antipanico**, frequenti nelle app.
- **PIN di emergenza** o **sequenza di emergenza**, a seconda di come si sblocca il dispositivo.

La caratteristica decisiva è che la risposta è **silenziosa**. Se inserire il codice facesse partire una sirena, un messaggio di avviso o un cambiamento visibile, ti metterebbe più a rischio, perché chi ti sta costringendo capirebbe che hai opposto resistenza.

## Da dove nasce l'idea

### Impianti d'allarme

Molte centraline d'allarme per casa e ufficio supportano un codice di coercizione. Lo digiti sul tastierino e l'allarme si disattiva come sempre, così un intruso che ti ha costretto a spegnerlo non nota nulla di strano. Nello stesso momento la centralina avvisa in silenzio la centrale operativa che sei in pericolo.

### Banche e strutture protette

Il personale delle banche dispone da tempo di allarmi silenziosi e segnali di coercizione: un pulsante, una parola in codice o un codice che avvisa la sicurezza senza allarmare il rapinatore. L'obiettivo è lo stesso delle centraline: collaborare in superficie, chiedere aiuto sotto.

Forse hai sentito dire che digitare il PIN del bancomat al contrario chiama la polizia. È un mito. L'idea è stata discussa e persino brevettata, ma in generale i bancomat non funzionano così, quindi non contarci.

### Software di cifratura

Gli strumenti di cifratura del disco hanno aggiunto un'idea affine: una seconda password che apre un volume esterno credibile, mentre un volume nascosto resta fuori vista. In senso stretto non è un codice di emergenza, perché non si attiva nulla, ma condivide l'obiettivo di rendere sicuro il «cedere in parte». [Negabilità plausibile, spiegata](id:plausible-deniability-explained) racconta questa storia.

## Come le app per telefono usano i codici di emergenza

Sui telefoni di solito non c'è una centrale operativa da avvisare, quindi i codici di emergenza proteggono i dati. Gli approcci più comuni sono:

1. **Aprire contenuti innocui.** Il codice di emergenza apre un'esca: un secondo spazio dall'aspetto ordinario. È molto vicino a una [cassaforte esca](id:what-is-a-decoy-vault) e da solo non elimina nulla.
2. **Aprire contenuti innocui ed eliminare il resto.** Il codice di emergenza apre l'esca e, nello stesso momento, cancella i dati sensibili. È la forma più forte e non si può annullare.
3. **Cancellare tutto.** Alcuni sistemi orientati alla sicurezza offrono un PIN di emergenza che cancella l'intero dispositivo o l'app. Protegge i dati, ma rende evidente che è successo qualcosa.

Ciò che distingue una buona implementazione da una scadente riguarda soprattutto **ciò che si può osservare**:

- Lo sblocco ha lo stesso aspetto e la stessa durata di uno normale?
- C'è un'impostazione, un badge o un file che rivela che un codice di emergenza è configurato?
- Dopo, cambia qualcosa sullo schermo?

Se anche una sola di queste risposte tradisce il codice, una situazione già tesa può peggiorare.

## Come funziona la sequenza di emergenza di Velcrypt

Velcrypt si sblocca con una sequenza disegnata su una griglia 5×5 e ogni sequenza apre la propria cassaforte. La sua [sequenza di emergenza](id:duress-pattern) è una funzione Premium costruita su questo modello:

- **La configuri dall'interno di una cassaforte esca**, in Impostazioni → Sequenza di emergenza. Un'esca è una seconda cassaforte con contenuti innocui e credibili. Le casseforti oltre la prima richiedono il Premium.
- **Disegni due volte una sequenza separata e confermi.** Non può essere una sequenza che apre già una cassaforte.
- **Nella schermata di blocco, disegnare la sequenza di emergenza apre l'esca** ed elimina in silenzio e definitivamente tutte le altre casseforti su quell'iPhone.
- **Sullo schermo nulla mostra che è successo.** Lo sblocco ha lo stesso aspetto e la stessa durata di uno normale.
- **L'app non mostra mai se è impostata una sequenza di emergenza.** Nel Portachiavi di iOS esiste sempre un record cifrato di dimensione fissa; quando non c'è una sequenza di emergenza contiene byte casuali.
- **Una per iPhone.** Impostare una nuova sequenza di emergenza sostituisce la precedente. Per disattivarla devi disegnarla, e disattivarla non elimina nulla.
- **Continua a funzionare se il Premium scade.** Solo la configurazione richiede il Premium.

Se la configuri nell'unica cassaforte del telefono, non c'è nient'altro da eliminare, e Velcrypt te lo segnala.

## I limiti, detti con onestà

### L'eliminazione è definitiva

Le casseforti eliminate non si possono recuperare dal telefono. I dati delle casseforti sono esclusi dai backup di iCloud e del computer, quindi l'unico modo per tornare indietro è un file di backup cifrato che hai creato prima in Impostazioni → Backup. Il backup è gratuito, e la sequenza di emergenza non tocca i file di backup conservati fuori dall'app. La [pagina sulla sicurezza](id:security#encrypted-backup) spiega come sono protetti i backup.

### Eliminato non significa cancellato fisicamente

La memoria flash non garantisce che i byte eliminati vengano cancellati fisicamente subito. Velcrypt si basa sul fatto che i dati delle casseforti sono cifrati con AES-256-GCM e che le chiavi vengono eliminate insieme alle cartelle delle casseforti, quindi qualsiasi dato residuo è testo cifrato senza chiave.

### Raggiunge solo le casseforti di Velcrypt

Le copie nella libreria di Foto, in «Eliminati di recente», su iCloud, nelle chat o sul telefono di qualcun altro restano intatte. [Elimina gli originali dopo l'importazione](id:delete-original-photos-after-import).

### Non può annullare ciò che è stato osservato

Se qualcuno ti ha visto o filmato mentre disegnavi la sequenza vera, una sequenza di emergenza non cambia ciò che sa.

## Responsabilità: a cosa non serve una password di emergenza

Una password di emergenza è uno strumento per la sicurezza personale. È pensata per momenti come una rapina, una minaccia o un partner controllante che pretende di vedere il tuo telefono.

**Non** è un modo per distruggere prove o per aggirare una richiesta legittima di polizia, autorità di frontiera o tribunale. Le leggi cambiano da Paese a Paese, ed eliminare dati in risposta a una richiesta legale può essere di per sé un reato, per esempio distruzione di prove o intralcio a un'indagine. Se ti trovi di fronte a una richiesta legale, o te ne aspetti una, chiedi una consulenza legale. La [guida ai controlli di frontiera](id:phone-privacy-border-crossing) tratta in modo specifico i viaggi.

## Ti conviene usarne una?

Una sequenza di emergenza ha senso se riesci a immaginare di essere costretto ad aprire le tue casseforti e preferisci perdere quei file piuttosto che vederli esposti. Ha meno senso se i file sono insostituibili e non hai un backup, o se sotto stress faresti fatica a ricordare quale sequenza fa cosa.

Se decidi di usarne una, parti da un backup, costruisci un'esca credibile e leggi [come configurare una cassaforte esca e una sequenza di emergenza](id:set-up-decoy-vault-and-duress-pattern). Se ci stai pensando a causa di una persona precisa, [cosa fare se qualcuno ti costringe a sbloccare il telefono](id:forced-to-unlock-phone) offre il quadro più ampio sulla sicurezza. I piani Premium sono nella [pagina dei prezzi](id:pricing).
