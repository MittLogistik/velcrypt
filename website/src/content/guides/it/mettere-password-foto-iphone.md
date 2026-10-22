---
pageId: password-protect-photos-iphone
title: "Come mettere una password alle foto su iPhone"
description: "iOS non ha una password per singola foto. Ecco le vere opzioni per proteggere con password le foto su iPhone e cosa protegge davvero ognuna."
h1: "Come mettere una password alle foto su iPhone"
navTitle: "Password per le foto"
answer: "iOS non permette di mettere una password su una singola foto. Le opzioni integrate più vicine sono nasconderla nell’album Nascosti bloccato con Face ID o aggiungerla a una nota protetta con una password di Note propria. Per proteggere foto specifiche con un segreto diverso dal codice del dispositivo, copiale in un’app cassaforte cifrata ed elimina gli originali."
keyFacts:
  - "L’app Foto non ha password per singola foto né per singolo album."
  - "L’album Nascosti si apre con Face ID, Touch ID o il codice del dispositivo, non con una password separata."
  - "Una nota protetta può usare una password di Note propria, separata dal codice dell’iPhone."
  - "Aggiungere una foto a una nota o a una cassaforte crea una copia: l’originale resta in Foto finché non lo elimini."
  - "Un’app cassaforte cifrata dà alle singole foto un blocco indipendente dal dispositivo."
primaryKeyword: "mettere password foto iphone"
keywords: ["proteggere foto con password iphone", "password singole foto iphone", "mettere password alle immagini iphone", "bloccare singole foto iphone", "password foto iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Perché iOS non ha una password per singola foto e tre modi pratici per mettere un vero blocco su foto specifiche."
category: hiding
order: 4
related: [lock-photos-iphone, hide-photos-iphone, velcrypt-vs-apple-notes-locked-notes, pattern-lock, encryption, delete-original-photos-after-import]
faq:
  - q: "Si può mettere una password a una singola foto su iPhone?"
    a: "Non nell’app Foto. iOS blocca solo gli album Nascosti ed Eliminati di recente, e lo fa con Face ID, Touch ID o il codice del dispositivo. Una singola foto può avere una password propria solo spostandone una copia in una nota protetta o in un’app cassaforte."
  - q: "Posso impostare una password diversa per l’album Nascosti?"
    a: "No. L’album Nascosti usa sempre Face ID, Touch ID o il codice del dispositivo. Non esiste un’impostazione per una password separata dell’album Nascosti."
  - q: "Le foto nelle note protette sono cifrate?"
    a: "Sì. Apple cifra il contenuto delle note protette, immagini allegate comprese. Se usi una password di Note separata e la dimentichi, Apple non può recuperare quelle note."
  - q: "Se metto una password a una foto, sparisce dal rullino?"
    a: "Non in automatico. Note protette e app cassaforte creano una copia, quindi devi eliminare l’originale da Foto e poi da Eliminati di recente perché sparisca davvero."
  - q: "Per le foto è più sicura una password o Face ID?"
    a: "Per tenere fuori le persone che ti stanno fisicamente vicino, spesso sì. Face ID può essere usato mentre dormi o sotto pressione, e il blocco di Foto ricade sul codice del dispositivo, che altri potrebbero conoscere. Un segreto separato evita entrambi i problemi."
---

Molti cercano un modo per mettere una password a una singola foto, come si fa con un PDF. iOS non lo prevede. Offre invece alcune funzioni vicine, e quale fa al caso tuo dipende da cosa intendi per «password» e da chi vuoi proteggere la foto.

## Perché non esiste una password per singola foto

Il modello di sicurezza dell’iPhone protegge l’intero dispositivo con un solo codice. Quando il telefono è bloccato, i dati sono cifrati; una volta sbloccato, le app che apri possono mostrare i loro contenuti. Le singole foto non hanno un proprio blocco. L’app Foto aggiunge una seconda richiesta solo per due album di sistema, Nascosti ed Eliminati di recente, e quella richiesta usa gli stessi Face ID, Touch ID o codice della schermata di blocco.

Dietro la domanda si nascondono quindi due esigenze diverse:

1. **«Non la voglio nel rullino.»** È un problema di visibilità, e nasconderla lo risolve.
2. **«Voglio che serva un segreto che conosco solo io.»** È un problema di accesso, e serve un blocco diverso dal codice del dispositivo.

## Opzione 1: nasconderla dietro Face ID

Se la tua preoccupazione principale è che qualcuno ci passi sopra scorrendo, nasconderla è rapido:

1. Apri la foto in **Foto**.
2. Tocca **Altro (•••)** › **Nascondi**.
3. Controlla che **Usa Face ID** sia attivo in **Impostazioni › App › Foto** (Impostazioni › Foto prima di iOS 18).

<!-- TODO verify iOS label -->

Ora la foto si trova nell’album Nascosti, dietro l’autenticazione biometrica. Non è una password nel senso comune: chiunque conosca il codice del tuo iPhone può scegliere il codice come alternativa e aprire l’album. Trovi più dettagli in [come nascondere le foto su iPhone](id:hide-photos-iphone).

## Opzione 2: una nota protetta con password propria

Apple Note è l’unica app integrata che ti permette di impostare una password separata, diversa dal codice del dispositivo, per i contenuti che scegli. Una nota protetta è cifrata, e le foto allegate sono incluse.

1. Vai in **Impostazioni › App › Note › Password** (Impostazioni › Note › Password nelle versioni precedenti) e scegli di usare una password personalizzata invece del codice dell’iPhone. Aggiungi un suggerimento che capisci tu e gli altri no.
2. In **Note**, crea una nuova nota. Tocca il pulsante della fotocamera e scatta una foto direttamente nella nota, oppure scegline una dalla libreria.
3. Tocca **Altro (•••)** › **Blocca**.
4. Torna in Foto ed elimina l’originale, poi eliminalo di nuovo da **Eliminati di recente**.

<!-- TODO verify iOS label -->

Scattare la foto direttamente nella nota è la strada più pulita, perché così non finisce mai nel rullino.

Tieni presenti i compromessi. Note si sincronizza tramite iCloud se usi iCloud per Note, e non è pensata per guardare tante foto o video. Se dimentichi la password personalizzata, quelle note non si possono più aprire. [Velcrypt vs note protette di Apple Note](id:velcrypt-vs-apple-notes-locked-notes) approfondisce il confronto.

## Opzione 3: un’app cassaforte cifrata

Una cassaforte per foto è un’app che conserva una propria copia cifrata delle tue immagini, bloccata con un segreto gestito dall’app. È quanto di più vicino esista a una vera password per singola foto: decidi tu esattamente quali foto entrano, e il codice del dispositivo non le apre.

Prima di fidarti di una, controlla alcune cose:

- **Crittografia vera,** non una semplice cartella nascosta. L’app dovrebbe cifrare i file sul dispositivo con un algoritmo autenticato moderno.
- **Un blocco indipendente dal dispositivo.** Se la cassaforte si apre solo con Face ID, eredita lo stesso problema del codice di riserva dell’album Nascosti.
- **Una gestione dei dati chiara.** Carica su un server? Richiede un account? Cosa succede se dimentichi il codice?

[Le app cassaforte per foto sono sicure?](id:are-photo-vault-apps-safe) approfondisce queste domande.

## Le opzioni a confronto

| | Nascondi | Nota protetta | App cassaforte |
| --- | --- | --- | --- |
| Separata dal codice del dispositivo | No | Sì, con una password di Note personalizzata | Di solito |
| Toglie la foto dal rullino | Sì, la sposta in Nascosti | Solo se elimini l’originale | Solo se elimini l’originale |
| Comoda per molte foto | Sì | No | Sì |
| Gestisce bene i video | Sì | Male | Di solito |
| Integrata in iOS | Sì | Sì | No |

## Scegliere un segreto che valga qualcosa

Una password separata aiuta solo se è davvero separata. Qualche abitudine fa la differenza:

- **Non riusare il codice dell’iPhone.** Se le persone da cui ti proteggi conoscono il tuo codice, una password di Note o un codice della cassaforte uguali danno loro accesso a entrambi.
- **Evita l’ovvio.** Compleanni, anniversari, sequenze tipo 1234 e lo stesso codice dell’app della banca sono le prime cose che chiunque prova.
- **Rendilo memorabile solo per te.** Nella maggior parte dei casi non potrai reimpostarlo, quindi scegli qualcosa che ricorderai anche fra mesi senza doverlo scrivere su un foglietto nella cover del telefono.
- **Fai attenzione a chi hai intorno.** Qualsiasi segreto può essere letto da sopra la spalla. Inseriscilo quando nessuno guarda lo schermo.

## Una nota sugli originali

Qualunque blocco tu scelga, una copia protetta non serve se ne esiste ancora una non protetta. Dopo aver spostato una foto in una nota o in una cassaforte, eliminala da Foto, svuotala da Eliminati di recente e pensa agli altri posti in cui potrebbe trovarsi: un album condiviso di iCloud, una chat, un’app di archiviazione cloud. La guida su come [eliminare gli originali dopo l’importazione](id:delete-original-photos-after-import) ti accompagna passo per passo.

## Dove si inserisce Velcrypt

Velcrypt risponde alla seconda esigenza: un segreto che conosci solo tu. Invece di digitare una password, disegni una [sequenza](id:pattern-lock) su una griglia 5×5 di punti. Deve passare per almeno sei punti con almeno un cambio di direzione, e sono consigliate sequenze da otto a dodici punti. Velcrypt non usa affatto Face ID né Touch ID, quindi né il codice del tuo iPhone né il tuo volto possono aprirla.

Ogni sequenza apre una cassaforte propria, e le foto al suo interno sono [cifrate](id:encryption) con AES-256-GCM usando chiavi derivate da quella sequenza. Poiché tutto resta sul dispositivo ed è escluso dai backup di iCloud, non c’è modo di reimpostare una sequenza dimenticata (puoi però creare tu un backup cifrato dei contenuti). Se preferisci una password recuperabile, vale la pena valutare con onestà questo limite prima di spostare qualcosa di importante.
