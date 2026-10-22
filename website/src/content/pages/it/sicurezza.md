---
pageId: security
title: "Sicurezza Velcrypt: come funziona la cifratura"
description: "Come Velcrypt protegge le tue casseforti: chiavi con PBKDF2, chiave master per cassaforte, AES-256-GCM, Protezione dati di iOS e i limiti dichiarati."
h1: "Come funziona Velcrypt: il modello di sicurezza"
navTitle: "Modello di sicurezza"
answer: "Velcrypt trasforma la sequenza che disegni in una chiave con PBKDF2-HMAC-SHA512 (almeno 600.000 iterazioni), la usa per proteggere una chiave master casuale a 256 bit per quella cassaforte e cifra ogni file con AES-256-GCM sul tuo iPhone. Nulla viene caricato e non esistono account né copie di recupero delle tue chiavi."
keyFacts:
  - "Sequenza → PBKDF2-HMAC-SHA512, almeno 600.000 iterazioni, salt casuale per dispositivo conservato nel portachiavi di iOS."
  - "Ogni cassaforte ha una propria chiave master casuale a 256 bit; le chiavi per file sono derivate con HKDF."
  - "I file sono cifrati con AES-256-GCM tramite Apple CryptoKit, più la Protezione dati di iOS (classe di protezione completa)."
  - "Una sequenza sconosciuta apre una cassaforte vuota: nessun elenco di casseforti, nessun messaggio di “sequenza errata”."
  - "Nessuna rete, nessun account, nessuna analisi dei contenuti; i dati sono esclusi dai backup iCloud e sul computer; il backup cifrato è un file manuale."
  - "Velcrypt non è ancora stato sottoposto a un audit di sicurezza indipendente."
primaryKeyword: "velcrypt sicurezza"
keywords: ["cifratura cassaforte foto iphone", "come funziona la cifratura di velcrypt", "cassaforte foto aes-256-gcm", "sblocco a sequenza pbkdf2", "modello di minaccia app cassaforte", "negabilità plausibile app cassaforte"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "Velcrypt può vedere o recuperare le mie foto?"
    a: "No. Velcrypt non ha server, sistemi di account né copie delle tue chiavi. La tua sequenza non viene mai salvata, quindi nessuno in Velcrypt può aprire, reimpostare o recuperare una cassaforte."
  - q: "Cosa succede se qualcuno disegna la sequenza sbagliata in Velcrypt?"
    a: "Una sequenza che Velcrypt non ha mai visto apre semplicemente una cassaforte nuova e vuota. Non c’è alcun messaggio di errore e nulla che dica a quella persona se esistono altre casseforti."
  - q: "La cifratura di Velcrypt è la stessa dell’iPhone?"
    a: "No, si aggiunge a quella. iOS cifra già il dispositivo e Velcrypt applica ai propri file la classe di Protezione dati più rigorosa di iOS, ma cifra anche ogni file con una propria chiave AES-256-GCM derivata dalla sequenza della cassaforte: un telefono sbloccato da solo non basta ad aprire una cassaforte."
  - q: "Velcrypt è stato sottoposto a un audit indipendente?"
    a: "Non ancora. Velcrypt si basa su CryptoKit di Apple e su algoritmi standard e ben studiati, e accoglieremmo volentieri una revisione di sicurezza indipendente, ma finora non ce n’è stata nessuna."
  - q: "Velcrypt nasconde il fatto che uso una cassaforte cifrata?"
    a: "Non del tutto. L’app è visibile nella schermata Home e chi dispone di strumenti forensi potrebbe capire che Velcrypt conserva dati cifrati e all’incirca quanti. Ciò che Velcrypt nasconde è quante casseforti hai e cosa contengono."
---

Questa pagina spiega, in parole semplici, cosa succede a foto, video e documenti quando li metti in Velcrypt, e dove finisce la protezione. È scritta per chi vuole capire il progetto prima di affidargli qualcosa di personale.

## In breve

Velcrypt è un’app per iPhone che conserva file privati in casseforti cifrate sul dispositivo. Apri una cassaforte disegnando una sequenza su una griglia di 5×5 punti. Quella sequenza non viene mai salvata da nessuna parte: passa invece attraverso una funzione di derivazione lenta che produce una chiave, ed è quella chiave a proteggere il contenuto della cassaforte.

Tutto avviene sull’iPhone stesso. Velcrypt non ha account, server né caricamenti, quindi non esiste altrove una copia della tua cassaforte o delle tue chiavi. È la sua forza e anche il suo limite principale: se la sequenza viene dimenticata, la cassaforte non si può recuperare, e se il telefono va perso la recuperi solo da un backup cifrato creato da te.

## Dalla sequenza alla chiave

### La sequenza

Una sequenza è una linea continua che passa per almeno 6 dei 25 punti, con almeno un cambio di direzione. Si consigliano sequenze più lunghe, da 8 a 12 punti, perché ogni punto in più moltiplica il numero di sequenze possibili che un aggressore dovrebbe provare. Trovi i pro e i contro in [sequenza, PIN o Face ID](id:pattern-lock-vs-pin-vs-face-id), e come funziona il blocco nella [pagina sullo sblocco a sequenza](id:pattern-lock).

### PBKDF2 con un salt per dispositivo

Quando finisci di disegnare, Velcrypt converte la successione di punti in una chiave usando **PBKDF2-HMAC-SHA512** con almeno **600.000 iterazioni**. PBKDF2 è una funzione di derivazione delle chiavi: una ricetta volutamente lenta e ripetibile che trasforma un segreto (la tua sequenza) in una chiave crittografica. La lentezza è il punto. Per te derivare una chiave richiede una frazione di secondo, ma chi prova milioni di sequenze deve pagare quel costo milioni di volte.

La derivazione aggiunge anche un **salt**, un valore casuale generato una sola volta sul tuo dispositivo e conservato nel portachiavi di iOS. Poiché il salt è unico per il tuo iPhone, due persone che disegnano per caso la stessa sequenza ottengono chiavi completamente diverse, e le tabelle precalcolate di “sequenze comuni → chiavi” diventano inutili.

### Una chiave master per cassaforte

Ogni cassaforte ha una propria **chiave master**: 256 bit casuali generati dal generatore di numeri casuali sicuro del sistema quando la cassaforte viene creata. È la chiave master a proteggere davvero i file della cassaforte. Viene conservata solo in forma protetta (avvolta), sigillata con la chiave derivata dalla tua sequenza. Senza la sequenza giusta, la chiave master non può essere aperta.

Questa separazione conta. La chiave master è davvero casuale, quindi la sua robustezza non dipende da quanto è facile ricordare la tua sequenza, e mantiene ogni cassaforte crittograficamente indipendente da tutte le altre sullo stesso telefono.

### Una chiave per ogni file

Dalla chiave master, Velcrypt deriva una chiave separata per ogni file usando **HKDF**, una funzione standard per derivare più chiavi indipendenti da un unico segreto robusto. Se la chiave di un file venisse mai esposta, non rivelerebbe né la chiave master né le chiavi degli altri file.

## Come vengono cifrati i file

### AES-256-GCM tramite Apple CryptoKit

Ogni foto, video e documento viene cifrato con **AES-256-GCM**, usando il framework CryptoKit di Apple invece di codice crittografico fatto in casa. AES-256-GCM è una cifratura autenticata: mantiene riservato il contenuto *e* rileva le manomissioni. Se anche un solo bit di un file cifrato viene alterato, la decifratura fallisce invece di produrre dati corrotti o manipolati. Per approfondire, vedi [la cifratura AES-256 spiegata](id:aes-256-encryption-explained) e la [pagina sulla cifratura](id:encryption).

### La Protezione dati di iOS come secondo livello

Oltre alla cifratura di Velcrypt, i file delle casseforti vengono scritti con la Protezione dati di iOS impostata sulla classe di **protezione completa**. Con questa classe, iOS mantiene i file cifrati con una chiave disponibile solo mentre l’iPhone è sbloccato. Quando il telefono è bloccato, nemmeno il sistema operativo può leggerli. Questo livello è fornito da Apple ed è indipendente dalle chiavi di Velcrypt, quindi un aggressore dovrebbe superarli entrambi.

## Perché una sequenza sconosciuta apre una cassaforte vuota

La maggior parte delle app confronta la tua password con qualcosa di salvato (un hash, un verificatore, una “risposta corretta”) e poi ti dice *password errata*. Velcrypt volutamente non lo fa.

Non c’è un elenco di casseforti né un valore salvato che confermi se una sequenza è “corretta”. Quando disegni una sequenza, Velcrypt deriva una chiave e prova ad aprire la cassaforte corrispondente. Se nessuna cassaforte corrisponde, l’app apre semplicemente una cassaforte nuova e vuota per quella sequenza. Per chi tiene in mano il telefono, una sequenza mai usata e una cassaforte reale ma vuota hanno lo stesso aspetto.

Questo ti dà la **negabilità plausibile**: la possibilità di affermare in modo credibile che non c’è altro da vedere, perché nulla nell’app dimostra il contrario. Puoi tenere una cassaforte esca con foto qualunque e una cassaforte separata per ciò che è davvero privato. La pagina sulle [casseforti nascoste](id:hidden-vaults) e le nostre guide sulle [casseforti esca](id:what-is-a-decoy-vault) e sulla [negabilità plausibile](id:plausible-deniability-explained) entrano nei dettagli.

Un effetto pratico: se ricordi male la sequenza anche di un solo punto, finirai in una cassaforte vuota invece di vedere un errore. È voluto, non è un bug.

## Blocco e selettore app

Velcrypt si blocca automaticamente quando passa in background, dopo un ritardo che puoi configurare. Quando si blocca, le chiavi della cassaforte vengono rimosse dalla memoria e la sequenza va disegnata di nuovo. I contenuti delle casseforti sono anche nascosti nel selettore app di iOS, così un’occhiata alle app recenti non mostra l’anteprima di una foto privata. Vedi [blocco automatico](id:auto-lock) per le impostazioni.

Non c’è sblocco con Face ID o Touch ID, per scelta. Un volto o un dito possono essere usati senza il tuo consenso, mentre dormi o sotto pressione. Una sequenza esiste solo nella tua memoria.

## Nessuna rete, nessun account, backup solo se lo crei tu

Velcrypt funziona completamente offline. Non c’è registrazione, indirizzo email, server né caricamento dei contenuti, e non vengono raccolte statistiche su ciò che conservi. La pagina [offline, senza account](id:offline-no-account) spiega cosa significa in pratica.

I dati delle casseforti sono anche **esclusi dai backup iCloud e sul computer (Finder)**. Così i tuoi file cifrati restano fuori dai server di Apple e da qualsiasi computer con cui sincronizzi, ma con una conseguenza concreta: se il tuo iPhone viene perso, si rompe o viene inizializzato, le casseforti se ne vanno con lui, a meno che tu non abbia un backup.

Per questo Velcrypt offre un **backup cifrato** gratuito. In Impostazioni → Backup crei un file `.velcrypt` della cassaforte aperta, cifrato con una password del backup scelta da te. Ogni cassaforte viene salvata separatamente, quindi un backup non rivela mai le altre casseforti. Il file lo salvi tu, per esempio in File, iCloud Drive o su un computer, e lo ripristini su qualsiasi iPhone. Velcrypt non riceve mai il file né la password, e una password del backup dimenticata non si può recuperare.

## Il modello di minaccia in sintesi

| Minaccia | Protetto? | Note |
|---|---|---|
| Qualcuno scorre la tua libreria di Foto | Sì | Gli elementi che importi e poi elimini da Foto (compreso Eliminati di recente) sono solo in Velcrypt. |
| Qualcuno prende il telefono sbloccato e apre Velcrypt | Sì | Serve la tua sequenza; una sbagliata mostra una cassaforte vuota. |
| Qualcuno cerca di dimostrare che hai altre casseforti | In gran parte | Nessun elenco, nessun messaggio di “sequenza errata”; l’app non mostra il numero di casseforti. |
| Furto di un iPhone bloccato | Sì | Protezione dati di iOS più la cifratura AES-256-GCM di Velcrypt. |
| Attacco a forza bruta sulla sequenza da file estratti | Rallentato | PBKDF2 con oltre 600.000 iterazioni e salt per dispositivo; una sequenza lunga fa la differenza. |
| Violazione di un account cloud | Sì | I dati non vengono caricati e sono esclusi dai backup iCloud; un backup cifrato che salvi su iCloud Drive resta cifrato con la tua password. |
| Manomissione dei file cifrati | Rilevata | L’autenticazione di AES-256-GCM rifiuta i dati modificati. |
| Qualcuno ti guarda mentre disegni la sequenza | No | Vedi sotto. |
| Malware o dispositivo con jailbreak | No | Vedi sotto. |
| Sequenza dimenticata o password del backup dimenticata | No | Nessun recupero possibile. |
| Telefono perso o inizializzato | Solo con backup | Ripristina un backup cifrato creato in Impostazioni → Backup. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Cosa Velcrypt non protegge

Ogni strumento di sicurezza ha dei limiti, e dovresti conoscere quelli di Velcrypt prima di affidartici.

- **Sguardi indiscreti.** Se qualcuno ti vede disegnare la sequenza, di persona o tramite una telecamera, può aprire quella cassaforte. Disegnala al riparo da sguardi e preferisci una sequenza che non somigli a una lettera o a una forma semplice.
- **Essere costretto a sbloccare.** Velcrypt non può impedire che qualcuno ti costringa a disegnare una sequenza. Una cassaforte esca (con il Premium) può aiutare; una [sequenza di emergenza](id:duress-pattern), che aprirebbe una cassaforte scelta e rimuoverebbe in silenzio l’accesso alle altre, è prevista per un aggiornamento futuro.
- **Un telefono consegnato con la cassaforte aperta.** Mentre una cassaforte è sbloccata, chiunque tenga il telefono vede ciò che vedi tu. Bloccala prima di passare il telefono a qualcuno.
- **Dispositivi compromessi o con jailbreak e malware.** Un software in grado di leggere lo schermo, registrare i tocchi o ispezionare la memoria delle app su un dispositivo compromesso può aggirare qualsiasi cifratura a livello di app.
- **Screenshot o foto dello schermo.** Velcrypt non può impedire a un’altra fotocamera di fotografare il tuo display.
- **Copie altrove.** L’importazione copia una foto; l’originale resta in Foto finché non lo elimini, e poi rimane in Eliminati di recente per circa 30 giorni. Possono esistere copie anche in Foto di iCloud, nelle app di chat, nelle email o sul telefono di qualcun altro. Segui [eliminare gli originali dopo l’importazione](id:delete-original-photos-after-import).
- **Sequenza o password del backup dimenticata.** In entrambi i casi i dati sono persi. Non esistono frasi di recupero né reimpostazioni. Se perdi il telefono, puoi recuperare solo ciò che hai salvato in un backup cifrato. Vedi [hai dimenticato la sequenza?](id:forgot-vault-pattern).
- **Rilevare che usi Velcrypt.** L’icona dell’app è visibile e strumenti forensi potrebbero vedere che Velcrypt contiene dati cifrati e all’incirca quanti. Velcrypt non pretende di nasconderlo: nasconde solo il numero di casseforti e il loro contenuto.
- **Sequenze deboli o facili da indovinare.** Una sequenza corta, o a forma di L, Z o quadrato, è molto più facile da indovinare. Prova una forma simile con il [verifica robustezza sequenza](id:pattern-strength-checker), mai quella vera.

## Revisione indipendente

Velcrypt si basa su componenti standard e ampiamente studiati e sulle librerie crittografiche di Apple, non su algoritmi fatti in casa. Tuttavia, un buon progetto non equivale a un progetto verificato. Velcrypt **non** è stato sottoposto a un audit indipendente. Accoglieremmo volentieri una revisione di sicurezza esterna e, se ci sarà, ne pubblicheremo qui l’esito.

## Glossario

- **AES-256-GCM** è una modalità di cifratura simmetrica che usa una chiave a 256 bit e autentica i dati, così ogni manomissione viene rilevata in fase di decifratura.
- **PBKDF2** (Password-Based Key Derivation Function 2) è uno standard che trasforma un segreto come una password o una sequenza in una chiave ripetendo molte volte una funzione di hash, rendendo lenti i tentativi.
- **Salt** è un valore casuale combinato con il tuo segreto prima della derivazione, così la stessa sequenza produce chiavi diverse su dispositivi diversi.
- **HKDF** (HMAC-based Key Derivation Function) è un metodo standard per derivare più chiavi indipendenti da un’unica chiave robusta.
- **Chiave master** è la chiave casuale a 256 bit che appartiene a una cassaforte e protegge tutte le chiavi dei suoi file.
- **Negabilità plausibile** è la proprietà per cui nulla nell’app può dimostrare l’esistenza di altre casseforti, così puoi mostrare in modo credibile una cassaforte senza rivelare le altre.
