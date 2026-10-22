---
pageId: set-up-decoy-vault-and-duress-pattern
title: "Come configurare cassaforte esca e sequenza di emergenza"
description: "Passo per passo: backup della cassaforte vera, un'esca credibile e la sequenza di emergenza in Velcrypt, più come provarla, cambiarla e disattivarla."
h1: "Come configurare una cassaforte esca e una sequenza di emergenza in Velcrypt"
navTitle: "Configurare esca e sequenza di emergenza"
answer: "Prima fai il backup della cassaforte vera in Impostazioni → Backup. Poi, con il Premium, disegna una nuova sequenza per creare una cassaforte esca e riempila di contenuti innocui. Dall'interno dell'esca apri Impostazioni → Sequenza di emergenza, disegna due volte una sequenza separata e conferma. Disegnare quella sequenza nella schermata di blocco aprirà l'esca ed eliminerà definitivamente tutte le altre casseforti."
keyFacts:
  - "Parti da un backup cifrato della cassaforte vera: è l'unico modo per tornare indietro dopo l'uso della sequenza di emergenza."
  - "Una cassaforte esca è una seconda sequenza con contenuti innocui e credibili; richiede il Premium."
  - "Configura la sequenza di emergenza dall'interno dell'esca, in Impostazioni → Sequenza di emergenza."
  - "La sequenza di emergenza deve essere nuova: non può essere una sequenza che apre una cassaforte."
  - "Non provarla mai nella schermata di blocco; ripassala invece a mente."
  - "Una sola sequenza di emergenza per iPhone; una nuova sostituisce la precedente e disattivarla non elimina nulla."
primaryKeyword: "come configurare una cassaforte esca"
keywords: ["configurare sequenza di emergenza", "velcrypt sequenza di emergenza configurazione", "cassaforte esca iphone", "creare cassaforte esca", "sequenza di emergenza come si usa"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Prima il backup, poi un'esca credibile e infine la sequenza di emergenza in Velcrypt, con consigli per esercitarti, cambiarla e disattivarla."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Configurare una cassaforte esca e una sequenza di emergenza in Velcrypt"
  steps:
    - name: "Fai il backup della cassaforte vera"
      text: "Apri la cassaforte vera, vai in Impostazioni → Backup → Esegui il backup di questa cassaforte, scegli una password di backup di almeno 8 caratteri e salva il file .velcrypt fuori dall'app, per esempio su iCloud Drive o su un computer."
    - name: "Crea una cassaforte esca"
      text: "Con il Premium, blocca l'app e disegna una nuova sequenza mai usata. Velcrypt apre per quella sequenza una nuova cassaforte vuota."
    - name: "Rendi credibile l'esca"
      text: "Importa qualche decina di elementi innocui e quotidiani, come scontrini, scansioni di documenti o idee regalo, in un paio di album."
    - name: "Apri Impostazioni → Sequenza di emergenza nell'esca"
      text: "Con la cassaforte esca aperta, vai in Impostazioni → Sequenza di emergenza e tocca Configura sequenza di emergenza."
    - name: "Disegna due volte la sequenza di emergenza e conferma"
      text: "Disegna una sequenza separata che non apre nessuna cassaforte, disegnala di nuovo per confermarla, poi leggi l'avviso e tocca Attiva."
    - name: "Esercitati senza attivarla"
      text: "Ripassa la sequenza di emergenza a mente o su un foglio che distruggi subito dopo, mai nella schermata di blocco."
faq:
  - q: "Serve il Premium per configurare una cassaforte esca e una sequenza di emergenza?"
    a: "Sì. La versione gratuita ha una sola cassaforte e un'esca è una seconda cassaforte. Anche la sequenza di emergenza fa parte del Premium. Una volta configurata, continua a funzionare anche se il Premium scade."
  - q: "Perché devo fare prima un backup?"
    a: "Perché la sequenza di emergenza elimina definitivamente tutte le casseforti tranne l'esca, e i dati delle casseforti non sono nei backup di iCloud o del computer. Un file di backup cifrato salvato fuori dall'app è l'unico modo per recuperare una cassaforte eliminata."
  - q: "Posso provare la sequenza di emergenza?"
    a: "Non nella schermata di blocco: disegnarla lì elimina davvero le altre casseforti. Ripassala invece a mente. Puoi verificare di ricordarla in Impostazioni → Sequenza di emergenza → Disattiva sequenza di emergenza, ma disegnarla lì la disattiva, quindi dovresti configurarla di nuovo."
  - q: "Posso avere più di una sequenza di emergenza?"
    a: "No. C'è una sola sequenza di emergenza per iPhone. Configurarne una nuova, da qualsiasi cassaforte esca, sostituisce la precedente."
  - q: "Come recupero la cassaforte vera dopo che è stata usata la sequenza di emergenza?"
    a: "Disegna la tua sequenza vera, che ora apre una nuova cassaforte vuota. Poi vai in Impostazioni → Backup → Ripristina da backup, scegli il file .velcrypt e inserisci la sua password di backup."
---

Questa guida ti accompagna nella configurazione completa in Velcrypt: un backup della cassaforte vera, una cassaforte esca credibile (nell'app la trovi anche come «cassaforte civetta») e una [sequenza di emergenza](id:duress-pattern) che apre l'esca ed elimina in silenzio tutte le altre casseforti sull'iPhone. Ci vogliono circa 15 minuti, quasi tutti spesi per rendere l'esca realistica.

Prima di iniziare, un breve promemoria su cosa fa la sequenza di emergenza. Quando qualcuno la disegna nella schermata di blocco, Velcrypt apre la cassaforte esca e, nello stesso momento, **elimina definitivamente tutte le altre casseforti su quell'iPhone**. Lo sblocco ha lo stesso aspetto e la stessa durata di uno normale, e sullo schermo nulla mostra cosa è successo. È proprio questo lo scopo, ed è anche il motivo per cui il primo passo è un backup.

## Cosa ti serve

- **Velcrypt Premium.** La versione gratuita ha una cassaforte con fino a 50 elementi. Un'esca è una seconda cassaforte, e la sequenza di emergenza è una funzione Premium. Vedi i [prezzi](id:pricing).
- **Un posto sicuro per un file di backup**, fuori dall'app: iCloud Drive, File su un altro dispositivo o un computer.
- **Tre sequenze che sai distinguere:** quella vera, quella dell'esca e la sequenza di emergenza.

## Passo 1: fai il backup della cassaforte vera

I dati delle casseforti non sono inclusi nei backup di iCloud o del computer. Se la sequenza di emergenza viene usata, l'unico modo per recuperare la cassaforte vera è un file di backup cifrato creato in precedenza.

1. Disegna la tua sequenza vera per aprire la cassaforte vera.
2. Vai in **Impostazioni → Backup → Esegui il backup di questa cassaforte**.
3. Scegli una password di backup di almeno 8 caratteri, inseriscila due volte e tocca **Crea backup**.
4. Tocca **Salva backup…** e salva il file .velcrypt in un posto diverso da questo iPhone.

Alcune cose da sapere:

- **Il backup è gratuito** e riguarda la cassaforte aperta. Se hai più casseforti private, fai il backup di ciascuna.
- **La sequenza di emergenza non tocca i file di backup** conservati fuori dall'app.
- **Custodisci bene la password del backup.** Una password di backup dimenticata non si può recuperare, né da te né da Velcrypt.
- **Pensa a chi può raggiungere il file.** Se la persona che ti preoccupa può aprire il tuo iCloud Drive o il tuo computer, scegli un altro posto. Il file è cifrato, ma la sua esistenza mostra che c'è una cassaforte da ripristinare.

Ripeti il backup di tanto in tanto, perché contiene solo ciò che c'era nella cassaforte quando l'hai creato.

## Passo 2: crea la cassaforte esca

In Velcrypt ogni sequenza è una cassaforte a sé, e una sequenza che l'app non ha mai visto apre una nuova cassaforte vuota. Creare un'esca, quindi, significa solo disegnare una nuova sequenza.

1. Blocca l'app.
2. Disegna una nuova sequenza: una linea continua che passa per almeno 6 punti della griglia 5×5, con almeno un cambio di direzione. Rendila chiaramente diversa da quella vera per forma e punto di partenza.
3. Velcrypt apre una nuova cassaforte vuota. Quella è la tua esca.

La pagina sullo [sblocco con sequenza](id:pattern-lock) spiega cosa rende robusta una sequenza, e il [verificatore di robustezza della sequenza](id:pattern-strength-checker) gratuito ti aiuta a confrontare le idee. Non provare mai le tue sequenze vere su un sito web.

## Passo 3: rendi credibile l'esca

Una cassaforte vuota è sospetta. Un'esca funziona quando qualcuno la guarda e pensa: «Ah, è solo questo».

- **Dalle un motivo per esistere:** copie di documenti d'identità e tessere assicurative, scontrini e garanzie, screenshot di prenotazioni, idee regalo.
- **Importa qualche decina di elementi veri** in un paio di album.
- **Tienila aggiornata.** Aggiungi qualcosa ogni poche settimane, così l'elemento più recente non è vecchio di mesi.

Velcrypt ti chiede inoltre di aggiungere qualcosa prima che una cassaforte possa avere una sequenza di emergenza, perché la sequenza di emergenza apre proprio questa cassaforte. [Cos'è una cassaforte esca?](id:what-is-a-decoy-vault) offre altre idee e spiega cosa tradisce un'esca.

## Passo 4: configura la sequenza di emergenza

Fallo dall'interno della cassaforte esca. La sequenza di emergenza apre sempre la cassaforte in cui è stata configurata.

1. Con la cassaforte esca aperta, vai in **Impostazioni → Sequenza di emergenza**.
2. Leggi le tre brevi spiegazioni, poi tocca **Configura sequenza di emergenza**.
3. **Disegna una sequenza di emergenza.** Deve essere una sequenza nuova che non apre nessuna cassaforte; se ne apre una, Velcrypt ti chiede di sceglierne un'altra.
4. **Disegnala di nuovo per confermarla.**
5. Leggi l'avviso, «Tracciarla nella schermata di blocco apre questa cassaforte ed elimina definitivamente tutte le altre casseforti su questo iPhone», e tocca **Attiva**.

Se l'esca è l'unica cassaforte sull'iPhone, Velcrypt ti avvisa che la sequenza di emergenza non eliminerebbe nulla. Prima crea l'esca con una sequenza diversa da quella della cassaforte vera.

### Scegliere la sequenza di emergenza

- Rendila **facile da disegnare sotto stress**, in modo fluido e senza esitazioni.
- Rendila **impossibile da confondere con la sequenza vera**. Disegnare per sbaglio la sequenza di emergenza elimina la tua cassaforte vera.
- Valuta di renderla **simile per impegno** a quella vera, così disegnarla non sembra diverso a chi ti osserva.

## Passo 5: esercitati, senza attivarla

Non provare mai la sequenza di emergenza nella schermata di blocco. Non sarebbe una prova: eliminerebbe davvero le altre casseforti.

Ripassala invece a mente, tracciala con il dito su una superficie o disegnala su un foglio che distruggi subito dopo. Esercitati finché riesci a disegnare sia l'esca sia la sequenza di emergenza senza pensarci, anche sotto lo sguardo di qualcuno.

## Vivere con una sequenza di emergenza

- **Nulla mostra che è impostata.** Velcrypt non indica mai se esiste una sequenza di emergenza. Dietro le quinte, nel Portachiavi di iOS esiste sempre un record cifrato di dimensione fissa, con byte casuali quando non ne è impostata nessuna.
- **Una per iPhone.** Configurare una nuova sequenza di emergenza sostituisce la precedente.
- **Per disattivarla:** vai in **Impostazioni → Sequenza di emergenza → Disattiva sequenza di emergenza** e disegnala. Disegnarla lì la disattiva soltanto: non viene eliminato nulla.
- **Se il Premium scade,** la sequenza di emergenza continua a funzionare. Solo la configurazione richiede il Premium.

## Se la sequenza di emergenza viene usata

Le altre casseforti sono sparite da quell'iPhone. Per ripristinarne una:

1. Disegna la tua sequenza vera. Ora apre una nuova cassaforte vuota.
2. Vai in **Impostazioni → Backup → Ripristina da backup**.
3. Scegli il file .velcrypt e inserisci la sua password di backup.

Fallo solo quando è sicuro. Se la persona che ti ha costretto a sbloccare il telefono è ancora nei paraggi, ripristinare subito la cassaforte potrebbe vanificare il motivo per cui hai usato la sequenza di emergenza.

## Limiti da tenere a mente

- **Le copie fuori da Velcrypt restano.** Dopo l'importazione elimina gli originali da Foto e da «Eliminati di recente»; vedi [eliminare gli originali dopo l'importazione](id:delete-original-photos-after-import).
- **La memoria flash non garantisce la cancellazione fisica.** I dati delle casseforti sono cifrati con AES-256-GCM e le chiavi vengono eliminate insieme alle cartelle delle casseforti, quindi i dati residui sono illeggibili.
- **Non ferma chi ti ha visto disegnare la sequenza vera.**
- **È uno strumento per la sicurezza personale.** Non usarla mai per distruggere prove o per opporti a una richiesta legittima di polizia, autorità di frontiera o tribunale. Le leggi cambiano da Paese a Paese, ed eliminare dati di fronte a una richiesta legale può essere di per sé un reato; se ti riguarda, chiedi una consulenza legale.

Se la stai configurando a causa di una persona precisa, [cosa fare se qualcuno ti costringe a sbloccare il telefono](id:forced-to-unlock-phone) offre il quadro più ampio sulla sicurezza. Se temi di dimenticare una sequenza, leggi prima [hai dimenticato la sequenza della cassaforte](id:forgot-vault-pattern).
