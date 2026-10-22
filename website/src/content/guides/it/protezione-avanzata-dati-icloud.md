---
pageId: icloud-advanced-data-protection-explained
title: "Protezione avanzata dei dati iCloud spiegata (2026)"
description: "Cosa cifra la Protezione avanzata dei dati di iCloud, cosa esclude, le regole di recupero da accettare e come attivarla passo per passo su iPhone."
h1: "La Protezione avanzata dei dati di iCloud, spiegata"
navTitle: "Protezione avanzata dei dati"
answer: "La Protezione avanzata dei dati è un’impostazione facoltativa di iCloud che cifra end-to-end gran parte dei tuoi dati iCloud, tra cui Foto, backup di iCloud, iCloud Drive e Note, così solo i tuoi dispositivi fidati hanno le chiavi. Mail, Contatti e Calendario restano con la protezione standard, e devi configurare un contatto o una chiave di recupero perché Apple non può più aiutarti a recuperare i dati."
keyFacts:
  - "La Protezione avanzata dei dati (ADP) cifra end-to-end Foto, backup di iCloud, iCloud Drive, Note, Promemoria, Memo Vocali e altre categorie."
  - "Mail di iCloud, Contatti e Calendario non sono cifrati end-to-end, nemmeno con ADP attiva."
  - "Prima di attivare ADP devi configurare un contatto di recupero, una chiave di recupero o entrambi."
  - "Se perdi tutti i dispositivi fidati e i metodi di recupero, Apple non può recuperare i tuoi dati cifrati end-to-end."
  - "Ogni dispositivo collegato al tuo Account Apple deve avere una versione software abbastanza recente per attivare ADP."
  - "Nel 2025 Apple ha smesso di offrire ADP ai nuovi utenti nel Regno Unito; la disponibilità può variare in base al paese."
primaryKeyword: "protezione avanzata dei dati icloud"
keywords:
  - "protezione avanzata dei dati iphone"
  - "cosa cifra la protezione avanzata dei dati"
  - "come attivare la protezione avanzata dei dati"
  - "crittografia end-to-end foto icloud"
  - "chiave di recupero protezione avanzata dei dati"
  - "protezione avanzata dei dati regno unito"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Cosa cifra la Protezione avanzata dei dati, cosa resta standard, i requisiti di recupero, i compromessi e come attivarla."
category: apple
order: 12
related:
  - are-hidden-photos-saved-to-icloud
  - is-iphone-hidden-album-private
  - aes-256-encryption-explained
  - encryption
  - offline-no-account
faq:
  - q: "La Protezione avanzata dei dati cifra le mie foto?"
    a: "Sì. Con la Protezione avanzata dei dati attiva, iCloud Foto, compresi gli album Nascosti ed Eliminati di recente, è cifrata end-to-end, quindi solo i tuoi dispositivi fidati possono decifrarla. Gli album condivisi non sono coperti."
  - q: "Cosa succede se perdo la chiave di recupero con la Protezione avanzata dei dati?"
    a: "Se hai ancora un dispositivo fidato o un contatto di recupero, puoi riottenere l’accesso e creare una nuova chiave. Se perdi la password, ogni dispositivo fidato, il contatto di recupero e la chiave di recupero, Apple non può recuperare i tuoi dati cifrati end-to-end."
  - q: "La Protezione avanzata dei dati è disponibile nel Regno Unito?"
    a: "Nel febbraio 2025 Apple ha smesso di offrire la Protezione avanzata dei dati ai nuovi utenti nel Regno Unito. La situazione ha continuato a cambiare, quindi controlla sul Supporto Apple lo stato attuale nel tuo paese."
  - q: "La Protezione avanzata dei dati cifra Mail di iCloud, Contatti e Calendario?"
    a: "No. Mail di iCloud, Contatti e Calendario restano con la protezione standard anche con la Protezione avanzata dei dati attiva, perché devono funzionare con i sistemi di posta e calendario esterni."
  - q: "Posso disattivare la Protezione avanzata dei dati in seguito?"
    a: "Sì. Puoi disattivarla dalla stessa schermata delle impostazioni di iCloud. L’iPhone carica allora le chiavi di cui Apple ha bisogno e i tuoi dati tornano alla Protezione dati standard."
howTo:
  name: "Attivare la Protezione avanzata dei dati di iCloud su iPhone"
  steps:
    - name: "Aggiorna i dispositivi"
      text: "Aggiorna ogni iPhone, iPad, Mac e altro dispositivo Apple collegato al tuo Account Apple a una versione software attuale, oppure scollega quelli che non puoi aggiornare."
    - name: "Controlla autenticazione a due fattori e codice"
      text: "Assicurati che l’autenticazione a due fattori sia attiva per il tuo Account Apple e che l’iPhone abbia un codice del dispositivo."
    - name: "Apri l’impostazione Protezione avanzata dei dati"
      text: "Vai in Impostazioni, tocca il tuo nome, tocca iCloud, poi scorri fino a Protezione avanzata dei dati."
    - name: "Configura il recupero dell’account"
      text: "Tocca Attiva Protezione avanzata dei dati e segui le istruzioni per aggiungere un contatto di recupero, generare una chiave di recupero o entrambi. Conserva la chiave di recupero in un posto sicuro e offline."
    - name: "Conferma con il codice"
      text: "Inserisci il codice del dispositivo quando richiesto. L’iPhone completa l’attivazione di ADP, che può richiedere un po’ di tempo perché i dati vengono cifrati di nuovo."
---

La maggior parte dei dati iCloud è cifrata, ma di default Apple conserva una copia delle chiavi. È ciò che permette ad Apple di aiutarti se dimentichi la password, ed è anche il motivo per cui Apple potrebbe, in linea di principio, consegnare dati leggibili se obbligata per legge. La Protezione avanzata dei dati cambia questo assetto per la maggior parte dei tuoi dati. Ecco cosa copre, quanto ti costa in comodità e come attivarla.

## Cos’è la Protezione avanzata dei dati

La Protezione avanzata dei dati (ADP, dall’inglese Advanced Data Protection) è un’impostazione di sicurezza facoltativa di iCloud che estende la crittografia end-to-end alla maggior parte delle categorie di dati iCloud. Crittografia end-to-end significa che i dati sono cifrati con chiavi che esistono solo sui tuoi dispositivi fidati; Apple conserva i dati cifrati ma non può decifrarli.

Senza ADP il tuo account usa la **Protezione dati standard**. Alcune categorie delicate, come le password del Portachiavi iCloud e i dati di Salute, sono già cifrate end-to-end con la Protezione dati standard. Altre, tra cui Foto e il backup di iCloud, sono cifrate con chiavi che ha anche Apple.

## Cosa copre ADP e cosa no

Apple pubblica l’elenco esatto sul suo sito di supporto, e ogni tanto cambia. Al momento in cui scriviamo il quadro è questo:

| Dati | Protezione dati standard | Con ADP |
| --- | --- | --- |
| Foto (compresi Nascosti ed Eliminati di recente) | Le chiavi le ha Apple | Cifrate end-to-end |
| Backup di iCloud (compresi i backup di Messaggi) | Le chiavi le ha Apple | Cifrato end-to-end |
| iCloud Drive | Le chiavi le ha Apple | Cifrato end-to-end |
| Note | Le chiavi le ha Apple | Cifrate end-to-end |
| Promemoria, preferiti di Safari, Memo Vocali, pass del Wallet, Comandi Rapidi, Freeform | Le chiavi le ha Apple | Cifrati end-to-end |
| Password/Portachiavi, Salute, Tempo di utilizzo | Cifrati end-to-end | Cifrati end-to-end |
| Mail di iCloud | Standard | Standard |
| Contatti | Standard | Standard |
| Calendario | Standard | Standard |

Mail, Contatti e Calendario restano con la protezione standard perché devono funzionare con i sistemi di posta e calendario esterni all’ecosistema Apple.

Ci sono altre cose da sapere:

- **I contenuti condivisi hanno dei limiti.** Gli album condivisi di Foto non sono coperti, e gli elementi che condividi con «chiunque abbia il link» o su cui collabori con altre persone possono seguire regole diverse. Controlla l’elenco di Apple se fai affidamento sulla condivisione.
- **Alcuni metadati restano leggibili per Apple.** Dati come dimensioni dei file, date e certi checksum servono al funzionamento del servizio e non sono cifrati end-to-end.
- **L’accesso web è disattivato di default.** Con ADP attiva, iCloud.com non può mostrare i tuoi dati a meno che tu non attivi l’opzione per accedere ai dati iCloud sul web, che condivide temporaneamente le chiavi con la sessione del browser.

## Requisiti prima di poterla attivare

ADP ha requisiti più severi della maggior parte delle impostazioni, perché una volta attiva nessun altro può salvare i tuoi dati:

- **L’autenticazione a due fattori** deve essere attiva sul tuo Account Apple.
- **Un codice del dispositivo** (o una password su Mac) deve essere impostato sui tuoi dispositivi.
- **Software aggiornato** su ogni dispositivo collegato al tuo account. Se un vecchio dispositivo non si può aggiornare, dovrai scollegarlo dal tuo Account Apple.
- **Un metodo di recupero.** Devi configurarne almeno uno:
  - un **contatto di recupero**, una persona di fiducia con un dispositivo Apple che può aiutarti a generare un codice di recupero; oppure
  - una **chiave di recupero**, un codice lungo che scrivi e conservi al sicuro.

Alcuni tipi di account, come gli Account Apple gestiti forniti da un’azienda o da una scuola e gli account dei bambini, non possono usare ADP.

## Come attivare la Protezione avanzata dei dati

Su iOS 18 e iOS 26 il percorso è lo stesso. Se nella tua versione una voce appare leggermente diversa, cerca Protezione avanzata dei dati tra le impostazioni di iCloud.

1. Aggiorna tutti i tuoi dispositivi Apple, oppure scollega quelli che non si possono aggiornare.
2. Verifica che l’autenticazione a due fattori sia attiva in Impostazioni › [il tuo nome] › Accesso e sicurezza, e che l’iPhone abbia un codice.
3. Vai in Impostazioni › [il tuo nome] › iCloud e scorri fino a **Protezione avanzata dei dati**.
4. Tocca **Attiva Protezione avanzata dei dati** e segui le istruzioni per aggiungere un contatto di recupero, creare una chiave di recupero o entrambi.
5. Inserisci il codice del dispositivo per confermare. L’iPhone completa l’attivazione di ADP in background.

<!-- TODO verify iOS label -->

Se generi una chiave di recupero, Apple ti chiede di inserirla di nuovo per dimostrare che l’hai salvata. Scrivila su carta e conservala in un posto sicuro; uno screenshot nella libreria foto non è un buon posto.

## I compromessi, con onestà

ADP è un miglioramento significativo, ma sposta la responsabilità su di te.

**Il recupero tocca a te.** Se dimentichi la password dell’Account Apple e perdi l’accesso a ogni dispositivo fidato, Apple non può ripristinare i tuoi dati cifrati end-to-end. Il contatto di recupero o la chiave di recupero sono l’unica via. Se perdi entrambi, i dati sono persi.

**Un po’ di comodità se ne va.** L’accesso web richiede ogni volta un’autorizzazione esplicita, e i dispositivi più vecchi potrebbero dover essere rimossi dal tuo account.

**Protegge iCloud, non il telefono.** ADP cambia il modo in cui i dati sono archiviati sui server di Apple. Non fa nulla contro chi conosce il codice del tuo iPhone e prende in mano il telefono. Il tuo album Nascosti si apre comunque con quello stesso codice, come spieghiamo in [l’album Nascosti è privato?](id:is-iphone-hidden-album-private)

**Non copre le copie altrove.** Una foto che hai inviato in una chat o pubblicato in un album condiviso vive fuori dalla tua libreria protetta da ADP.

## Disponibilità: Regno Unito e altri paesi

Non è garantito che ADP sia disponibile ovunque. Nel febbraio 2025 Apple ha smesso di offrire la Protezione avanzata dei dati ai nuovi utenti nel Regno Unito, in seguito a una richiesta del governo britannico, e ha dichiarato che gli utenti britannici esistenti avrebbero dovuto prima o poi disattivarla. Da allora la situazione ha continuato a evolversi, e altri paesi potrebbero adottare approcci diversi.

Se non vedi l’opzione nelle impostazioni di iCloud, o è in grigio, controlla sul [Supporto Apple](https://support.apple.com/) lo stato attuale nel tuo paese invece di affidarti ad articoli datati.

## Dove si inserisce la crittografia sul dispositivo

La Protezione avanzata dei dati e una cassaforte sul dispositivo risolvono problemi diversi. ADP rende i tuoi dati iCloud illeggibili per Apple, continuando a permetterne la sincronizzazione e il recupero tramite il tuo metodo di recupero. Una cassaforte sul dispositivo impedisce a certi file di andare nel cloud e mette un segreto separato tra loro e chiunque possa sbloccare il tuo telefono.

Velcrypt rientra nella seconda categoria. Foto, video e documenti che importi vengono cifrati con AES-256-GCM sull’iPhone, con chiavi derivate da una sequenza che disegni ([come funziona la crittografia](id:encryption)). Non c’è nessun account e niente viene caricato ([sul dispositivo, senza account](id:offline-no-account)). Nella prima versione i contenuti della cassaforte sono del tutto esclusi dai backup di iCloud e del computer, quindi non c’è nulla da recuperare se perdi il telefono; è prevista un’opzione di backup cifrato.

Molte persone, con buon senso, usano entrambe: ADP per la libreria e i backup di tutti i giorni, e una cassaforte per i pochi file che non devono sincronizzarsi da nessuna parte. Se stai valutando i termini della crittografia, la nostra [guida ad AES-256](id:aes-256-encryption-explained) e [le foto nascoste vengono salvate su iCloud?](id:are-hidden-photos-saved-to-icloud) sono buone letture successive.
