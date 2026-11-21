---
pageId: pattern-lock
title: "Blocco con sequenza: sblocca la cassaforte su griglia 5×5"
description: "Velcrypt si sblocca con una sequenza disegnata su una griglia 5×5. Scopri le regole, come creare una sequenza sicura e quando usare Face ID."
h1: "Blocco con sequenza: una griglia 5×5 che solo la tua memoria può aprire"
navTitle: "Blocco con sequenza"
answer: "Velcrypt si apre con una sequenza che disegni su una griglia 5×5 di punti: una linea continua che tocca almeno 6 punti e cambia direzione almeno una volta. Si consigliano sequenze da 8–12 punti. Face ID è facoltativo, disattivato per impostazione predefinita e si attiva cassaforte per cassaforte."
keyFacts:
  - "Sblocchi disegnando una linea continua su una griglia 5×5 di 25 punti."
  - "Regole minime: almeno 6 punti e almeno un cambio di direzione."
  - "Lunghezza consigliata: 8–12 punti."
  - "Face ID e Touch ID sono facoltativi e disattivati per impostazione predefinita, perché la biometria può essere estorta: li attivi solo per le casseforti che scegli."
  - "La tua sequenza è anche il punto di partenza della chiave di cifratura della cassaforte."
primaryKeyword: "app blocco con sequenza iphone"
keywords: ["cassaforte foto con sequenza", "sequenza di sblocco 5x5", "cassaforte foto senza face id", "sbloccare app iphone con sequenza", "sequenza di sblocco sicura"]
datePublished: 2026-10-21
dateModified: 2026-11-21
summary: "Sblocca con una sequenza disegnata su una griglia 5×5. Almeno 6 punti e una svolta; consigliati 8–12 punti. Face ID solo se lo attivi tu."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Quanti punti deve avere una sequenza di Velcrypt?"
    a: "Almeno 6 punti, tracciati come un'unica linea continua con almeno un cambio di direzione. Per una protezione migliore usa 8–12 punti e inserisci diverse svolte."
  - q: "Velcrypt usa Face ID o Touch ID?"
    a: "Solo se lo attivi tu. È gratuito e disattivato per impostazione predefinita: lo accendi dentro una cassaforte da Impostazioni › Face ID. Nella schermata di blocco tocchi “Sblocca con Face ID” e scegli tra le casseforti attivate. Un volto può essere usato senza il tuo consenso, quindi tieni la cassaforte più privata solo con la sequenza."
  - q: "Cosa succede se dimentico la sequenza?"
    a: "La cassaforte non può più essere aperta, né da te né da Velcrypt. La sequenza fa parte del modo in cui viene derivata la chiave di cifratura e non esiste una frase di recupero o un account per reimpostarla. Scegli una sequenza che ricorderai con sicurezza."
  - q: "Una sequenza 5×5 è più sicura di una sequenza 3×3 come quella dei telefoni?"
    a: "Può esserlo. Una griglia 5×5 ha 25 punti invece di 9, quindi le sequenze possibili sono molte di più. Quanto sia sicura la tua dipende comunque da lunghezza, numero di svolte e prevedibilità della forma."
  - q: "Posso provare la mia sequenza da qualche parte prima di usarla?"
    a: "Puoi provare sequenze simili nel verificatore di sicurezza delle sequenze di Velcrypt, che funziona in locale nel browser. Non inserire mai la tua vera sequenza su un sito web: prova una sequenza somigliante."
---

La maggior parte delle app ti chiede un numero. Velcrypt ti chiede di disegnare. Il blocco con sequenza è la porta d'ingresso di ogni cassaforte ed è anche il segreto da cui viene derivata la chiave di cifratura, quindi merita qualche minuto di riflessione.

## Come funziona il blocco con sequenza 5×5

Il blocco con sequenza è un metodo di sblocco in cui tracci un percorso tra dei punti invece di digitare un codice. In Velcrypt la griglia ha 25 punti disposti su cinque righe e cinque colonne. Appoggi il dito, lo trascini sui punti che scegli e lo sollevi per terminare.

Ogni sequenza deve rispettare due regole:

1. **Almeno 6 punti.** Le linee più corte vengono rifiutate.
2. **Almeno un cambio di direzione.** Una sola linea retta non è consentita.

Questi sono i minimi. Velcrypt consiglia sequenze da **8–12 punti**, perché ogni punto in più moltiplica il numero di sequenze che qualcuno dovrebbe provare.

Ogni sequenza, oltre a sbloccare, decide anche quale cassaforte si apre. L'idea è spiegata nella pagina sulle [casseforti nascoste](id:hidden-vaults).

## Cosa rende sicura una sequenza

Una sequenza sicura è lunga, cambia spesso direzione e non assomiglia a niente. La griglia è grande, ma tendiamo a ripetere le stesse abitudini: partire dall'angolo in alto a sinistra, tracciare lettere o disegnare quadrati ordinati. Sono proprio le prime cose che proverebbe chi ti osserva o chi tira a indovinare.

| Abitudine | Perché è debole | Alternativa migliore |
| --- | --- | --- |
| Partire da un angolo | Gli angoli sono i punti di partenza più comuni | Parti da un punto interno o sul bordo |
| Lettere e forme (L, Z, S, U, un quadrato) | Facili da indovinare e da riconoscere sopra la tua spalla | Usa un percorso irregolare senza una forma evidente |
| Lunghi tratti dritti | Poche scelte, poca incertezza | Cambia direzione ogni due o tre punti |
| Restare in una zona | Usa solo una piccola parte della griglia | Attraversa più righe e colonne |
| Sequenze molto corte | Meno combinazioni da provare | Punta a 8–12 punti |

Qualche consiglio pratico:

- **Incrocia il tuo stesso percorso.** Le linee che passano sopra tratti precedenti sono più difficili da leggere da un alone sullo schermo o da un'occhiata veloce.
- **Rendila ritmica per te, non per gli altri.** Un percorso che disegni a memoria di gesto è più facile da ricordare di uno casuale su cui devi ragionare.
- **Disegnala qualche volta prima di affidarti a lei.** È la ripetizione che trasforma una nuova sequenza in memoria muscolare.
- **Copri lo schermo.** Nessuna sequenza aiuta se qualcuno ti guarda mentre la disegni. In pubblico inclina il telefono o copri la griglia.

Se vuoi un secondo parere, il [verificatore di sicurezza delle sequenze](id:pattern-strength-checker) fornisce una valutazione approssimativa e una stima in bit basate su lunghezza, svolte, incroci e copertura della griglia. È un'euristica, non una garanzia, e conviene provare una sequenza simile alla tua invece di quella vera.

## Face ID e Touch ID: facoltativi e spenti di base

La sequenza apre sempre ogni cassaforte. Face ID (o Touch ID) è un'aggiunta facoltativa e gratuita, disattivata per impostazione predefinita. Se vuoi, lo attivi dentro una cassaforte da Impostazioni › Face ID e le dai un nome per l'elenco Face ID. Nella schermata di blocco compare il pulsante “Sblocca con Face ID” solo quando almeno una cassaforte lo ha attivo: dopo il riconoscimento scegli dall'elenco delle casseforti attivate, e se è una sola si apre direttamente. Le casseforti senza Face ID non compaiono mai.

Non c'è riserva con il codice dell'iPhone. La copia della chiave per Face ID resta nel Portachiavi di questo iPhone (non su iCloud né nei backup) ed è legata ai volti e alle impronte registrati in quel momento: se ne aggiungi uno o reimposti Face ID, si disattiva per quelle casseforti e va riattivato dopo averle aperte con la sequenza.

Perché è spento di base? La biometria è comoda proprio perché è sempre con te, e questa è anche la sua debolezza: un volto può essere messo davanti al telefono e un dito premuto sul sensore senza il tuo consenso. Chi riesce a farti guardare il telefono può vedere e aprire ogni cassaforte dell'elenco Face ID. Una sequenza invece esiste solo nella tua testa. Per questo il consiglio è semplice: tieni la cassaforte più privata solo con la sequenza e usa Face ID, se ti va, per quelle di comodo. La sequenza di emergenza funziona solo con le sequenze e l'elenco Face ID non la attiva; quando scatta, le casseforti eliminate spariscono anche dall'elenco. I pro e i contro sono confrontati più nel dettaglio in [sequenza, PIN o Face ID](id:pattern-lock-vs-pin-vs-face-id).

## La tua sequenza e la chiave di cifratura

La sequenza non viene semplicemente controllata e poi dimenticata. Velcrypt la fa passare attraverso una funzione di derivazione della chiave volutamente lenta per ottenere la chiave che sblocca la chiave principale della cassaforte, che a sua volta protegge ogni file. L'intera catena è descritta nella pagina sulla [cifratura](id:encryption).

C'è una conseguenza da dire con onestà. Poiché la sequenza fa parte della chiave, non esiste un link «reimposta sequenza» né un account a cui appoggiarsi. Se la dimentichi, la cassaforte resta chiusa per sempre. Leggi [cosa fare se dimentichi la sequenza della cassaforte](id:forgot-vault-pattern) prima di sceglierne una e scegli qualcosa che ricorderai ancora tra sei mesi.

## Da cosa una sequenza non può proteggerti

Una sequenza sicura alza l'asticella, ma è solo un livello. Non può fermare chi ti filma o ti osserva mentre la disegni, chi riceve il telefono da te mentre una cassaforte è aperta, né un malware su un dispositivo con jailbreak. La [pagina sulla sicurezza](id:security#what-velcrypt-does-not-protect-against) elenca questi limiti per intero. Abbinare la sequenza al [blocco automatico](id:auto-lock) chiude la falla più comune: una cassaforte lasciata aperta quando appoggi il telefono.
