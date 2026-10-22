---
pageId: encryption
title: "Crittografia Velcrypt: AES-256-GCM e chiavi dalla sequenza"
description: "Come Velcrypt cifra la tua cassaforte: PBKDF2-HMAC-SHA512 dalla sequenza, chiave principale casuale a 256 bit, chiavi per file con HKDF e AES-256-GCM."
h1: "Come Velcrypt cifra la tua cassaforte foto"
navTitle: "Crittografia"
answer: "Velcrypt cifra ogni file con AES-256-GCM. La tua sequenza viene rafforzata con PBKDF2-HMAC-SHA512 (almeno 600.000 iterazioni, salt per dispositivo) in una chiave che sblocca la chiave principale casuale a 256 bit della cassaforte, da cui HKDF deriva una chiave diversa per ogni file. La Protezione dati di iOS aggiunge un secondo livello."
keyFacts:
  - "Algoritmo: cifratura autenticata AES-256-GCM tramite Apple CryptoKit."
  - "Rafforzamento della sequenza: PBKDF2-HMAC-SHA512, almeno 600.000 iterazioni."
  - "Un salt casuale per dispositivo è conservato nel Portachiavi di iOS."
  - "Ogni cassaforte ha la propria chiave principale casuale a 256 bit; ogni file riceve la sua chiave tramite HKDF."
  - "Sopra a tutto si applica la Protezione dati di iOS (classe di protezione completa)."
primaryKeyword: "cassaforte foto crittografata iphone"
keywords: ["crittografia aes-256-gcm foto", "app foto cifrate iphone", "pbkdf2 app cassaforte", "come viene cifrata la mia cassaforte", "cifratura autenticata spiegata"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM per ogni file, chiavi derivate dalla sequenza con PBKDF2-HMAC-SHA512 e HKDF, più la Protezione dati di iOS."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "Che crittografia usa Velcrypt?"
    a: "AES-256-GCM, una modalità di cifratura autenticata, tramite il framework CryptoKit di Apple. Ogni file è cifrato con una propria chiave derivata dalla chiave principale casuale a 256 bit della cassaforte."
  - q: "La mia sequenza viene salvata sul telefono?"
    a: "La sequenza non viene usata direttamente come chiave. Viene rafforzata con PBKDF2-HMAC-SHA512 con almeno 600.000 iterazioni e un salt per dispositivo, e il risultato serve a sbloccare la chiave principale della cassaforte."
  - q: "Velcrypt può decifrare i miei file?"
    a: "No. Velcrypt non ha server e nessuna copia delle tue chiavi. Le chiavi possono essere ricostruite solo sul tuo telefono a partire dalla sequenza, ed è anche per questo che una sequenza dimenticata non si può reimpostare."
  - q: "Perché si usa anche la Protezione dati di iOS?"
    a: "Aggiunge un livello indipendente. I file usano la classe di protezione completa, quindi iOS li mantiene cifrati con chiavi legate al codice del dispositivo mentre il telefono è bloccato, oltre alla cifratura di Velcrypt."
---

La crittografia è ciò che rende una cassaforte qualcosa di più di una cartella nascosta. In Velcrypt ogni foto, video e documento viene cifrato sul tuo iPhone prima di essere salvato, con chiavi che si possono ricostruire solo dalla tua sequenza. Questa pagina spiega come quelle chiavi vengono create e usate.

## La catena di chiavi, passo dopo passo

Velcrypt usa un modello di chiavi a livelli. Ogni livello ha un solo compito.

1. **La tua sequenza.** La disegni sulla [griglia 5×5](id:pattern-lock). È l'unico segreto che devi ricordare.
2. **Rafforzamento della chiave con PBKDF2-HMAC-SHA512.** La sequenza passa attraverso PBKDF2 con SHA-512 per **almeno 600.000 iterazioni**, insieme a un salt casuale. Il rafforzamento della chiave (key stretching) è una tecnica che rende volutamente lento ogni singolo tentativo, così provare le sequenze una per una diventa costoso.
3. **Un salt per dispositivo nel Portachiavi.** Il salt è casuale, viene creato sul tuo dispositivo e conservato nel Portachiavi di iOS. Fa sì che la stessa sequenza produca una chiave diversa su un altro telefono, rendendo inutili le tabelle di tentativi precalcolate.
4. **La chiave principale della cassaforte.** Ogni cassaforte ha la propria **chiave principale casuale a 256 bit**. La chiave ottenuta dalla sequenza non cifra direttamente i file: sblocca questa chiave principale.
5. **Chiavi per file con HKDF.** Dalla chiave principale, HKDF (una funzione standard di derivazione delle chiavi) ricava una chiave separata per ogni file. Non ci sono due file con la stessa chiave.
6. **AES-256-GCM.** Ogni file viene cifrato con la propria chiave usando AES-256 in modalità GCM, tramite CryptoKit di Apple.

| Livello | Cosa fa |
| --- | --- |
| Sequenza | Il segreto che conosci solo tu |
| PBKDF2-HMAC-SHA512, oltre 600.000 iterazioni | Rende lento ogni tentativo |
| Salt per dispositivo (Portachiavi) | Rende le chiavi uniche per il dispositivo |
| Chiave principale casuale a 256 bit | Una per cassaforte, tiene separate le casseforti |
| HKDF | Una chiave unica per ogni file |
| AES-256-GCM | Cifra e autentica il file |
| Protezione dati di iOS | Secondo livello, a livello di sistema |

Poiché ogni cassaforte ha la propria chiave principale, le casseforti sono separate a livello crittografico. È questo che rende le [casseforti nascoste](id:hidden-vaults) qualcosa di più di un trucco visivo.

## Cosa significa cifratura autenticata

La cifratura autenticata è una cifratura che protegge sia la riservatezza sia l'integrità. AES-256-GCM fa due cose insieme: rende il file illeggibile senza la chiave e gli associa un tag di autenticazione che dimostra che il file non è stato modificato.

Quando Velcrypt apre un file, controlla quel tag. Se anche un solo byte è cambiato, per un danneggiamento o una manomissione, la decifratura fallisce invece di restituire in silenzio dati danneggiati o manipolati. Le modalità più vecchie che cifrano senza autenticazione non possono accorgersene. Per una panoramica semplice dell'algoritmo, leggi [la crittografia AES-256 spiegata](id:aes-256-encryption-explained).

## La Protezione dati di iOS come secondo livello

Oltre alla propria cifratura, Velcrypt salva i file delle casseforti con la Protezione dati di iOS impostata sulla classe di **protezione completa**. Con questa classe, iOS mantiene i file cifrati con chiavi legate al codice del dispositivo ogni volta che il telefono è bloccato.

I due livelli sono indipendenti. Anche se uno venisse in qualche modo aggirato, l'altro resterebbe comunque tra un telefono bloccato e i tuoi file.

## Perché le chiavi non esistono da nessun'altra parte

Velcrypt funziona [completamente offline e senza account](id:offline-no-account). Non ci sono server, né caricamenti, né copie delle tue chiavi fuori dal telefono. Questo approccio elimina un'intera categoria di rischi: non c'è un database da violare né un dipendente dell'azienda in grado di decifrare i tuoi file.

Ha anche un costo. Poiché le chiavi esistono solo sul dispositivo e solo attraverso la tua sequenza, nessuno può recuperare una cassaforte se dimentichi la sequenza o perdi il telefono. Per proteggerti dalla perdita del telefono puoi creare un backup cifrato in Impostazioni → Backup, protetto da una password del backup che, se dimenticata, non si può recuperare.

## Cosa la crittografia non copre

Una crittografia robusta protegge i file archiviati. Non può aiutarti se qualcuno ti guarda disegnare la sequenza, se la cassaforte è aperta quando consegni il telefono o se su un dispositivo con jailbreak gira un malware. Non raggiunge nemmeno le copie fuori da Velcrypt, come gli originali ancora in Foto. La [panoramica sulla sicurezza](id:security) descrive per intero il modello di minaccia, incluso [ciò da cui Velcrypt non ti protegge](id:security#what-velcrypt-does-not-protect-against).
