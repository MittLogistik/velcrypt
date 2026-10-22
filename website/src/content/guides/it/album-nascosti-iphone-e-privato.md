---
pageId: is-iphone-hidden-album-private
title: "L’album Nascosti dell’iPhone è privato? Cosa protegge"
description: "L’album Nascosti tiene le foto fuori dalla libreria e si blocca con Face ID, ma il codice lo apre e si sincronizza con iCloud. Ecco cosa significa."
h1: "L’album Nascosti dell’iPhone è davvero privato?"
navTitle: "L’album Nascosti è privato?"
answer: "In parte. L’album Nascosti toglie le foto dalla libreria principale e, da iOS 16 in poi, si blocca con Face ID, Touch ID o codice. Però chiunque conosca il codice del dispositivo può aprirlo, si sincronizza tramite iCloud Foto ed è cifrato end-to-end su iCloud solo se attivi la Protezione avanzata dei dati."
keyFacts:
  - "Nascondere una foto la toglie da griglia della Libreria, album e widget; non la cifra in modo separato sul dispositivo."
  - "Da iOS 16 l’album Nascosti è bloccato di default con Face ID, Touch ID o il codice del dispositivo."
  - "Il codice del dispositivo è sempre un’alternativa, quindi chi lo conosce può aprire l’album Nascosti."
  - "Con iCloud Foto attivo, le foto nascoste si sincronizzano sugli altri dispositivi e su iCloud."
  - "Su iCloud le foto nascoste sono cifrate end-to-end solo con la Protezione avanzata dei dati attiva."
primaryKeyword: "album nascosti iphone è privato"
keywords:
  - "privacy album nascosti iphone"
  - "chi può vedere le foto nascoste su iphone"
  - "album nascosti è bloccato"
  - "album nascosti face id"
  - "qualcuno può vedere le mie foto nascoste"
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Cosa protegge davvero l’album Nascosti, chi può ancora aprirlo e come cambiano le cose con iCloud e la Protezione avanzata dei dati."
category: apple
order: 10
related:
  - are-hidden-photos-saved-to-icloud
  - icloud-advanced-data-protection-explained
  - velcrypt-vs-iphone-hidden-album
  - hide-photos-iphone
  - partner-scrolling-camera-roll
faq:
  - q: "Qualcuno può vedere il mio album Nascosti se conosce il codice dell’iPhone?"
    a: "Sì. Il blocco dell’album Nascosti usa gli stessi Face ID, Touch ID e codice che sbloccano l’iPhone. Se Face ID non riesce o viene annullato, iOS propone il codice, quindi chiunque lo conosca può aprire l’album."
  - q: "Nascondere una foto su iPhone la cifra?"
    a: "Non in modo aggiuntivo. Le foto nascoste sono protette dalla stessa Protezione dati di iOS di ogni altro file sull’iPhone. Nascondere cambia dove compare la foto e aggiunge un passaggio di autenticazione all’album, ma non crea un contenitore cifrato separato."
  - q: "Le foto nascoste sono visibili su Mac o iPad?"
    a: "Se iCloud Foto è attivo, sì. Gli elementi nascosti si sincronizzano su ogni dispositivo collegato allo stesso Account Apple, dove compaiono nell’album Nascosti di quel dispositivo, bloccato anche nelle versioni recenti di macOS e iPadOS."
  - q: "Posso disattivare il blocco con Face ID dell’album Nascosti?"
    a: "Sì. Da iOS 18 vai in Impostazioni › App › Foto; nelle versioni precedenti, Impostazioni › Foto. Disattivare l’opzione Face ID (o Touch ID / codice) lascia l’album Nascosti aperto a chiunque possa sbloccare il telefono, quindi tienila attiva."
  - q: "Le app con accesso alle foto possono vedere le foto nascoste?"
    a: "Nascondere è un’impostazione di visualizzazione dell’app Foto, non un confine di permessi. Non contarci per tenere una foto lontana da un’app con accesso completo alla libreria; dai alle app un accesso limitato o usa il selettore foto di sistema."
---

L’album Nascosti è la prima cosa che quasi tutti provano quando vogliono togliere una foto dalla vista. È davvero utile, ma «nascosto» e «privato» non sono la stessa cosa. Questa guida spiega esattamente cosa fa l’album, dove si ferma la sua protezione e chi può ancora entrarci.

## Cosa fa davvero l’album Nascosti

L’album Nascosti è una raccolta integrata nell’app Foto che contiene gli elementi che hai segnato come nascosti. Quando nascondi una foto o un video, iOS lo toglie dalla griglia principale della Libreria, dagli altri album, dal widget Foto e da funzioni come Ricordi e foto in evidenza. Il file in sé non si sposta da nessuna parte: resta nella stessa libreria foto, semplicemente contrassegnato come nascosto.

Da iOS 16 gli album Nascosti ed Eliminati di recente sono bloccati di default. Aprirli richiede Face ID, Touch ID o il codice del dispositivo. L’album si trova in posti diversi a seconda della versione di iOS:

| Versione di iOS | Dove trovare l’album Nascosti |
| --- | --- |
| iOS 18 e successivi | App Foto, scorri fino a **Utility**, poi **Nascosti** |
| iOS 16 e iOS 17 | Pannello Album, scorri fino a **Utility**, poi **Nascosti** |
| iOS 15 e precedenti | Pannello Album, **Nascosti** (senza blocco) |

<!-- TODO verify iOS label -->

Se non lo vedi affatto, l’album stesso potrebbe essere disattivato. Da iOS 18 cerca l’interruttore **Mostra album Nascosti** in Impostazioni › App › Foto; nelle versioni precedenti si trova in Impostazioni › Foto. Disattivarlo nasconde l’album dall’app Foto, ma le foto restano sul dispositivo. Per la guida completa, vedi [come nascondere le foto su iPhone](id:hide-photos-iphone).

## Dove si ferma la sua protezione

L’album Nascosti fa bene un lavoro: evitare che le foto compaiano quando qualcuno scorre il tuo rullino. Se vuoi qualcosa di più, contano diversi limiti.

### Il codice è sempre un’alternativa

Il blocco dell’album Nascosti è il blocco del dispositivo. Se Face ID non riconosce chi tiene il telefono, iOS propone il codice. Quindi le persone che possono aprire il tuo album Nascosti sono esattamente quelle che conoscono il codice del tuo iPhone: un partner, un familiare o qualcuno che ti ha visto digitarlo. Non esiste una password separata per l’album.

### Non è uno spazio cifrato separato

Ogni file su un iPhone bloccato è protetto dalla Protezione dati di iOS, e le foto nascoste non fanno eccezione. Ma nascondere non aggiunge un altro livello di crittografia con una chiave propria. Una volta sbloccato il telefono e aperto l’album con le credenziali del dispositivo, tutto ciò che contiene è leggibile. Confrontalo con una cassaforte che usa una chiave propria derivata da un segreto che conosci solo tu, come spieghiamo in [la crittografia AES-256 spiegata](id:aes-256-encryption-explained).

### La sua esistenza è evidente

Chiunque apra Foto e scorra fino a Utility vede che esiste un album Nascosti. A meno che tu non abbia disattivato l’album, non nasconde il fatto che stai nascondendo qualcosa, e in certe situazioni questo conta (vedi [la negabilità plausibile spiegata](id:plausible-deniability-explained)).

### I dati biometrici si possono usare senza la tua collaborazione

Face ID e Touch ID sono comodi, ma un volto o un dito possono essere usati mentre dormi, sei trattenuto o semplicemente sotto pressione. Per alcune persone è una considerazione reale, e ne parliamo in [sequenza vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Cosa succede su iCloud

Se iCloud Foto è attivo, le foto nascoste si sincronizzano come ogni altro elemento. Compaiono nell’album Nascosti su iPad e Mac e sono archiviate sui server di Apple. Se Apple possa tecnicamente leggerle dipende dall’impostazione di sicurezza del tuo account:

- **Protezione dati standard** (predefinita): le foto sono cifrate in transito e sui server di Apple, ma Apple custodisce le chiavi. Quindi Apple potrebbe decifrarle, per esempio se obbligata per legge.
- **Protezione avanzata dei dati**: Foto è cifrata end-to-end, quindi solo i tuoi dispositivi fidati hanno le chiavi.

Ne parliamo più nel dettaglio in [le foto nascoste vengono salvate su iCloud?](id:are-hidden-photos-saved-to-icloud) e in [la Protezione avanzata dei dati di iCloud spiegata](id:icloud-advanced-data-protection-explained).

Ricorda anche che iCloud è un account, non un dispositivo. Chiunque acceda al tuo Account Apple su un altro dispositivo, o su iCloud.com dove l’accesso web è consentito, può raggiungere la tua libreria, album Nascosti compreso, con lo stesso comportamento di blocco previsto su quel dispositivo.

## Chi può davvero vedere le tue foto nascoste

Ecco un riepilogo semplice di chi può e chi non può entrare in un album Nascosti:

| Persona o situazione | Può vedere le foto nascoste? |
| --- | --- |
| Qualcuno che scorre per caso il tuo rullino sbloccato | No, gli elementi nascosti non compaiono nella Libreria |
| Qualcuno che conosce il codice del dispositivo | Sì, il codice apre l’album |
| Qualcuno con accesso al tuo Account Apple | Forse, su un dispositivo o una sessione web collegati a quell’account |
| Una persona con cui condividi un piano iCloud In famiglia | No, In famiglia non condivide la tua libreria personale |
| Un partecipante alla Libreria foto condivisa di iCloud | Solo gli elementi che metti nella Libreria condivisa; tieni le foto private nella Libreria personale |
| Apple | Tecnicamente possibile con la Protezione dati standard; non con la Protezione avanzata dei dati attiva |

Se usi la Libreria foto condivisa di iCloud, controlla a quale libreria appartiene una foto prima di nasconderla. La nostra guida alle [configurazioni iCloud condivise in famiglia](id:family-shared-icloud) spiega la differenza.

## Come rendere l’album Nascosti il più privato possibile

Se decidi che l’album Nascosti basta per la tua situazione, alcune impostazioni lo rendono sensibilmente più solido:

1. **Tieni attivo il blocco.** Verifica che l’opzione Face ID / Touch ID / codice per l’album Nascosti sia attiva in Impostazioni › App › Foto (iOS 18+) o Impostazioni › Foto.
2. **Usa un codice del dispositivo robusto.** Sei cifre sono il minimo; un codice alfanumerico più lungo è meglio, e non condividerlo mai.
3. **Attiva la Protezione avanzata dei dati** se è disponibile per te e riesci a gestirne i requisiti di recupero.
4. **Valuta di nascondere l’album stesso** con l’interruttore Mostra album Nascosti.
5. **Pulisci Eliminati di recente** dopo aver spostato le cose, perché gli elementi eliminati restano lì per circa 30 giorni.

## Quando ha più senso una cassaforte separata

L’album Nascosti è pensato per l’ordine e per una privacy leggera, non per situazioni in cui qualcuno vicino a te conosce il tuo codice o potrebbe costringerti a sbloccare il telefono. In quei casi di solito vuoi uno spazio con un segreto proprio e una crittografia propria.

Velcrypt segue questo approccio. Ogni cassaforte si apre con una sequenza disegnata su una griglia 5×5 invece che con Face ID o il codice del dispositivo, e i contenuti sono cifrati con AES-256-GCM usando chiavi derivate da quella sequenza ([come funziona la crittografia](id:encryption)). Ogni sequenza apre una cassaforte propria e una sequenza sconosciuta apre semplicemente una cassaforte vuota, quindi nulla rivela quante casseforti esistono ([casseforti nascoste](id:hidden-vaults)). Tutto resta sul dispositivo, senza account e senza copia nel cloud.

Questo comporta anche compromessi onesti. I contenuti della cassaforte non sono inclusi nei backup di iCloud o del computer: se dimentichi la sequenza non si possono recuperare, e se perdi il telefono li recuperi solo da un backup cifrato creato da te. E importare una foto la copia, quindi devi comunque rimuovere l’originale da Foto e da Eliminati di recente. Per un confronto diretto, leggi [Velcrypt vs album Nascosti dell’iPhone](id:velcrypt-vs-iphone-hidden-album).
