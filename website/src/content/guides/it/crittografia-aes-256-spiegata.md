---
pageId: aes-256-encryption-explained
title: "Crittografia AES-256 spiegata (GCM, PBKDF2, quantistica)"
description: "Cos’è AES-256, perché conta la modalità GCM, perché la derivazione della chiave conta più dell’algoritmo e cosa cambiano i computer quantistici."
h1: "La crittografia AES-256 spiegata, senza esagerazioni"
navTitle: "Crittografia AES-256 spiegata"
answer: "AES-256 è un algoritmo di cifratura simmetrico che cifra i dati con una chiave a 256 bit; nessuno può realisticamente violarlo provando tutte le chiavi. Per i dati protetti da una sequenza o una password, la vera forza dipende dalla derivazione della chiave: quanto lentamente e con quanta cura quel segreto corto diventa la chiave. La modalità GCM aggiunge il rilevamento delle manomissioni alla segretezza."
keyFacts:
  - "AES è un cifrario a blocchi standardizzato dal NIST nel 2001; AES-256 usa una chiave a 256 bit e 14 round."
  - "GCM è una modalità autenticata: cifra i dati e rileva anche qualsiasi modifica al testo cifrato."
  - "Una sequenza o una password deboli indeboliscono AES-256, perché gli attaccanti indovinano il segreto, non la chiave."
  - "Una derivazione della chiave lenta, come PBKDF2 con molte iterazioni, rende costoso ogni tentativo."
  - "L’algoritmo di Grover ridurrebbe AES-256 a una sicurezza di circa 128 bit contro un attaccante quantistico, ancora considerata robusta."
primaryKeyword: "crittografia aes-256 spiegata"
keywords: ["cos’è aes 256", "aes-256-gcm", "pbkdf2 spiegato", "aes 256 è sicuro contro i computer quantistici", "aes 256 vs aes 128", "crittografia autenticata"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, lunghezze delle chiavi, crittografia autenticata GCM, perché PBKDF2 conta più dell’algoritmo e la questione quantistica, in parole semplici."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "AES-256 si può violare?"
    a: "Non esiste alcun attacco pratico noto che recuperi una chiave AES-256 più in fretta della forza bruta, e provare tutte le chiavi a 256 bit è ben oltre qualsiasi computer immaginabile. Le violazioni reali nascono da password deboli, chiavi rubate o bug attorno all’algoritmo, non da AES in sé."
  - q: "Che differenza c’è tra AES-128 e AES-256?"
    a: "Usano lo stesso algoritmo con lunghezze di chiave e numero di round diversi: chiavi a 128 bit con 10 round contro chiavi a 256 bit con 14 round. AES-128 è già considerato sicuro; AES-256 aggiunge un ampio margine, anche contro futuri attacchi quantistici."
  - q: "Cosa significa GCM in AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) è una modalità operativa che cifra i dati e produce un tag di autenticazione. Se anche un solo bit del file cifrato viene alterato, la decifratura fallisce invece di restituire dati corrotti o manipolati."
  - q: "AES-256 resiste ai computer quantistici?"
    a: "In genere è considerato resistente. L’algoritmo di Grover, in teoria, dimezzerebbe la forza effettiva della chiave a circa 128 bit, che resta considerata sicura. I computer quantistici sono una minaccia maggiore per algoritmi a chiave pubblica come RSA che per AES."
  - q: "Perché un’app che usa AES-256 ha comunque bisogno di una password o sequenza robusta?"
    a: "Perché gli attaccanti non indovinano la chiave a 256 bit; indovinano il segreto corto da cui deriva. Se il tuo segreto è una delle poche migliaia di scelte comuni, anche una derivazione lenta fa guadagnare solo un tempo limitato."
---

«Crittografia AES-256» compare nell’elenco delle funzioni di quasi ogni app per la privacy. È un’affermazione reale e significativa, ma è anche la parte di un sistema che ha meno probabilità di cedere. Questa guida spiega cosa fa AES-256, cosa significano sigle aggiuntive come GCM, e perché il passaggio che trasforma la tua sequenza o password in una chiave merita più attenzione.

## Cos’è AES

AES (Advanced Encryption Standard) è un cifrario a blocchi simmetrico: la stessa chiave segreta cifra e decifra, e i dati vengono elaborati in blocchi da 128 bit. È stato scelto dal National Institute of Standards and Technology (NIST) statunitense nel 2001 dopo una competizione pubblica e aperta durata diversi anni, e il progetto vincitore, Rijndael, è opera di due crittografi belgi.

Oggi AES è ovunque: nelle connessioni HTTPS, nel Wi-Fi, nella cifratura dei dischi e nell’hardware di ogni iPhone moderno. Questa diffusione è un pregio. È stato studiato dai crittografi per oltre vent’anni, e molti processori lo accelerano via hardware.

### Lunghezze delle chiavi

AES esiste in tre lunghezze di chiave:

| Variante | Lunghezza della chiave | Round | Chiavi possibili |
|---|---|---|---|
| AES-128 | 128 bit | 10 | circa 3,4 × 10³⁸ |
| AES-192 | 192 bit | 12 | circa 6,3 × 10⁵⁷ |
| AES-256 | 256 bit | 14 | circa 1,2 × 10⁷⁷ |

Per dare un’idea della cifra di AES-256: non è lontana dalle stime comuni del numero di atomi nell’universo osservabile. Provare tutte le chiavi non è una questione di computer più veloci; è fisicamente fuori portata.

## Le modalità: perché «GCM» conta

Un cifrario a blocchi da solo rimescola un singolo blocco da 16 byte. Una **modalità operativa** definisce come cifrare interi file in modo sicuro. Le modalità più vecchie garantivano solo la segretezza, il che significava che a volte un attaccante poteva invertire dei bit nel testo cifrato e causare cambiamenti prevedibili nei dati decifrati.

**GCM (Galois/Counter Mode) è una modalità di crittografia autenticata.** Cifra i dati e calcola anche un tag di autenticazione su di essi. Quando decifri, il tag viene verificato per primo. Se il file è stato manomesso o danneggiato, la decifratura fallisce in modo pulito invece di restituire contenuti alterati.

GCM ha una regola rigida: un nonce (un numero usato una sola volta) non deve mai ripetersi con la stessa chiave. I sistemi ben progettati evitano questo rischio a livello strutturale, per esempio dando a ogni file una chiave propria.

## La parte che decide davvero la tua sicurezza: la derivazione della chiave

Ecco la verità scomoda su «AES-256» in un’app protetta da un blocco. Nessuno attacca direttamente la chiave a 256 bit. Si attacca ciò che ricordi tu.

Una sequenza, un PIN o una password sono corti. Una **funzione di derivazione della chiave (KDF)** è il processo che trasforma quel segreto corto in una chiave di lunghezza piena. Se la KDF è veloce, un attaccante che ha copiato i dati cifrati può provare miliardi di tentativi. Se è volutamente lenta, ogni tentativo costa tempo e potenza di calcolo reali.

### Come PBKDF2 rallenta gli attaccanti

**PBKDF2** (Password-Based Key Derivation Function 2) è una KDF standardizzata e molto diffusa. Fa passare il tuo segreto attraverso una funzione di hash con chiave (HMAC) molte migliaia di volte, e vi mescola un **salt**, un valore casuale che rende unica la chiave derivata anche se qualcun altro ha scelto lo stesso segreto.

- **Le iterazioni** moltiplicano il costo di ogni tentativo. Con centinaia di migliaia di iterazioni, un tentativo che richiederebbe un microsecondo richiede una frazione di secondo percepibile.
- **Il salt** neutralizza le tabelle precalcolate. Un attaccante non può costruire un unico enorme elenco «sequenza → chiave» e riusarlo su più dispositivi.

Anche così, nessuna KDF può salvare un segreto che è tra le prime poche migliaia che un attaccante proverebbe. Ecco perché i consigli per scegliere un segreto robusto, nella [guida sequenza vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id), contano quanto l’algoritmo. Prova una forma simile (mai quella vera) con il [verificatore di robustezza della sequenza](id:pattern-strength-checker).

## La questione quantistica

I computer quantistici minacciano gravemente una parte della crittografia e solo in modo lieve un’altra.

- **Gli algoritmi a chiave pubblica** come RSA e la crittografia a curve ellittiche potrebbero essere violati dall’algoritmo di Shor su un computer quantistico abbastanza grande. Per questo lo scambio di chiavi post-quantistico si sta diffondendo in tutto il settore.
- **I cifrari simmetrici** come AES devono fare i conti con l’algoritmo di Grover, che offre un’accelerazione quadratica della ricerca a forza bruta. In pratica, questo dimezza circa la lunghezza effettiva della chiave: AES-256 offrirebbe circa 128 bit di sicurezza contro un attaccante quantistico.

Una sicurezza a 128 bit è ancora considerata robusta. È uno dei motivi per cui AES-256 è consigliato per i dati che devono restare riservati a lungo.

## Idee sbagliate comuni

- **I superlativi in un elenco di funzioni significano qualcosa.** No. AES è uno standard pubblico usato allo stesso modo da banche, browser e app di messaggistica; gli aggettivi altisonanti davanti sono marketing.
- **AES-256 rende sicura un’app.** Rende sicuri i byte cifrati. Gestione delle chiavi, KDF, design dello sblocco, backup e copie lasciate altrove decidono se lo è l’intero sistema.
- **Chiavi più lunghe compensano password deboli.** No. Una chiave a 256 bit derivata da «1234» è forte quanto «1234».

## Come usa AES-256 Velcrypt

Il design di Velcrypt segue il principio qui sopra: algoritmo robusto, gestione attenta delle chiavi, derivazione lenta.

- **Algoritmo:** AES-256-GCM tramite Apple CryptoKit, quindi ogni file è cifrato e autenticato.
- **Derivazione della chiave:** la tua sequenza viene elaborata con PBKDF2-HMAC-SHA512 usando almeno 600.000 iterazioni e un salt casuale per dispositivo conservato nel Portachiavi di iOS.
- **Gerarchia delle chiavi:** ogni cassaforte ha una propria chiave master casuale a 256 bit, e da questa vengono derivate con HKDF le chiavi per singolo file. Chiavi separate per file rendono anche facile rispettare la regola del nonce di GCM.
- **Livello aggiuntivo:** ai file si applica la Protezione dati di iOS (classe di protezione completa) oltre alla crittografia di Velcrypt.
- **Solo sul dispositivo:** nessun account e nessun server, quindi non esiste una copia delle tue chiavi da nessun’altra parte.

La [pagina sulla crittografia](id:encryption) riassume tutto questo, e la [panoramica sulla sicurezza](id:security) è esplicita su ciò da cui la crittografia non può proteggere, come qualcuno che ti guarda mentre disegni la sequenza o un telefono consegnato con la cassaforte aperta.
