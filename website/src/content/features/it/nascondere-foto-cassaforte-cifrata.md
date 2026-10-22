---
pageId: hide-photos
title: "Nascondere foto su iPhone in una cassaforte cifrata"
description: "Importa le foto dell'iPhone in una cassaforte cifrata Velcrypt, elimina gli originali e le copie in «Eliminati di recente» e ordinale in album."
h1: "Nascondi le foto in una cassaforte cifrata"
navTitle: "Nascondere foto"
answer: "Velcrypt importa le foto dalla libreria di Foto come copie cifrate dentro una cassaforte. Gli originali restano in Foto finché non li elimini, quindi dopo l'importazione li cancelli e svuoti «Eliminati di recente». Nella cassaforte puoi ordinare le foto in album e guardarle con zoom e scorrimento."
keyFacts:
  - "Importare copia la foto nella cassaforte; l'originale resta in Foto."
  - "Poi elimina gli originali e svuota «Eliminati di recente», dove altrimenti restano circa 30 giorni."
  - "Ogni foto importata viene cifrata sul dispositivo con AES-256-GCM."
  - "Organizza le foto in album dentro ogni cassaforte."
  - "Guarda le foto con lo zoom a due dita e scorri dall'una all'altra."
primaryKeyword: "app per nascondere foto iphone"
keywords: ["nascondere foto iphone", "cassaforte foto cifrata iphone", "album foto privato app", "bloccare foto iphone", "cassaforte foto segreta"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importa le foto come copie cifrate, elimina gli originali e svuota «Eliminati di recente», poi sfogliale in album con zoom e scorrimento."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "Velcrypt elimina la foto dal mio rullino?"
    a: "Non automaticamente. L'importazione crea una copia cifrata nella cassaforte e lascia l'originale in Foto. Elimina tu l'originale, poi rimuovilo anche da «Eliminati di recente»."
  - q: "Quanto restano le foto in «Eliminati di recente»?"
    a: "Circa 30 giorni, a meno che tu non le elimini prima da lì. Fino ad allora può recuperarle chiunque riesca ad aprire quell'album."
  - q: "Nascondere foto su iPhone con Velcrypt è diverso dall'album Nascosti?"
    a: "Sì. L'album Nascosti fa ancora parte della libreria di Foto e può sincronizzarsi tramite Foto di iCloud. Una foto in Velcrypt è cifrata con chiavi derivate dalla tua sequenza e non è inclusa nei backup di iCloud o del computer."
  - q: "Velcrypt carica le mie foto da qualche parte?"
    a: "No. Velcrypt non ha server né account. Le foto importate vengono cifrate e salvate solo sul tuo iPhone."
---

Il rullino è il posto più visitato del telefono. Chi lo prende in mano per guardare una foto può scorrere oltre e vedere tutto il resto. Spostare le foto private in Velcrypt le toglie da quello scorrimento e le mette dietro una sequenza e la crittografia.

## Come funziona l'importazione delle foto

Importare significa portare una foto dalla libreria di Foto dell'iPhone in una cassaforte Velcrypt. Scegli una o più foto con il selettore foto standard di iOS e Velcrypt salva una copia cifrata nella cassaforte che hai aperta in quel momento.

La parola chiave è **copia**. Velcrypt non sposta né elimina nulla nella libreria di Foto. L'originale resta esattamente dov'era finché non lo rimuovi tu. È una misura di sicurezza, perché puoi verificare che l'importazione sia riuscita prima di cancellare qualcosa, ma significa che un passaggio in più spetta a te.

Ogni foto importata viene cifrata sul dispositivo con AES-256-GCM, usando una chiave derivata dalla chiave principale di quella cassaforte. Come vengono costruite queste chiavi è spiegato nella pagina sulla [crittografia](id:encryption).

## Eliminare gli originali

Una foto è privata solo se le altre copie sono sparite. Dopo l'importazione:

1. **Apri Foto e seleziona gli originali** che hai appena importato.
2. **Eliminali.** Finiscono nell'album «Eliminati di recente».
3. **Apri «Eliminati di recente».** Da iOS 18 si trova nella sezione «Utility» dell'app Foto; nelle versioni precedenti è verso il fondo della scheda Album.
4. **Eliminali di nuovo da lì.** Altrimenti restano recuperabili per circa 30 giorni.

<!-- TODO verify iOS label -->

Da iOS 16 gli album «Eliminati di recente» e «Nascosti» sono bloccati per impostazione predefinita con Face ID, Touch ID o il codice, ma chi conosce il codice del dispositivo può comunque aprirli. Se usi Foto di iCloud, eliminare una foto su un dispositivo la rimuove anche dagli altri. La procedura completa è in [come eliminare gli originali dopo l'importazione](id:delete-original-photos-after-import).

Pensa anche alle copie altrove: foto inviate in chat, album condivisi, allegati email o un computer con cui hai sincronizzato in passato. Velcrypt può proteggere solo ciò che è dentro la cassaforte.

## Organizzare le foto in album

Dentro ogni cassaforte puoi creare album, per esempio «Documenti», «Personale» o «Viaggio», e ordinarci le foto. La selezione multipla ti permette di spostare molte foto alla volta e puoi spostare elementi tra album ogni volta che cambi sistema. Trovi i dettagli nella pagina sugli [album](id:albums).

Gli album appartengono alla cassaforte in cui si trovano. Una sequenza diversa apre una cassaforte diversa con i propri album: è così che le [casseforti nascoste](id:hidden-vaults) tengono raccolte separate del tutto distinte.

## Guardare le foto nella cassaforte

Le foto si aprono nel visualizzatore integrato di Velcrypt. Puoi allargare con due dita per ingrandire i dettagli e scorrere a sinistra o a destra per muoverti in un album. Le foto vengono decifrate per la visualizzazione mentre la cassaforte è aperta e l'app si blocca di nuovo da sola quando esci, secondo l'impostazione di [blocco automatico](id:auto-lock).

## Velcrypt o album Nascosti

| | Album Nascosti dell'iPhone | Cassaforte Velcrypt |
| --- | --- | --- |
| Dove si trova la foto | Nella libreria di Foto | In una cassaforte cifrata nell'app |
| Come si sblocca | Face ID, Touch ID o codice del dispositivo | La tua sequenza Velcrypt |
| iCloud | Si sincronizza con Foto di iCloud se attivo | Non inclusa nei backup di iCloud o del computer |
| Raccolte separate | Un solo album Nascosti | Una cassaforte separata per ogni sequenza |

L'album Nascosti è comodo e per molte persone basta. I suoi limiti sono descritti in [l'album Nascosti dell'iPhone è davvero privato?](id:is-iphone-hidden-album-private) e una panoramica di tutte le opzioni si trova in [come nascondere le foto su iPhone](id:hide-photos-iphone).

## Buono a sapersi

- Velcrypt non ha una fotocamera integrata. Scatta la foto con l'app Fotocamera, importala e poi elimina l'originale.
- Le foto possono contenere dati sulla posizione e sul dispositivo. Se pensi di condividerle in seguito, [rimuovi prima i metadati](id:remove-photo-metadata-iphone).
- Nella prima versione i dati delle casseforti non finiscono nei backup. Se una foto è insostituibile, tienine una seconda copia in un posto di cui ti fidi.
