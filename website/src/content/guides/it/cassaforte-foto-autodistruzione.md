---
pageId: self-destruct-photo-vault
title: "Cassaforte foto con autodistruzione su iPhone: come funziona"
description: "Come funziona una cassaforte foto che si autodistrugge su iPhone: cancellazione dopo tentativi errati o sequenza di emergenza, rischi e backup."
h1: "Casseforti foto con autodistruzione su iPhone: come funzionano e quanto ti costano"
navTitle: "Cassaforte con autodistruzione"
answer: "Una cassaforte foto con autodistruzione elimina il suo contenuto quando si verifica una condizione. Le due più comuni sono troppi tentativi errati e un codice di emergenza. La prima la può attivare chiunque; il codice di emergenza solo tu. Velcrypt usa una sequenza di emergenza che apre una cassaforte esca ed elimina definitivamente tutte le altre. L'eliminazione non si annulla: tieni un backup."
keyFacts:
  - "Le funzioni di autodistruzione eliminano il contenuto della cassaforte quando scatta una condizione; l'eliminazione non si può annullare."
  - "La cancellazione dopo tentativi errati la può attivare chiunque sbagli, anche un bambino o un malintenzionato."
  - "Un codice di emergenza lo attivi solo tu, di proposito, e può essere silenzioso."
  - "L'iPhone stesso può inizializzare tutti i dati dopo 10 codici errati, se attivi l'opzione."
  - "La sequenza di emergenza di Velcrypt apre una cassaforte esca ed elimina definitivamente tutte le altre (Premium)."
  - "Dopo un'autodistruzione, l'unico modo per tornare indietro è un file di backup cifrato creato prima."
primaryKeyword: "cassaforte foto autodistruzione iphone"
keywords: ["app foto che si autodistrugge", "app cassaforte autodistruzione", "cancellare foto dopo tentativi errati", "cassaforte foto eliminazione automatica", "cancellare foto in emergenza iphone"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Tentativi errati o sequenza di emergenza: il vero costo dell'eliminazione irreversibile e come tenere un backup sicuro prima di affidarti a una delle due."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "Esiste una cassaforte foto per iPhone che si autodistrugge?"
    a: "Sì. Alcune app cassaforte cancellano il contenuto dopo un certo numero di tentativi errati, altre offrono un codice di emergenza o antipanico. Velcrypt ha una sequenza di emergenza (Premium) che apre una cassaforte esca ed elimina definitivamente tutte le altre casseforti sull'iPhone."
  - q: "Velcrypt elimina le casseforti dopo troppe sequenze sbagliate?"
    a: "No. In Velcrypt una sequenza che l'app non conosce apre semplicemente una nuova cassaforte vuota, quindi non c'è nessun «tentativo errato» da contare. L'eliminazione avviene solo quando qualcuno disegna la sequenza di emergenza che hai configurato."
  - q: "Posso recuperare le foto dopo l'autodistruzione di una cassaforte?"
    a: "Non dal telefono. In Velcrypt l'unico modo è un file di backup cifrato creato prima in Impostazioni → Backup e conservato fuori dall'app. La sequenza di emergenza non tocca i file di backup salvati altrove."
  - q: "Una funzione di autodistruzione equivale a una cancellazione sicura?"
    a: "Non esattamente. La memoria flash non garantisce che i byte eliminati vengano cancellati fisicamente. I dati delle casseforti di Velcrypt sono cifrati con AES-256-GCM e le chiavi vengono eliminate insieme alle casseforti, quindi ciò che resta è testo cifrato illeggibile."
  - q: "Posso usare una cassaforte con autodistruzione se la polizia chiede di vedere il mio telefono?"
    a: "No. Non usare nessuna funzione di eliminazione per distruggere prove o opporti a una richiesta legittima. Le leggi cambiano da Paese a Paese, ed eliminare dati di fronte a una richiesta legale può essere di per sé un reato. Chiedi piuttosto una consulenza legale."
---

«Una cassaforte che si autodistrugge» sembra la protezione definitiva. A volte lo è. Ma una funzione di autodistruzione è anche l'unica funzione di un'app cassaforte che può farti perdere tutto in un secondo. Questa guida spiega come funzionano gli approcci più comuni, in cosa ciascuno è bravo e in cosa no, e come usarne uno senza perdere i file che volevi tenere.

## Cosa significa «autodistruzione» in una cassaforte foto

Una funzione di autodistruzione elimina in parte o del tutto il contenuto di una cassaforte quando scatta una condizione. Su iPhone ne vedrai soprattutto tre tipi:

1. **Cancellazione dopo tentativi errati:** dopo un certo numero di PIN o password sbagliati, l'app elimina il suo contenuto.
2. **Codice di emergenza o antipanico:** un codice speciale che, una volta inserito, apre contenuti innocui ed elimina il resto. [La password di emergenza, spiegata](id:duress-password-explained) racconta il contesto.
3. **Inizializzazione del dispositivo:** iOS può inizializzare l'intero iPhone dopo 10 tentativi errati del codice (Impostazioni › Face ID e codice › Inizializza dati), e Dov'è può inizializzare a distanza un telefono smarrito.

Risolvono problemi diversi e falliscono in modi diversi.

## Cancellazione dopo tentativi errati

L'idea è semplice: se qualcuno continua a tirare a indovinare, elimina tutto prima che gli vada bene.

**In cosa funziona bene**

- Funziona anche se non ci sei, per esempio se ti rubano il telefono.
- Pone un limite rigido ai tentativi su PIN brevi.

**Dove non basta**

- **Chiunque può attivarla.** Un bambino che gioca con il telefono, un amico che vuole fare uno scherzo o un malintenzionato che preferisce distruggere i tuoi file piuttosto che arrendersi possono farla scattare, di proposito o per sbaglio.
- **Si vede.** Dopo una cancellazione la cassaforte è chiaramente vuota o azzerata, e questo dice all'altra persona che è successo qualcosa.
- **Protegge dai tentativi, non dalla costrizione.** Se qualcuno ti costringe a inserire il codice giusto, il contatore dei tentativi errati non entra mai in gioco.

Conviene anche verificare come l'app conta i tentativi: se il contatore sopravvive al riavvio dell'app e se elimina davvero i dati o si limita a bloccarti fuori.

## Codici e sequenze di emergenza

Un codice di emergenza lo attivi tu, di proposito, di solito quando qualcuno ti costringe a sbloccare l'app. Le implementazioni migliori aprono un'esca credibile ed eliminano in silenzio il contenuto sensibile che c'è dietro.

**In cosa funziona bene**

- **Solo tu puoi attivarlo.** Nessuno lo fa scattare tirando a indovinare.
- **Può essere silenzioso.** Se fatto bene, sullo schermo nulla mostra che qualcosa è stato eliminato.
- **È pensato per la costrizione,** proprio la situazione che un contatore di tentativi errati non sa gestire.

**Dove non basta**

- **Devi poterlo usare.** Se qualcuno prende il telefono mentre è già sbloccato, o ti guarda mentre disegni il segreto vero, non serve.
- **Devi ricordarlo sotto stress,** senza confonderlo con il segreto vero.
- **È irreversibile** quanto qualsiasi altra cancellazione.

## Come lo fa Velcrypt

Velcrypt non ha di proposito **nessuna cancellazione dopo tentativi errati**. Ogni sequenza disegnata sulla griglia 5×5 apre la propria cassaforte, e una sequenza che l'app non conosce apre semplicemente una nuova cassaforte vuota, senza errori. Non c'è nessuna «sequenza sbagliata» da contare: è questo che rende negabili le [casseforti nascoste](id:hidden-vaults), e significa anche che nessuno può cancellare le tue casseforti solo sbagliando i tentativi.

Velcrypt ha invece una [sequenza di emergenza](id:duress-pattern), parte del Premium:

- La configuri in Impostazioni → Sequenza di emergenza, dall'interno di una [cassaforte esca](id:what-is-a-decoy-vault) con contenuti innocui.
- Disegni due volte una sequenza separata e confermi. Non può essere una sequenza che apre già una cassaforte.
- Nella schermata di blocco, disegnarla apre la cassaforte esca ed elimina in silenzio e definitivamente tutte le altre casseforti su quell'iPhone. Lo sblocco ha lo stesso aspetto e la stessa durata di uno normale.
- L'app non mostra mai se è impostata una sequenza di emergenza. Ce n'è una per iPhone; una nuova sostituisce la precedente. Per disattivarla devi disegnarla, e questo non elimina nulla.
- Continua a funzionare se il Premium scade; solo la configurazione richiede il Premium.
- Se la configuri nell'unica cassaforte del telefono, non c'è nient'altro da eliminare, e l'app te lo segnala.

## Gli approcci a confronto

| | Cancellazione dopo tentativi errati | Codice o sequenza di emergenza | «Inizializza dati» dell'iPhone |
|---|---|---|---|
| Chi può attivarla | Chiunque sbagli abbastanza volte | Solo chi conosce il segreto di emergenza | Chiunque sbagli il codice 10 volte |
| Pensata per | Tentativi, furto | Sblocco sotto costrizione | Tentativi, furto |
| Visibile dopo | Di solito | Può essere silenziosa | Sì, il telefono viene azzerato |
| Cosa elimina | Il contenuto dell'app | Dipende dall'app; in Velcrypt tutte le casseforti tranne l'esca | Tutto sull'iPhone |
| Reversibile | Solo da un backup | Solo da un backup | Solo da un backup |

## Il compromesso che non puoi evitare: è definitiva

Ogni funzione di autodistruzione scambia la possibilità di recupero con la protezione. Prima di attivarne una, sii onesto con te stesso su tre punti.

### Ti serve un backup altrove

Le casseforti di Velcrypt sono escluse dai backup di iCloud e del computer, quindi una cassaforte eliminata sparisce dal telefono. L'unico modo per tornare indietro è un **file di backup cifrato creato prima**. In Velcrypt, Impostazioni → Backup crea un file .velcrypt per la cassaforte aperta, protetto da una password di backup che scegli tu. È gratuito. Salvalo fuori dall'app, per esempio in File, su iCloud Drive o su un computer, e la sequenza di emergenza non lo toccherà. Custodisci bene anche la password del backup: una password di backup dimenticata non si può recuperare. La [pagina sulla sicurezza](id:security#encrypted-backup) spiega come sono protetti i backup.

### Eliminato non significa sempre cancellato fisicamente

La memoria flash non garantisce che i byte eliminati vengano cancellati fisicamente subito. Ciò che ti protegge è la cifratura: i dati delle casseforti di Velcrypt sono cifrati con AES-256-GCM e le chiavi vengono eliminate insieme alle cartelle delle casseforti, quindi i dati residui sono testo cifrato senza chiave. Diffida di qualsiasi app che prometta di più.

### Elimina solo ciò che è dentro l'app

Gli originali ancora in Foto, in «Eliminati di recente», su iCloud, nelle chat o su un altro dispositivo non vengono toccati. [Elimina gli originali dopo l'importazione](id:delete-original-photos-after-import).

## Usala in modo responsabile

Una funzione di autodistruzione è uno strumento per la sicurezza personale e la privacy. Non usarla mai per distruggere prove o per aggirare una richiesta legittima di polizia, autorità di frontiera o tribunale. Le leggi cambiano da Paese a Paese, ed eliminare dati di fronte a una richiesta legale può essere di per sé un reato. Se ti trovi in quella situazione, o te lo aspetti, chiedi una consulenza legale.

## Ti conviene una cassaforte con autodistruzione?

Sceglila se essere costretto ad aprire la cassaforte è un rischio realistico per te e preferisci perdere i file piuttosto che vederli esposti. Lasciala perdere, o aspetta di avere un backup, se i file sono insostituibili.

Qualunque app tu scelga, verifica come si attiva la sua funzione di autodistruzione, se è visibile e cosa elimina davvero. La nostra [checklist sulla sicurezza delle app cassaforte](id:are-photo-vault-apps-safe) ti aiuta. Se scegli Velcrypt, [come configurare una cassaforte esca e una sequenza di emergenza](id:set-up-decoy-vault-and-duress-pattern) ti guida nella configurazione partendo dal backup, e i [prezzi](id:pricing) elencano i piani Premium.
