---
pageId: advanced-data-protection-uk
title: "Protezione avanzata dei dati nel Regno Unito (2026)"
description: "Perché Apple ha ritirato la Protezione avanzata dei dati nel Regno Unito, cosa resta cifrato end-to-end e come tenere le tue foto fuori da iCloud."
h1: "Protezione avanzata dei dati nel Regno Unito: cosa è successo e cosa resta"
navTitle: "Protezione avanzata nel Regno Unito"
answer: "A ottobre 2026 Apple non offre ancora la Protezione avanzata dei dati ai nuovi utenti del Regno Unito. L’ha ritirata a febbraio 2025, dopo un ordine del governo basato sull’Investigatory Powers Act. Restano cifrate end-to-end 15 categorie come portachiavi e Salute, ma Foto, backup e iCloud Drive usano la protezione standard, con le chiavi in mano ad Apple."
keyFacts:
  - "Apple ha smesso di offrire la Protezione avanzata dei dati (ADP) ai nuovi utenti britannici il 21 febbraio 2025 e a ottobre 2026 non l’aveva ripristinata."
  - "Il ritiro è seguito a una presunta Technical Capability Notice del ministero dell’Interno britannico ai sensi dell’Investigatory Powers Act 2016."
  - "Nel Regno Unito Foto, Backup iCloud, iCloud Drive, Note e altre sei categorie non sono cifrate end-to-end."
  - "15 categorie, tra cui portachiavi iCloud, Salute e Messaggi su iCloud (con Backup iCloud disattivato), restano cifrate end-to-end, come iMessage e FaceTime."
  - "Il ricorso di Apple all’Investigatory Powers Tribunal è ancora aperto; un’udienza completa sul suo caso non è attesa prima del 2027."
primaryKeyword: "protezione avanzata dei dati regno unito"
keywords:
  - "advanced data protection uk"
  - "apple adp regno unito"
  - "icloud adp"
  - "crittografia icloud regno unito"
  - "apple backdoor regno unito"
  - "protezione avanzata dei dati non disponibile"
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Perché l’ADP è sparita nel Regno Unito, cosa resta cifrato end-to-end, a che punto è la causa e come tenere le foto fuori da iCloud."
category: apple
order: 63
related:
  - icloud-advanced-data-protection-explained
  - icloud-access-data-on-web
  - are-hidden-photos-saved-to-icloud
  - delete-original-photos-after-import
  - offline-no-account
  - encryption
faq:
  - q: "La Protezione avanzata dei dati è disponibile nel Regno Unito adesso?"
    a: "No. A ottobre 2026 l’articolo di supporto di Apple dice ancora che non può più offrire la Protezione avanzata dei dati ai nuovi utenti nel Regno Unito. Apple spera di offrirla di nuovo in futuro, ma non ha indicato date."
  - q: "Cosa succede se ho attivato la Protezione avanzata dei dati nel Regno Unito prima di febbraio 2025?"
    a: "Apple non può disattivarla al posto tuo, perché non ha le tue chiavi. Ha detto che gli utenti britannici che la usano avranno un periodo di tempo per disattivarla da soli e continuare a usare iCloud, e che fornirà ulteriori indicazioni. L’articolo di supporto non indica scadenze."
  - q: "Le mie foto su iCloud sono cifrate end-to-end nel Regno Unito?"
    a: "Solo se avevi già attivato l’ADP. Per i nuovi utenti britannici, Foto di iCloud usa la protezione dei dati standard: le foto sono cifrate, ma Apple ha le chiavi e potrebbe decifrarle, per esempio se obbligata per legge."
  - q: "iMessage e FaceTime sono ancora cifrati end-to-end nel Regno Unito?"
    a: "Sì. Apple afferma che iMessage e FaceTime restano cifrati end-to-end in tutto il mondo, Regno Unito compreso. Attenzione però: se Backup iCloud è attivo, il backup contiene una copia della chiave di Messaggi su iCloud."
  - q: "Come tengo le foto private fuori da iCloud nel Regno Unito?"
    a: "Disattiva la sincronizzazione di Foto di iCloud sull’iPhone, escludi Foto dal Backup iCloud o disattiva il backup ed evita gli album condivisi. Per i file più sensibili, una cassaforte cifrata sul dispositivo li tiene del tutto fuori da iCloud."
---

*Situazione verificata il 31 ottobre 2026. La vicenda evolve con le decisioni dei tribunali e del governo, quindi controlla l’[articolo di Apple sul Regno Unito](https://support.apple.com/it-it/122234) per la posizione più recente. Questa guida spiega la situazione tecnica e non costituisce consulenza legale.*

La Protezione avanzata dei dati è l’impostazione facoltativa di Apple che cifra end-to-end la maggior parte dei tuoi dati iCloud. In quasi tutto il mondo si attiva in un minuto. Nel Regno Unito no, e cercando “advanced data protection uk” trovi un misto di vecchi titoli e voci di corridoio. Ecco cosa è confermato, cosa è ancora aperto e cosa puoi fare oggi per le tue foto.

## Cosa è successo nel Regno Unito

In breve: il governo britannico ha usato la sua legge sulla sorveglianza per chiedere l’accesso ai dati iCloud cifrati, e Apple ha preferito ritirare la funzione piuttosto che costruire quell’accesso.

- **Gennaio 2025:** secondo quanto rivelato per primo dal Washington Post, il ministero dell’Interno (Home Office) avrebbe notificato ad Apple una **Technical Capability Notice** (TCN) ai sensi dell’Investigatory Powers Act 2016. Chiedeva la capacità di accedere ai contenuti iCloud cifrati end-to-end e avrebbe riguardato utenti di tutto il mondo, non solo britannici. La legge vieta alle aziende di confermare questi ordini, quindi né Apple né il governo l’hanno riconosciuto ufficialmente.
- **21 febbraio 2025:** Apple ha smesso di offrire la Protezione avanzata dei dati ai nuovi utenti del Regno Unito. Nella sua dichiarazione si è detta “profondamente delusa” e ha ribadito di non aver “mai” costruito una backdoor o una chiave master per i suoi prodotti, e che non lo farà mai.
- **Primavera 2025:** Apple ha impugnato l’ordine davanti all’**Investigatory Powers Tribunal**, il tribunale che esamina i reclami sui poteri di sorveglianza britannici. Ad aprile 2025 il tribunale ha respinto la richiesta del governo di tenere segreti persino i fatti essenziali del caso.
- **Agosto 2025:** la direttrice dell’intelligence nazionale statunitense, Tulsi Gabbard, ha dichiarato che il Regno Unito aveva accettato di ritirare la richiesta. L’Home Office non ha né confermato né smentito.
- **Ottobre 2025:** il Financial Times ha riferito di un nuovo ordine, più circoscritto, limitato ai dati degli utenti britannici. Apple non ha ripristinato l’ADP.
- **2026:** il primo ricorso di Apple si sarebbe chiuso perché l’ordine originale era stato sostituito, e Apple ne ha presentato uno nuovo contro il nuovo ordine. <!-- TODO verify --> In un’udienza del 17 settembre 2026 il tribunale ha ascoltato argomentazioni sulla possibilità per il governo di continuare a non confermare né smentire l’esistenza dell’ordine. Un ricorso separato di Privacy International e Liberty è fissato per dicembre 2026, e Reuters ha riferito che un’udienza completa sul caso di Apple è improbabile prima del 2027.

A fine ottobre 2026 il tribunale non si era pronunciato nel merito di nessuno dei due casi e Apple non aveva ripristinato l’ADP nel Regno Unito.

## L’ADP è tornata nel Regno Unito?

No. L’articolo di supporto di Apple “Apple non può più offrire la protezione avanzata dei dati nel Regno Unito ai nuovi utenti” era ancora online e invariato a fine ottobre 2026. Vi si legge che la funzione resta disponibile nel resto del mondo. Con un account Apple britannico, se cerchi **Protezione avanzata dei dati** in Impostazioni › [il tuo nome] › iCloud, non potrai attivarla.

Diffida degli articoli secondo cui l’ADP sarebbe “tornata” nel Regno Unito. L’annuncio di agosto 2025 riguardava la rinuncia ai dati degli utenti statunitensi, non il ritorno della funzione per i britannici.

## E chi aveva già attivato l’ADP?

È la parte con meno dettagli pubblici. Poiché l’ADP cifra end-to-end, Apple dice di non poterla disattivare al posto tuo. L’articolo indica che agli utenti britannici che l’avevano già attivata “verrà dato un periodo di tempo per disabilitare la funzione per continuare a utilizzare il proprio account iCloud” e che Apple “fornirà presto ulteriori indicazioni”.

A ottobre 2026 l’articolo riporta ancora queste parole, senza scadenze. <!-- TODO verify --> Se sei in questo gruppo e vedi un avviso di Apple sull’iPhone, seguilo con attenzione e fai una copia locale di ciò che conta prima di cambiare le impostazioni.

## Cosa resta cifrato end-to-end per gli utenti britannici

Il ritiro dell’ADP non tocca le categorie che Apple cifra end-to-end per impostazione predefinita. Secondo la panoramica sulla sicurezza di iCloud di Apple, queste 15 restano protette per tutti, Regno Unito compreso:

- Password e portachiavi
- Dati di Salute e di Diario
- Dati di Casa
- Messaggi su iCloud (solo con Backup iCloud disattivato, vedi sotto)
- Dati di pagamento e transazioni Apple Card
- Mappe (puntine, guide e cronologia delle ricerche)
- Cronologia di Safari, gruppi di pannelli e pannelli di iCloud
- Tempo di utilizzo, informazioni di Siri, password Wi-Fi, vocabolario appreso della tastiera QuickType, chiavi Bluetooth e Memoji

Anche iMessage e FaceTime restano cifrati end-to-end in tutto il mondo.

C’è una trappola importante: **se Backup iCloud è attivo, il backup contiene una copia della chiave di Messaggi su iCloud.** Senza ADP quel backup ha la protezione standard, quindi i tuoi messaggi sono privati solo quanto il backup.

## Cosa non è cifrato end-to-end senza ADP

Ecco le 10 categorie che l’ADP avrebbe protetto e che i nuovi utenti britannici mantengono con la protezione dei dati standard:

| Categoria | Utente britannico senza ADP |
| --- | --- |
| Foto (compresi Nascosti ed Eliminati di recente) | Cifrate, le chiavi le ha Apple |
| Backup iCloud (backup del dispositivo e di Messaggi) | Cifrato, le chiavi le ha Apple |
| iCloud Drive | Cifrato, le chiavi le ha Apple |
| Note, Promemoria, Memo Vocali | Cifrati, le chiavi le ha Apple |
| Preferiti di Safari, Comandi Rapidi, pass di Wallet, Freeform | Cifrati, le chiavi le ha Apple |

“Le chiavi le ha Apple” non significa che i tuoi dati siano in chiaro. Sono cifrati in transito e sui server di Apple. La differenza è chi può decifrarli: con la protezione standard Apple può farlo, il che permette di recuperare l’account ma rende anche i dati raggiungibili tramite richieste legali. Mail, Contatti e Calendario non sono cifrati end-to-end da nessuna parte, con o senza ADP.

## Come gli utenti britannici possono tenere le foto fuori da un iCloud senza cifratura end-to-end

L’ADP non puoi averla, ma puoi decidere cosa finisce su iCloud. Dal minimo al massimo impegno:

1. **Disattiva Foto di iCloud sull’iPhone.** Vai in Impostazioni › [il tuo nome] › iCloud › Foto e disattiva **Sincronizza questo iPhone** (nelle versioni precedenti **iCloud Foto**). Le nuove foto restano sul dispositivo. Apple avverte che le foto su iCloud vengono eliminate 30 giorni dopo che smetti di usare Foto di iCloud su tutti i dispositivi, quindi scarica prima delle copie.
2. **Togli le foto dal Backup iCloud.** Se Foto di iCloud è disattivato e Backup iCloud attivo, la tua libreria finisce nel backup. In Impostazioni › [il tuo nome] › iCloud › Backup iCloud puoi disattivare il backup o escludere Foto, se la tua versione di iOS lo consente. La nostra guida su [se le foto nascoste vengono salvate su iCloud](id:are-hidden-photos-saved-to-icloud) spiega come interagiscono le due cose.
3. **Fai invece il backup su un computer, cifrato.** Un backup con il Finder o l’app Dispositivi Apple sul tuo computer resta fuori da iCloud. Seleziona **Codifica backup locale** per proteggerlo con una password scelta da te.
4. **Non usare album condivisi per nulla di sensibile.** Non sono cifrati end-to-end nemmeno dove l’ADP esiste.
5. **Chiudi la porta del web.** Disattivare l’[accesso ai dati di iCloud sul web](id:icloud-access-data-on-web) non aggiunge cifratura, ma impedisce a iCloud.com di mostrare i tuoi dati in un browser.
6. **Usa una cassaforte cifrata sul dispositivo per i file più privati.**

## Dove si colloca una cassaforte sul dispositivo

Senza ADP, il modo più affidabile per tenere una foto lontana dai server di Apple è non caricarla. Una cassaforte sul dispositivo cifra i file sull’iPhone, con chiavi che non lo lasciano mai.

Velcrypt funziona così. Foto, video e documenti importati vengono cifrati con AES-256-GCM, con chiavi derivate da una sequenza 5×5 che disegni ([come funziona la crittografia](id:encryption)). Non ci sono account né server, e il contenuto della cassaforte è escluso dai backup di iCloud e del computer ([sul dispositivo, senza account](id:offline-no-account)). Ogni sequenza apre la propria cassaforte, quindi puoi tenere una cassaforte esca per quando qualcuno insiste perché tu apra l’app.

Dopo l’importazione elimina gli originali dalla libreria e da Eliminati di recente, altrimenti continueranno a sincronizzarsi; vedi [eliminare le foto originali dopo l’importazione](id:delete-original-photos-after-import). Se vuoi una rete di sicurezza, Velcrypt può creare un file di backup cifrato, protetto da una password di backup che scegli tu. Il file viene cifrato prima di lasciare l’app: anche se lo salvi su iCloud Drive con protezione standard, Apple conserva solo testo cifrato.

Il prezzo è lo stesso che chiede l’ADP, ma più rigido: se dimentichi la sequenza o la password del backup, nessuno, nemmeno noi, può recuperare la cassaforte. Per un confronto più completo leggi [la Protezione avanzata dei dati di iCloud, spiegata](id:icloud-advanced-data-protection-explained).
