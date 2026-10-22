---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Sequenza di sblocco, PIN o Face ID: cosa è più sicuro?"
description: "Sequenza, PIN, password o Face ID? Confronta combinazioni, sguardi indiscreti, ditate e sblocco forzato per scegliere il blocco giusto per i dati privati."
h1: "Sequenza di sblocco, PIN, password o Face ID: cosa è più sicuro?"
navTitle: "Sequenza vs PIN vs Face ID"
answer: "Nessun blocco vince su tutti i fronti. Una password lunga e casuale resiste meglio ai tentativi; Face ID e Touch ID resistono meglio agli sguardi indiscreti ma possono essere usati senza il tuo consenso; un PIN a 6 cifre batte uno a 4 cifre di un fattore 100; e una sequenza è forte quanto la forma che una persona sceglie davvero: le sequenze lunghe e irregolari vanno bene, lettere semplici e angoli no."
keyFacts:
  - "Un PIN a 4 cifre ha 10.000 combinazioni; uno a 6 cifre ne ha 1.000.000."
  - "Le sequenze scelte dalle persone sono molto più deboli del massimo teorico: si preferiscono angoli, lettere e forme corte."
  - "I dati biometrici sono comodi e difficili da spiare, ma un volto o un dito possono essere usati mentre dormi, sei trattenuto o costretto."
  - "Le ditate sullo schermo possono tradire una sequenza più facilmente di un PIN."
  - "Velcrypt usa una sequenza su una griglia 5×5 (almeno 6 punti) e per scelta non ha Face ID né Touch ID."
primaryKeyword: "sequenza di sblocco vs pin"
keywords: ["pin o face id sicurezza", "la sequenza di sblocco è sicura", "sequenza o password", "face id o codice", "blocco telefono più sicuro", "sblocco biometrico forzato"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Calcolo delle combinazioni, sguardi indiscreti, ditate e biometria forzata: un confronto onesto tra i quattro modi più comuni di bloccare i dati privati."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Una sequenza di sblocco è più sicura di un PIN?"
    a: "Dipende dalla sequenza e dal PIN specifici. Una sequenza lunga e irregolare su una griglia grande può battere un PIN a 6 cifre, ma una sequenza corta a forma di lettera è più facile da indovinare di un PIN casuale a 6 cifre. Lunghezza e imprevedibilità contano più del tipo di blocco."
  - q: "Face ID è più sicuro del codice?"
    a: "Face ID è molto difficile da ingannare con una foto e impossibile da spiare da sopra la spalla, quindi protegge bene dalla curiosità occasionale. Il suo punto debole è il consenso: qualcuno può avvicinare il telefono al tuo volto. Un codice funziona solo se lo inserisci tu."
  - q: "Quante combinazioni ha un PIN a 6 cifre?"
    a: "Un PIN a 6 cifre ha 1.000.000 di combinazioni possibili (da 000000 a 999999), contro le 10.000 di un PIN a 4 cifre. Scelte comuni come 123456 o le date di nascita riducono drasticamente il numero reale."
  - q: "Qualcuno può indovinare la mia sequenza dalle ditate sullo schermo?"
    a: "A volte. Con la luce giusta, le tracce delle dita su uno schermo di vetro possono rivelare il percorso di una sequenza. Pulire lo schermo, usare una pellicola opaca e scegliere una sequenza che si incrocia rendono più difficili questi attacchi."
  - q: "Perché Velcrypt non offre Face ID?"
    a: "Per scelta. Un volto o un’impronta possono essere usati per sbloccare un dispositivo senza il tuo consenso, mentre una sequenza esiste solo nella tua memoria. Velcrypt ha scelto una sequenza perché aprire una cassaforte richieda sempre una tua decisione."
---

Ogni blocco è un compromesso tra quanto è difficile da indovinare, quanto è facile da spiare e quanto è facile costringerti ad aprirlo. La maggior parte dei confronti guarda solo al primo aspetto. Questa guida li considera tutti e tre, con numeri reali dove esistono e avvertenze oneste dove mancano.

## I quattro contendenti

- **Il PIN** è una breve sequenza di cifre, di solito 4 o 6 su iPhone.
- **La password alfanumerica** è una stringa di lettere, numeri e simboli di qualsiasi lunghezza.
- **La sequenza** è un percorso tracciato su una griglia di punti. Android ha reso popolare la griglia 3×3; il [blocco a sequenza di Velcrypt](id:pattern-lock) usa una griglia 5×5.
- **I dati biometrici** (Face ID, Touch ID) sbloccano con il volto o l’impronta, con un codice come riserva.

## Spazio di ricerca: quanti tentativi servirebbero?

Lo spazio di ricerca è il numero di segreti possibili che un attaccante dovrebbe provare nel caso peggiore. È il numero più chiaro per confrontare i blocchi, ma solo se ricordi che le persone non scelgono i segreti a caso.

### PIN

Un PIN a 4 cifre ha 10 × 10 × 10 × 10 = **10.000** possibilità. Uno a 6 cifre ne ha **1.000.000**. Quel salto di 100 volte è il miglioramento di sicurezza più facile che la maggior parte delle persone può fare.

Il problema è la distribuzione. Le analisi dei PIN trapelati mostrano costantemente che una manciata di codici (1234, 0000, 1111, anni di nascita, 123456) copre una grossa fetta delle scelte reali. Un attaccante prova quelli per primi.

### Password alfanumeriche

Con circa 70 caratteri possibili per posizione, ogni carattere aggiunge circa 6 bit. Una password davvero casuale di 10 caratteri ha più combinazioni di qualsiasi PIN o sequenza pratica. Il problema è la memorizzazione: le persone scelgono parole, nomi e sostituzioni prevedibili, e le password lunghe sono noiose da digitare sul telefono molte volte al giorno.

### Sequenze: teoria contro persone

Qui l’onestà è fondamentale. Il numero teorico di sequenze può sembrare enorme. Sulla classica griglia 3×3 di Android (da 4 a 9 punti, nessun punto ripetuto) ci sono 389.112 sequenze valide, più di un PIN a 5 cifre. Su una griglia 5×5 con 25 punti, il conteggio teorico è enormemente più grande.

Le sequenze reali sono molto più deboli di quanto suggeriscano quei numeri. Le ricerche sulle sequenze Android hanno rilevato più volte che le persone:

- partono dall’angolo in alto a sinistra molto più spesso di quanto prevedrebbe il caso,
- disegnano sequenze corte, vicine alla lunghezza minima,
- tracciano lettere (L, Z, S, C, U, N) o semplici quadrati,
- si muovono da sinistra a destra e dall’alto in basso, come quando leggono.

Per questo la forza effettiva di una tipica sequenza 3×3 scelta da una persona è più vicina a quella di un PIN corto che al suo massimo teorico. Una griglia più grande aiuta solo se la sfrutti davvero: una «L» da 6 punti su una griglia 5×5 resta facile da indovinare.

Ciò che rende forte una sequenza è ciò che rende forte qualsiasi segreto: lunghezza e imprevedibilità. Su una griglia 5×5, una sequenza da 8 a 12 punti che cambia direzione più volte, non parte da un angolo, non forma una lettera e idealmente incrocia il proprio percorso è davvero difficile da indovinare. Puoi provare una forma simile (mai quella vera) con il [verificatore di robustezza della sequenza](id:pattern-strength-checker).

### La velocità dei tentativi conta quanto il loro numero

Il numero di combinazioni è solo metà della storia. L’altra metà è quanto velocemente un attaccante può provarle. Su iPhone, il Secure Enclave impone ritardi crescenti per il codice del dispositivo. Dentro un’app, la difesa è di solito la derivazione della chiave: Velcrypt fa passare ogni sequenza attraverso PBKDF2 con almeno 600.000 iterazioni, il che rende ogni tentativo volutamente lento. La [guida ad AES-256](id:aes-256-encryption-explained) spiega perché questo passaggio conta più dell’algoritmo di cifratura in sé.

## Sguardi indiscreti e ditate

**Lo shoulder surfing** è quando qualcuno ti guarda mentre sblocchi. È l’attacco più comune nella realtà ai blocchi del telefono, perché le persone più motivate a entrare nel tuo telefono spesso ti stanno sedute accanto.

- **Le sequenze** sono le più facili da spiare. Una forma si memorizza al primo sguardo, anche dall’altra parte del tavolo.
- **I PIN** sono abbastanza facili da spiare, soprattutto quelli a 4 cifre digitati con un pollice.
- **Le password** sono più difficili da cogliere in un colpo d’occhio perché sono più lunghe e la tastiera cambia layout.
- **I dati biometrici** non si possono spiare affatto.

**Gli attacchi da ditate** leggono la traccia unta che il dito lascia sul vetro. Qui le sequenze sono più esposte dei PIN, perché una linea continua lascia una traccia continua. Le sequenze che si incrociano, tornano indietro o passano sui punti in un ordine ambiguo sono molto più difficili da ricostruire da una traccia.

Difese pratiche: inclina lo schermo lontano dagli altri, coprilo con l’altra mano, puliscilo ogni tanto e sblocca le app delicate quando sei da solo.

## Lo sblocco forzato: la domanda che quasi tutti i confronti saltano

I dati biometrici hanno un punto debole che nessuna ingegneria elimina: non richiedono la tua partecipazione. Qualcuno può avvicinare il telefono al tuo volto mentre dormi, premere il tuo dito sul sensore o costringerti fisicamente. In ambito domestico, a una festa o durante una rapina, è un rischio reale.

In alcuni paesi, inoltre, le autorità possono legalmente obbligarti a fornire impronta o volto, trattando diversamente un codice memorizzato. Il quadro giuridico varia molto da paese a paese ed è cambiato nel tempo, quindi questa guida non fornisce consulenza legale. Il punto tecnico è semplice: un segreto nella tua memoria richiede una tua decisione; una parte del corpo no.

Se usi Face ID, conosci la via d’uscita. Da iPhone 8 in poi, tenendo premuti il tasto laterale e uno dei tasti del volume finché non compare la schermata di spegnimento/SOS (e poi annullando), Face ID e Touch ID vengono disattivati temporaneamente finché non inserisci il codice. Vedi [la privacy alla frontiera](id:phone-privacy-border-crossing) per capire quando conta.

## Confronto diretto

| | PIN a 4 cifre | PIN a 6 cifre | Password lunga | Sequenza (5×5, 8+ punti) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Combinazioni possibili | 10.000 | 1.000.000 | Moltissime se casuale | Moltissime in teoria; molte meno per forme prevedibili | Non applicabile |
| Facilità di indovinarlo nella realtà | Alta (codici comuni) | Media | Bassa se casuale | Bassa se irregolare, alta se è una lettera | Molto bassa |
| Shoulder surfing | Facile | Medio | Difficile | Facile | Impossibile |
| Tracce di ditate | Qualcuna | Qualcuna | Poche | Molte, a meno che il percorso non si incroci | Nessuna |
| Si può usare senza il tuo consenso | No | No | No | No | Sì |
| Velocità e comodità | Veloce | Veloce | Lenta sul telefono | Veloce | La più veloce |

## Scegliere il blocco giusto per ogni livello

Non devi scegliere un unico blocco per tutto. Una configurazione sensata per la maggior parte delle persone:

1. **Dispositivo:** un codice a 6 cifre (o più lungo), con Face ID o Touch ID per comodità se la tua situazione lo consente.
2. **Contenuti privati:** un segreto separato che non sia il codice del dispositivo, così chi scopre o spia il tuo codice non ottiene automaticamente tutto.
3. **Sappi come disattivare in fretta la biometria** quando ti trovi in un posto in cui potresti essere messo sotto pressione.

## Dove si inserisce Velcrypt

Velcrypt fa una scelta precisa: l’unico modo per entrare in una cassaforte è una sequenza su una griglia 5×5 di punti, una linea continua che passa per almeno 6 punti con almeno un cambio di direzione. Sono consigliate sequenze più lunghe, da 8 a 12 punti. Non c’è Face ID né Touch ID, perché una sequenza non si può prendere dal tuo corpo.

Questo design cambia anche il significato di «indovinare». Ogni sequenza è una cassaforte a sé, e una sequenza che Velcrypt non ha mai visto apre semplicemente una cassaforte vuota, senza messaggi di errore. Quindi un tentativo sbagliato non si rivela come sbagliato, e puoi tenere una [cassaforte esca](id:what-is-a-decoy-vault) sotto una seconda sequenza. La pagina sulle [casseforti nascoste](id:hidden-vaults) spiega il modello, e la [panoramica sulla sicurezza](id:security) elenca ciò da cui non può proteggerti, compreso qualcuno che ti guarda mentre disegni.
