---
pageId: hide-videos
title: "Nascondere video su iPhone in una cassaforte cifrata"
description: "Importa i video in una cassaforte cifrata Velcrypt, riproducili nell'app, elimina gli originali da Foto e tieni d'occhio lo spazio che occupano."
h1: "Nascondi i video in una cassaforte cifrata"
navTitle: "Nascondere video"
answer: "Velcrypt importa i video dalla libreria di Foto come copie cifrate e li riproduce dentro la cassaforte. Gli originali restano in Foto finché non li elimini e svuoti «Eliminati di recente». I video sono pesanti, quindi controlla lo spazio libero prima di importarne molti insieme."
keyFacts:
  - "Importare copia il video nella cassaforte; l'originale resta in Foto."
  - "I video si riproducono dentro Velcrypt, senza uscire dalla cassaforte."
  - "Ogni video viene cifrato sul dispositivo con AES-256-GCM."
  - "Finché non elimini l'originale, il video occupa temporaneamente spazio due volte."
  - "«Eliminati di recente» conserva i video eliminati per circa 30 giorni, se non lo svuoti."
primaryKeyword: "app per nascondere video iphone"
keywords: ["nascondere video iphone", "cassaforte video cifrata iphone", "app video privati iphone", "bloccare video iphone", "nascondere video dal rullino"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Importa i video come copie cifrate, guardali dentro la cassaforte ed elimina gli originali senza restare a corto di spazio."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Posso guardare i video senza esportarli da Velcrypt?"
    a: "Sì. I video si riproducono nel visualizzatore di Velcrypt mentre la cassaforte è aperta. Non serve esportarli nell'app Foto per guardarli."
  - q: "Perché lo spazio libero è diminuito dopo aver importato i video?"
    a: "L'importazione crea una copia, quindi finché non elimini l'originale da Foto e svuoti «Eliminati di recente» il video esiste due volte. Una volta sparito l'originale, lo spazio si libera."
  - q: "I video nascosti nella cassaforte finiscono nel Backup di iCloud?"
    a: "No. I dati delle casseforti sono esclusi dai backup di iCloud e del computer. Se vuoi una copia, crea un backup cifrato in Impostazioni → Backup."
  - q: "I video in Velcrypt si sincronizzano sugli altri miei dispositivi?"
    a: "No. Velcrypt non ha sincronizzazione cloud e funziona solo su iPhone. Un video nella cassaforte resta sull'unico telefono in cui l'hai importato."
---

I video sono spesso più personali delle foto e si trovano nel rullino con la stessa facilità. Velcrypt ti permette di spostarli in una cassaforte cifrata e guardarli lì, senza dover più passare dall'app Foto.

## Come funziona l'importazione dei video

Importare un video funziona come [importare le foto](id:hide-photos). Scegli uno o più video con il selettore di iOS e Velcrypt salva una copia cifrata nella cassaforte che hai aperta. I file più grandi richiedono un po' più di tempo, perché l'intero video viene cifrato sul dispositivo prima di essere salvato.

Come per le foto, l'importazione è una **copia**. Il video originale resta nella libreria di Foto finché non lo elimini. Così hai modo di verificare che il video si riproduca correttamente nella cassaforte prima di rimuovere qualcosa.

Ogni video viene cifrato con AES-256-GCM usando una propria chiave, derivata dalla chiave principale della cassaforte. L'intera catena di chiavi è nella pagina sulla [crittografia](id:encryption).

## Riproduzione dentro la cassaforte

Velcrypt ha un lettore integrato, quindi puoi guardare i video senza esportarli. La riproduzione avviene mentre la cassaforte è aperta; quando passi a un'altra app, Velcrypt si blocca secondo l'impostazione di [blocco automatico](id:auto-lock) e il selettore delle app non mostra alcuna anteprima di ciò che stavi guardando.

Puoi tenere i video insieme alle foto correlate nello stesso [album](id:albums) e scorrerli nel visualizzatore.

## Eliminare gli originali

Un video nascosto è privato solo quando l'originale non c'è più:

1. **Apri Foto e seleziona i video** che hai appena importato.
2. **Eliminali.** Finiscono in «Eliminati di recente».
3. **Apri «Eliminati di recente».** Da iOS 18 si trova nella sezione «Utility» dell'app Foto; nelle versioni precedenti è verso il fondo della scheda Album.
4. **Eliminali anche da lì.** Altrimenti restano recuperabili per circa 30 giorni.

<!-- TODO verify iOS label -->

Se usi Foto di iCloud, eliminare un video sull'iPhone lo elimina anche dagli altri dispositivi che usano la stessa libreria. La guida su [come eliminare gli originali dopo l'importazione](id:delete-original-photos-after-import) entra nei dettagli, inclusi gli album condivisi e gli altri posti in cui le copie tendono a nascondersi.

## Una nota sullo spazio di archiviazione

I file video sono pesanti. Pochi minuti di riprese ad alta risoluzione possono occupare gigabyte e la cassaforte conserva più o meno la stessa quantità di dati dell'originale.

Tieni a mente tre cose:

- **Spazio doppio temporaneo.** Tra l'importazione e l'eliminazione dell'originale, il video esiste due volte. Se il telefono è quasi pieno, importa a gruppi.
- **Anche «Eliminati di recente» conta.** I video eliminati continuano a occupare spazio finché non svuoti «Eliminati di recente» o non passano i circa 30 giorni.
- **Controlla prima delle importazioni grandi.** Impostazioni › Generali › Spazio iPhone mostra quanto spazio è libero e quanto ne usa Velcrypt.

| Passaggio | Spazio occupato |
| --- | --- |
| Prima dell'importazione | Solo l'originale |
| Dopo l'importazione | Originale + copia cifrata |
| Dopo aver eliminato l'originale | Copia cifrata + elemento in «Eliminati di recente» |
| Dopo aver svuotato «Eliminati di recente» | Solo la copia cifrata |

## Buono a sapersi

- Con la fotocamera nella cassaforte registri video direttamente in Velcrypt, senza che finiscano nella libreria di Foto. Se il video è già in Foto, importalo e poi elimina l'originale.
- Sequenze diverse aprono [casseforti nascoste](id:hidden-vaults) diverse. Se alcuni video non devono mai stare accanto ad altri, dai loro una cassaforte a sé invece di un semplice album separato.
- I dati delle casseforti non finiscono nei backup di iCloud o del computer. Per i video insostituibili, crea un backup cifrato e salvalo in un posto di cui ti fidi.
- Se un video è stato inviato in una chat o pubblicato in un album condiviso, quelle copie sono fuori dalla cassaforte. La guida su [come conservare in sicurezza le foto intime](id:store-intimate-photos-safely-iphone) approfondisce questo rischio.

Per una panoramica più ampia di tutte le opzioni integrate e di terze parti, leggi [come nascondere i video su iPhone](id:hide-videos-iphone).
