---
pageId: can-aes-256-be-cracked
title: "AES-256 si può violare? Forza bruta, quantistica e GCM"
description: "Quanto tempo servirebbe per violare una chiave a 256 bit con la forza bruta, cosa cambiano i computer quantistici e GCM, e dove mirano gli attacchi veri."
h1: "AES-256 si può violare? I conti, gli attacchi e la questione quantistica"
navTitle: "AES-256 si può violare?"
answer: "Non provando le chiavi: anche un miliardo di macchine che provassero ciascuna un miliardo di miliardi di chiavi al secondo impiegherebbero in media circa 10⁴² anni. I migliori attacchi noti tolgono solo un paio di bit, e un computer quantistico con l’algoritmo di Grover avrebbe ancora davanti circa 2¹²⁸ passi. Gli attacchi reali puntano a password o sequenza, dispositivo o implementazione."
keyFacts:
  - "Una chiave a 256 bit ha circa 1,2 × 10⁷⁷ valori possibili; la forza bruta è fuori portata con qualsiasi ipotesi realistica."
  - "Il miglior attacco noto ad AES-256 completo senza chiavi correlate (biclique, 2011) costa circa 2²⁵⁴·⁴ operazioni invece di 2²⁵⁶."
  - "L’algoritmo di Grover lascerebbe ad AES-256 circa 128 bit di sicurezza; NIST, BSI e NCSC britannico considerano AES adatto all’era quantistica."
  - "L’algoritmo di Shor minaccia RSA e la crittografia a curve ellittiche, non AES."
  - "In una cassaforte protetta da sequenza, il punto debole è l’entropia della sequenza e la derivazione della chiave, non l’algoritmo."
primaryKeyword: "aes 256 si può violare"
keywords: ["quanto tempo per violare aes 256", "aes 256 è sicuro contro i computer quantistici", "crittografia aes 256", "aes-256-gcm", "rijndael 256", "aes è mai stato violato"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "I conti della forza bruta su una chiave a 256 bit, gli attacchi noti, Grover contro Shor, cosa aggiunge GCM e perché il vero bersaglio è la sequenza."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "Quanto tempo servirebbe per violare AES-256 con la forza bruta?"
    a: "Ipotizzando un miliardo di macchine che provano ciascuna 10¹⁸ chiavi al secondo, trovare una chiave a 256 bit richiederebbe in media circa 1,8 × 10⁴² anni, circa 10³² volte l’età dell’universo. Le ipotesi sono smisuratamente generose; l’hardware reale è molto più lento."
  - q: "AES-256 è sicuro contro i computer quantistici?"
    a: "È considerato resistente. L’algoritmo di Grover ridurrebbe la sua forza effettiva a circa 128 bit, che resta considerata sicura. Il NIST afferma che le applicazioni attuali possono continuare a usare AES, e il BSI tedesco raccomanda chiavi a 256 bit per una protezione a lungo termine."
  - q: "AES è mai stato violato?"
    a: "In pratica no. Esistono attacchi accademici, come gli attacchi biclique che portano AES-256 da 2²⁵⁶ a circa 2²⁵⁴·⁴ operazioni e gli attacchi a chiavi correlate, che richiedono uno scenario irrealistico. Nessuno di questi permette di decifrare dati reali protetti con AES-256."
  - q: "Rijndael 256 è la stessa cosa di AES-256?"
    a: "Non proprio. Rijndael è il progetto diventato AES e ammette blocchi da 128, 192 o 256 bit. AES fissa il blocco a 128 bit, e AES-256 indica una chiave a 256 bit. Una variante di Rijndael con blocco da 256 bit non è AES."
  - q: "Cosa aggiunge AES-256-GCM rispetto ad AES-256 semplice?"
    a: "GCM trasforma AES in crittografia autenticata. Oltre a mantenere il segreto, aggiunge un tag di autenticazione, così qualsiasi modifica al file cifrato fa fallire la decifratura. Richiede che un nonce non venga mai riutilizzato con la stessa chiave."
  - q: "Quindi una cassaforte che usa AES-256 si può violare?"
    a: "Non attraverso l’algoritmo. Chi copia i dati cifrati prova invece a indovinare la tua sequenza o la tua password, e una derivazione della chiave lenta limita solo quanti tentativi al secondo può fare. A tenere chiusa la cassaforte è un segreto lungo e irregolare."
---

«AES-256 si può violare?» è una domanda legittima, e la risposta onesta ha due metà. L’algoritmo in sé, secondo ogni stima seria, non verrà violato né provando le chiavi, né con la migliore crittoanalisi nota, né con computer quantistici su qualsiasi orizzonte visibile. Ma i dati protetti con AES-256 possono comunque essere esposti, perché gli attaccanti puntano all’anello più debole. Questa guida fa i conti e poi segue l’attaccante dove va davvero. Per le basi su come funziona AES, parti dalla [crittografia AES-256 spiegata](id:aes-256-encryption-explained).

## Quanto tempo richiederebbe la forza bruta?

Forza bruta significa provare tutte le chiavi possibili finché una funziona. Una chiave a 256 bit ha 2²⁵⁶ valori possibili, circa 1,16 × 10⁷⁷. In media quella giusta arriva a metà strada, quindi dopo circa 5,8 × 10⁷⁶ tentativi.

Diamo all’attaccante risorse assurdamente generose:

- **Velocità per macchina:** 10¹⁸ chiavi al secondo (un miliardo di miliardi), ben oltre qualsiasi hardware reale per attaccare AES.
- **Numero di macchine:** un miliardo, tutte in parallelo.
- **Totale:** 10²⁷ chiavi al secondo.

Il risultato: 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ secondi, circa **1,8 × 10⁴² anni**. L’universo ha circa 1,38 × 10¹⁰ anni, quindi si tratta di circa 10³² volte la sua età. Raddoppiare l’hardware qualche decina di volte non cambia la conclusione: ogni bit di chiave in più raddoppia il lavoro, e 256 bit non lasciano spazio alla tecnologia per recuperare.

Ecco perché nessuno in crittografia parla di forza bruta contro AES-256. L’unica domanda è se esista una scorciatoia.

## Attacchi noti: guadagni teorici minimi

AES è pubblico dal 2001 ed è tra gli algoritmi più studiati in assoluto. I crittoanalisti hanno trovato attacchi che, a rigore, sono più veloci della forza bruta, ma con margini che contano solo sulla carta.

- **Attacchi biclique (2011).** Bogdanov, Khovratovich e Rechberger hanno mostrato un recupero della chiave su AES-256 completo con un costo di circa 2²⁵⁴·⁴ operazioni invece di 2²⁵⁶. È circa tre volte meno lavoro della forza bruta, sempre circa 10⁷⁶ operazioni. Gli stessi autori hanno precisato che l’attacco non minaccia l’uso pratico di AES.
- **Attacchi a chiavi correlate (2009).** Biryukov e Khovratovich hanno trovato un attacco ad AES-256 di circa 2⁹⁹·⁵ in tempo, ma solo in un modello in cui l’attaccante ottiene dati cifrati con più chiavi segrete legate da una precisa relazione matematica. I sistemi ben progettati generano chiavi casuali indipendenti, quindi questo modello non li riguarda.

Nessuno di questi risultati recupera una chiave da dati reali cifrati con AES-256. Servono soprattutto a dimostrare che due decenni di analisi non hanno trovato crepe significative.

### Cosa significa «Rijndael 256»

Rijndael è il progetto di Joan Daemen e Vincent Rijmen che il NIST ha scelto come AES. Rijndael supporta dimensioni di blocco e di chiave da 128, 192 e 256 bit. AES ha standardizzato solo il blocco da 128 bit. Quindi AES-256 significa Rijndael con blocco da 128 bit e chiave da 256 bit. Un «Rijndael-256» con blocco da 256 bit è un altro cifrario, non standard, e non è ciò che app e browser intendono per AES-256.

## AES-256 è sicuro contro i computer quantistici?

I computer quantistici colpiscono due famiglie di crittografia in modo molto diverso.

- **L’algoritmo di Shor** risolve in modo efficiente la fattorizzazione e il logaritmo discreto. Un computer quantistico abbastanza grande violerebbe RSA e la crittografia a curve ellittiche, i metodi a chiave pubblica usati per scambiare chiavi e firmare. Per questo si sta introducendo lo scambio di chiavi post-quantistico.
- **L’algoritmo di Grover** accelera in modo quadratico la ricerca a forza bruta: esplorare 2²⁵⁶ chiavi costa circa 2¹²⁸ passi quantistici. In pratica AES-256 offre circa 128 bit di sicurezza contro un attaccante quantistico.

Quanto sono 2¹²⁸ passi? Supponiamo un computer quantistico capace di un miliardo di iterazioni di Grover al secondo, ognuna con un circuito AES completo: un’ipotesi molto ottimistica. Servirebbero comunque circa 10²² anni. Inoltre Grover si parallelizza male: dividere la ricerca su molte macchine dà molto meno di un’accelerazione proporzionale.

Le posizioni ufficiali coincidono:

- **Il NIST** (USA) scrive nelle FAQ sulla crittografia post-quantistica che l’algoritmo di Grover probabilmente darà poco o nessun vantaggio nell’attaccare AES, e che le applicazioni attuali possono continuare a usare AES con chiavi da 128, 192 o 256 bit.
- **Il BSI** (Germania) ritiene che i cifrari simmetrici come AES siano sostanzialmente resistenti agli attacchi quantistici se la lunghezza della chiave è adeguata, e raccomanda chiavi da 256 bit nei nuovi sistemi che devono proteggere dati a lungo termine.
- **L’NCSC** (Regno Unito) afferma che la sicurezza della crittografia simmetrica non è significativamente intaccata dai computer quantistici e che AES può continuare a essere usato con dimensioni di chiave adeguate.

Quindi sì: AES-256 è la variante consigliata per i dati che devono restare riservati a lungo, computer quantistici compresi.

## Cosa aggiunge GCM in AES-256-GCM

AES da solo cifra un blocco di 16 byte. Una modalità operativa stabilisce come cifrare file interi. **GCM (Galois/Counter Mode)**, standardizzata dal NIST nella SP 800-38D, è una modalità autenticata: oltre al testo cifrato produce un tag di autenticazione. In fase di decifratura il tag viene verificato e, se è cambiato anche un solo bit del file, la decifratura fallisce invece di restituire dati alterati.

GCM ha una regola rigida: un nonce non deve mai ripetersi con la stessa chiave. Riutilizzarlo può far trapelare informazioni sul testo in chiaro e permettere di falsificare i tag. Non è una debolezza di AES, ma proprio il tipo di errore di implementazione che gli attacchi reali sfruttano. Dare a ogni file la sua chiave, come fa Velcrypt, rende la regola facile da rispettare.

## Dove vanno davvero gli attacchi

Se l’algoritmo è fuori portata, gli attaccanti lo aggirano. In pratica puntano a tre cose.

1. **Il segreto che ricordi.** La chiave a 256 bit di solito è derivata da una password, un PIN o una sequenza. Indovinare il segreto costa enormemente meno che indovinare la chiave.
2. **Il dispositivo.** Malware, un telefono con jailbreak, una cassaforte lasciata aperta o qualcuno che ti guarda mentre sblocchi aggirano del tutto la crittografia.
3. **L’implementazione.** Nonce riutilizzati, chiavi salvate accanto ai dati, numeri casuali deboli o canali laterali come le fughe di temporizzazione. Per questo librerie di sistema collaudate come Apple CryptoKit sono preferibili a codice crittografico fatto in casa.

## La conclusione onesta per una cassaforte con sequenza

In una cassaforte come Velcrypt, la chiave che cifra i tuoi file è una chiave master casuale a 256 bit, robusta quanto AES può esserlo. Ma quella chiave master è sigillata con una chiave derivata dalla sequenza che disegni. Chi ha copiato i dati cifrati e il salt del dispositivo può provare tentativi offline. La forza dell’algoritmo a quel punto non conta più; conta quante sequenze riesce a provare al secondo e quante deve provarne.

Velcrypt rallenta ogni tentativo con PBKDF2-HMAC-SHA512 e almeno 600.000 iterazioni. Estrapolando da benchmark pubblici di cracking delle password, una scheda video da gaming di fascia alta arriva nell’ordine di 5.000 tentativi al secondo con questa impostazione. È una stima approssimativa, non una misura di Velcrypt stesso. Ecco cosa significa:

| Sequenze da provare | Bit circa | Una GPU | 100 GPU |
|---|---|---|---|
| 10.000 (forme comuni) | ~13 | secondi | all’istante |
| 1 milione | ~20 | minuti | secondi |
| 1 miliardo | ~30 | circa 2 giorni | circa 30 minuti |
| 1.000 miliardi | ~40 | circa 6 anni | circa 3 settimane |

Per avere un’idea: anche trattando una sequenza come qualsiasi scelta ordinata di 10 punti distinti su 25, si ottengono solo circa 1,2 × 10¹³ possibilità (circa 43 bit), ed è un limite superiore generoso, perché una linea continua limita le mosse e le persone preferiscono angoli, lettere e forme brevi. Una sequenza vale qualche decina di bit; la chiave 256.

Niente di tutto questo è facile su un iPhone: l’attaccante deve prima estrarre dal dispositivo i file cifrati e il salt, superando la Protezione dati di iOS. Ma mostra dove mettere l’impegno:

- **Usa da 8 a 12 punti**, con diversi cambi di direzione e possibilmente un incrocio.
- **Evita partenze dagli angoli, lettere e forme semplici** come L, Z o un quadrato.
- **Disegnala al riparo da sguardi**, perché nessuna entropia protegge da chi ti ha visto.

Prova una forma simile, mai quella vera, con il [verificatore di robustezza della sequenza](id:pattern-strength-checker), e leggi la [guida sequenza vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) per capire come si comportano i segreti scelti dalle persone. La [pagina sulla crittografia](id:encryption) descrive l’intera catena di chiavi di Velcrypt, e la [panoramica sulla sicurezza](id:security#what-velcrypt-does-not-protect-against) elenca ciò da cui la crittografia non può proteggere.
