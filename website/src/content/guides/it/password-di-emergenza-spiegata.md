---
pageId: duress-password-explained
title: "Password di emergenza: significato, parole in codice e PIN"
description: "Cosa significa password di emergenza, come funzionano parole in codice e codici antirapina, il mito del PIN al contrario e cosa offrono iPhone e Android."
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
  - "L'iPhone non ha un codice di emergenza integrato e la maggior parte degli Android nemmeno; GrapheneOS offre un PIN di coercizione che cancella il telefono."
primaryKeyword: "password di emergenza"
keywords: ["codice antipanico", "password di coercizione", "cos'è una password di emergenza", "password di coercizione significato", "parola in codice di emergenza", "esempi di parole in codice", "codice antirapina allarme", "pin di coercizione", "pin al contrario bancomat mito", "impronta di coercizione", "codice di emergenza telefono", "pin di coercizione android", "grapheneos duress pin", "pin di emergenza telefono", "sequenza di emergenza"]
datePublished: 2026-10-22
dateModified: 2026-10-31
summary: "Cosa sono password, parole in codice e PIN di emergenza, cosa offrono iPhone e Android e come funziona la sequenza di emergenza di Velcrypt."
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
  - q: "Cos'è una parola in codice di emergenza?"
    a: "È una parola o una frase dall'aria banale, concordata in anticipo, che segnala a qualcuno che sei in difficoltà senza che se ne accorga chi ti sta mettendo sotto pressione. La usano luoghi di lavoro, locali (come l'iniziativa britannica «Ask for Angela») e famiglie, ognuno con una risposta concordata."
  - q: "iPhone o Android hanno un PIN di emergenza integrato?"
    a: "L'iPhone non ha un codice di emergenza. Tenere premuti il tasto laterale e un tasto del volume disattiva solo Face ID finché non si inserisce il codice. Anche la maggior parte degli Android non ce l'ha, anche se la modalità di blocco disattiva la biometria. GrapheneOS offre un PIN di coercizione che cancella l'intero telefono."
  - q: "Cosa fa la sequenza di emergenza di Velcrypt?"
    a: "Disegnarla nella schermata di blocco apre la cassaforte esca in cui l'hai configurata e, nello stesso momento, elimina in silenzio e definitivamente tutte le altre casseforti su quell'iPhone. Lo sblocco ha lo stesso aspetto e la stessa durata di uno normale."
  - q: "Posso usare una password di emergenza se polizia o autorità di frontiera chiedono l'accesso?"
    a: "Non dovresti usarla per eliminare dati in quella situazione. Le leggi cambiano da Paese a Paese, ed eliminare dati in risposta a una richiesta legittima può essere di per sé un reato, per esempio distruzione di prove o intralcio alla giustizia. Chiedi piuttosto una consulenza legale."
---

Quasi tutta la sicurezza serve a tenere fuori gli estranei. Una password di emergenza riguarda un momento diverso: quando qualcuno è accanto a te e ti costringe a farlo entrare. Questa guida spiega cosa sono le password di emergenza, da dove nasce l'idea, come funzionano le parole in codice, cosa offrono iPhone e Android, come la usano le app per telefono e come funziona la sequenza di emergenza di Velcrypt, compresi i suoi limiti.

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

Di solito i codici antirapina degli allarmi funzionano solo con la vigilanza collegata a una centrale, e inserirne uno richiede un vero intervento di emergenza, anche se è solo una prova. Gli installatori e la polizia avvertono inoltre che un codice troppo simile a quello normale causa falsi allarmi, quindi scegline uno che non puoi confondere.

### Banche e strutture protette

Il personale delle banche dispone da tempo di allarmi silenziosi e segnali di coercizione: un pulsante, una parola in codice o un codice che avvisa la sicurezza senza allarmare il rapinatore. L'obiettivo è lo stesso delle centraline: collaborare in superficie, chiedere aiuto sotto.

Forse hai sentito dire che digitare il PIN del bancomat al contrario chiama la polizia. È un mito. L'idea risale a un brevetto degli anni Novanta per un «PIN di emergenza», ma un rapporto del 2010 dello staff della Federal Trade Commission statunitense (FTC) ha rilevato che sistemi del genere non sono mai stati installati sui bancomat, e i fact-checker hanno smentito la catena molte volte. Se vieni rapinato al bancomat, consegna ciò che ti chiedono se questo ti tiene al sicuro, poi chiama la polizia e la tua banca.

### Software di cifratura

Gli strumenti di cifratura del disco hanno aggiunto un'idea affine: una seconda password che apre un volume esterno credibile, mentre un volume nascosto resta fuori vista. In senso stretto non è un codice di emergenza, perché non si attiva nulla, ma condivide l'obiettivo di rendere sicuro il «cedere in parte». [Negabilità plausibile, spiegata](id:plausible-deniability-explained) racconta questa storia.

## Parole in codice di emergenza: la versione parlata

Una **parola in codice di emergenza** è una password di emergenza che si dice invece di digitarla: una parola o una frase dall'aria banale, concordata in anticipo, che significa «non sto bene, ma non posso dirlo». Chi la sente per caso ascolta solo due chiacchiere. Chi conosce il codice sente una richiesta di aiuto, e sa già cosa fare.

Dove si usano:

- **Luoghi di lavoro e servizi di sicurezza.** Banche, negozi, ospedali e addetti alla sicurezza concordano spesso una frase da dire al telefono o via radio davanti a un aggressore, così un collega può chiedere aiuto senza che nessuno se ne accorga.
- **Iniziative di sicurezza pubblica.** Nel Regno Unito molti bar e locali aderiscono a «Ask for Angela»: chi si sente in pericolo durante un appuntamento o una serata chiede al personale di «Angela», e il personale formato interviene con discrezione, per esempio chiamando un taxi. Questo codice è pubblico di proposito, così i locali possono esporre i manifesti. Iniziative simili esistono anche in altri Paesi.
- **Famiglie e amici.** Alcune famiglie concordano una parola che un figlio o un parente può scrivere o dire al telefono per intendere «vieni a prendermi» o «chiedi aiuto» senza dover spiegare. Oggi molte famiglie usano anche una *parola di sicurezza* per verificare che una telefonata disperata arrivi davvero da un parente e non da un truffatore che clona le voci. È più una parola di verifica che un codice di emergenza, ma valgono le stesse regole.

Esempi del *tipo* di frase che funziona (inventane una tua invece di copiarle):

- chiedere di una persona che non esiste, come «Angela lavora stasera?»;
- una domanda su un animale, un parente o una faccenda che chi ascolta sa essere sbagliata;
- un dettaglio insolito in una frase normale, come un colore o un piatto che non nomini mai.

Una buona parola in codice suona naturale nella conversazione in cui la useresti, non salta mai fuori per caso, è legata a una risposta concordata (chi chiama chi e cosa succede dopo) e va ripassata ogni tanto perché nessuno la dimentichi. Tienila riservata: un codice pubblicato online, o noto alla persona di cui hai paura, smette di funzionare.

## PIN di emergenza sul telefono: cosa offrono iPhone e Android

Chi cerca un «codice di emergenza per il telefono», un «PIN di coercizione» o una «impronta di coercizione» di solito vuole sapere se il proprio telefono ne ha uno integrato. La risposta breve: l'iPhone no, e nemmeno la maggior parte degli Android.

### iPhone

- **Nessun codice di emergenza.** iOS non ha un secondo codice che apra un'esca, invii un avviso o cancelli il telefono.
- **SOS emergenze disattiva Face ID.** Tenendo premuti il tasto laterale e uno dei tasti del volume per circa due secondi si apre la schermata di spegnimento e SOS emergenze. <!-- TODO verify iOS label --> Da quel momento Face ID e Touch ID restano disattivati finché non si inserisce il codice, quindi nessuno può sbloccare il telefono avvicinandolo al tuo viso. Tocca Annulla se non vuoi chiamare; a seconda delle impostazioni, tenere premuto più a lungo può avviare una chiamata di emergenza. [Cosa fare se qualcuno ti costringe a sbloccare il telefono](id:forced-to-unlock-phone) lo spiega più nel dettaglio.
- **Inizializza dati non è un codice di emergenza.** L'opzione Inizializza dati in Impostazioni → Face ID e codice <!-- TODO verify iOS label --> cancella l'iPhone dopo 10 tentativi di codice errati. Protegge da chi prova a indovinare, non da chi ti sta accanto e pretende il codice.
- **Le funzioni di emergenza stanno dentro le app.** Poiché iOS non ha un PIN di emergenza a livello di sistema, ogni funzione di emergenza su iPhone appartiene a una singola app e raggiunge solo i suoi dati. La sequenza di emergenza di Velcrypt, più sotto, è un esempio.

### Android

- **Modalità di blocco.** Da Android 9 in poi molti telefoni offrono la modalità di blocco («Lockdown») nel menu di spegnimento; su alcune marche va prima attivata nelle impostazioni. <!-- TODO verify: Android label and Samsung One UI changes --> Blocca il telefono e disattiva lo sblocco con impronta e volto finché non si inseriscono PIN, sequenza o password.
- **Nessun PIN di emergenza nell'Android standard.** Android così come lo forniscono Google, Samsung e gran parte degli altri produttori non ha un PIN di emergenza integrato. <!-- TODO verify -->
- **PIN di coercizione di GrapheneOS.** GrapheneOS, un sistema operativo orientato alla sicurezza per i Google Pixel supportati, ha un PIN e una password di coercizione. Inserirne uno in qualsiasi punto in cui il telefono chiede le credenziali cancella l'intero dispositivo, eSIM comprese, subito e in modo irreversibile. Protegge i dati, ma dopo è evidente che il telefono è stato ripristinato.
- **App di terze parti.** Alcune app Android open source, come Duress e Wasted su F-Droid, controllano se sulla schermata di blocco viene inserita una password di emergenza e poi bloccano o cancellano il telefono, usando i permessi di accessibilità e di amministratore del dispositivo. L'affidabilità dipende dal telefono e dalla versione di Android. <!-- TODO verify -->

### Cosa significa «impronta di coercizione»

Una **impronta di coercizione** è un dito specifico registrato come allarme silenzioso. Alcuni sistemi biometrici di controllo accessi la supportano: scansioni quel dito, la porta si apre come sempre e un allarme di coercizione arriva alla vigilanza. I telefoni comuni non la offrono. <!-- TODO verify --> Su un telefono, sotto costrizione, la biometria è semmai il punto debole, perché qualcuno può avvicinare il telefono al tuo viso o premere il tuo dito sul sensore. Per questo conta saper disattivare Face ID in fretta, ed è per questo che Velcrypt [non ha lo sblocco con Face ID, per scelta](id:pattern-lock-vs-pin-vs-face-id).

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
