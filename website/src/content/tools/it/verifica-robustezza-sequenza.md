---
pageId: pattern-strength-checker
title: "Verifica robustezza sequenza: testa una sequenza 5×5"
description: "Disegna una sequenza di prova su una griglia 5×5 e ottieni una stima indicativa di robustezza e bit. Funziona in locale. Mai la tua sequenza vera online."
h1: "Quanto è sicura la tua sequenza di sblocco?"
navTitle: "Verifica robustezza sequenza"
answer: "Disegna una sequenza sulla griglia 5×5 per vedere se rispetta le regole minime di Velcrypt e ottenere una valutazione indicativa da Troppo corta a Molto forte, più una stima in bit. È un’euristica, non una garanzia. Non inserire mai la tua sequenza vera su un sito web: provane una simile."
keyFacts:
  - "Controlla le regole minime di Velcrypt: almeno 6 punti e almeno un cambio di direzione."
  - "Valuta le sequenze come Troppo corta, Debole, Discreta, Forte o Molto forte, con una stima indicativa in bit."
  - "Premia più punti, cambi di direzione, incroci con sé stessa e una maggiore copertura della griglia."
  - "Penalizza partenze dagli angoli, lunghi tratti dritti e forme semplici come L, Z, S e U."
  - "Funziona in locale; nulla viene salvato o inviato. Prova una sequenza simile, mai quella vera."
primaryKeyword: "verifica sicurezza sequenza di sblocco"
keywords: ["sequenza di sblocco sicura", "quanto è sicura la mia sequenza", "sicurezza blocco a sequenza", "sequenza 5x5", "idee sequenza sicura", "robustezza sequenza password"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Disegna una sequenza di prova su una griglia 5×5 e vedi una valutazione indicativa. Funziona in locale. Non usare mai la tua sequenza vera."
toolName: "Verifica robustezza sequenza"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Verificare la robustezza di una sequenza di prova"
  steps:
    - name: "Disegna una sequenza simile"
      text: "Tocca o trascina sulla griglia 5×5 per disegnare una sequenza dallo stile simile a quella che hai in mente, non quella vera."
    - name: "Controlla le regole minime"
      text: "Verifica che la sequenza usi almeno 6 punti e cambi direzione almeno una volta."
    - name: "Leggi la valutazione"
      text: "Guarda la valutazione da Troppo corta a Molto forte e la stima indicativa in bit."
    - name: "Modifica e riprova"
      text: "Aggiungi punti, svolte o un incrocio, evita le partenze dagli angoli e le lettere semplici, e osserva come cambia la valutazione."
faq:
  - q: "È sicuro inserire qui la mia sequenza vera?"
    a: "Non farlo. Lo strumento funziona in locale e non salva nulla, ma la buona regola è non inserire mai un segreto reale su nessun sito web. Disegna invece una sequenza dallo stile simile e applica ciò che impari."
  - q: "Come viene calcolata la robustezza?"
    a: "È un’euristica. Lo strumento conta punti e cambi di direzione, nota quando la linea si incrocia, misura quante righe e colonne copre e abbassa il punteggio per partenze dagli angoli, lunghi tratti dritti e forme che sembrano lettere semplici."
  - q: "Cosa significano i bit?"
    a: "I bit sono una misura indicativa di quanti tentativi potrebbero servire a un aggressore; ogni bit in più li raddoppia all’incirca. La stima è approssimativa e presuppone una persona che conosce le abitudini comuni, non un tentativo puramente casuale."
  - q: "Quanto deve essere lunga una sequenza di Velcrypt?"
    a: "Il minimo è 6 punti con almeno un cambio di direzione. Velcrypt consiglia da 8 a 12 punti per una sequenza più robusta che riesci ancora a ricordare con sicurezza."
  - q: "Una sequenza robusta mi protegge da chi mi guarda?"
    a: "No. Se qualcuno ti vede disegnarla, la robustezza non conta. Copri lo schermo e disegnala dove non puoi essere osservato o ripreso."
  - q: "E se dimentico una sequenza complicata?"
    a: "Nella prima versione di Velcrypt una sequenza dimenticata non può essere recuperata né da te né da Velcrypt. Scegline una complessa ma memorabile e allenati prima di farci affidamento."
---

## Come funziona

Tocca o trascina sulla griglia 5×5 per disegnare una sequenza di prova. Mentre disegni, lo strumento verifica prima le regole minime di Velcrypt: una linea continua che passa per almeno sei punti, con almeno un cambio di direzione. Se la sequenza non le rispetta, viene valutata **Troppo corta**.

Superate le regole, lo strumento dà una valutazione indicativa (**Debole**, **Discreta**, **Forte** o **Molto forte**) più una robustezza approssimativa in bit. Tutto avviene nel tuo browser. Nulla viene salvato e nulla viene inviato.

## Cosa valuta lo strumento

La robustezza di una sequenza è, in sostanza, quanto sarebbe difficile indovinarla, considerando cosa tendono a disegnare le persone. Lo strumento combina diversi segnali:

- **Numero di punti.** Più punti significano più sequenze possibili.
- **Cambi di direzione.** Ogni svolta aggiunge imprevedibilità rispetto a una linea dritta.
- **Incroci.** Una linea che incrocia il proprio percorso è meno comune e più difficile da indovinare.
- **Copertura della griglia.** Le sequenze che attraversano più righe e colonne ottengono punteggi più alti di quelle concentrate in una zona.
- **Partenza da un angolo.** Partire da un angolo è molto comune, quindi abbassa leggermente il punteggio.
- **Lunghi tratti dritti.** Percorrere un’intera riga o colonna è facile da indovinare e da vedere da sopra la spalla.
- **Forme semplici.** Le sequenze che ricordano una L, Z, S, U o un quadrato sono tra le prime che chiunque proverebbe.

Il valore in bit è una stima, non una misura. È un’euristica pensata per allontanarti dalle abitudini comuni, non una garanzia di quanto a lungo una sequenza resisterebbe a un aggressore determinato.

## Perché le sequenze umane sono prevedibili

Sulla carta, una griglia 5×5 offre un numero enorme di linee possibili. In pratica, le persone non scelgono a caso. Gli studi sulla classica sequenza 3×3 dei telefoni hanno rilevato più volte tendenze marcate: partire in alto a sinistra, muoversi da sinistra a destra e dall’alto in basso, fare poche svolte e disegnare lettere familiari. Queste abitudini restringono lo spazio che un aggressore deve realisticamente esplorare.

Una sequenza robusta evita queste abitudini pur restando facile da ricordare per te. Per un confronto più ampio tra metodi di sblocco, leggi [sequenza, PIN o Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Consigli per una sequenza più robusta

1. **Punta a 8–12 punti.** È la raccomandazione di Velcrypt: abbastanza lunga da essere difficile da indovinare, abbastanza corta da ricordarla.
2. **Aggiungi due o più svolte.** Mescola movimenti orizzontali, verticali e diagonali.
3. **Incrocia la tua linea una volta.** Aggiunge complessità senza grande sforzo di memoria.
4. **Non partire da un angolo.** I punti centrali o sui bordi sono meno prevedibili.
5. **Usa tutta la griglia.** Tocca almeno tre righe e tre colonne.
6. **Evita lettere e forme.** Iniziali, L, Z, S, U e quadrati sono tra i primi tentativi.
7. **Allenati prima di farci affidamento.** Disegnala più volte finché la memoria muscolare non prende il sopravvento.

## Non inserire mai la tua sequenza vera

Questo strumento non salva né trasmette nulla, ma l’abitudine conta più di questa singola pagina. Non digitare né disegnare mai una password, un PIN o una sequenza reali su un sito web. Disegna invece una sequenza dallo stile simile (lunghezza, numero di svolte, zona di partenza simili) e usa il risultato come indicazione.

## La robustezza è solo una parte del quadro

In Velcrypt la tua sequenza è la chiave: le chiavi di cifratura ne vengono derivate con PBKDF2-HMAC-SHA512 con almeno 600.000 iterazioni, il che rende lento ogni tentativo. Vedi [cifratura](id:encryption). Ogni sequenza apre anche la propria cassaforte, come spiegato in [casseforti nascoste](id:hidden-vaults) e [sblocco a sequenza](id:pattern-lock).

Una sequenza robusta non può proteggerti da chi ti guarda mentre la disegni, da un telefono consegnato con la cassaforte aperta o da una sequenza dimenticata. Nella prima versione non c’è recupero, quindi leggi [hai dimenticato la sequenza?](id:forgot-vault-pattern) prima di scegliere qualcosa che potresti non ricordare.
