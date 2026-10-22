---
pageId: hide-photos
title: "Dölj bilder på iPhone i ett krypterat fotovalv | Velcrypt"
description: "Importera bilder från din iPhone till ett krypterat fotovalv i Velcrypt, radera originalen och Nyligen raderade, och ordna bilderna i album."
h1: "Dölj bilder i ett krypterat fotovalv"
navTitle: "Dölj bilder"
answer: "Velcrypt importerar bilder från ditt bildbibliotek som krypterade kopior i ett valv. Originalen ligger kvar i Bilder tills du raderar dem, så efter importen tar du bort dem och tömmer Nyligen raderade. I valvet kan du sortera bilderna i album och visa dem med zoom och svep."
keyFacts:
  - "Vid import kopieras bilden till valvet; originalet ligger kvar i Bilder."
  - "Radera originalen efteråt och töm Nyligen raderade, där de annars ligger kvar i cirka 30 dagar."
  - "Varje importerad bild krypteras med AES-256-GCM på enheten."
  - "Ordna bilderna i album i varje valv."
  - "Visa bilderna med nypzoom och svep mellan dem."
primaryKeyword: "dölja bilder iphone app"
keywords: ["fotovalv iphone", "krypterat fotovalv", "privat fotoalbum app", "dölja foton iphone", "låsa bilder app", "hemligt fotovalv"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importera bilder som krypterade kopior, rensa originalen och Nyligen raderade, och bläddra sedan i album med zoom och svep."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "Raderar Velcrypt bilden från min kamerarulle?"
    a: "Inte automatiskt. Importen skapar en krypterad kopia i valvet och lämnar originalet i Bilder. Radera originalet själv och ta sedan bort det från Nyligen raderade också."
  - q: "Hur länge ligger raderade bilder kvar i Nyligen raderade?"
    a: "I cirka 30 dagar, om du inte raderar dem därifrån tidigare. Fram till dess kan de återställas av alla som kan öppna det albumet."
  - q: "Är en bild i Velcrypt något annat än en bild i albumet Gömda?"
    a: "Ja. Albumet Gömda är fortfarande en del av ditt bildbibliotek och kan synkas via iCloud-bilder. En bild i Velcrypt krypteras med nycklar som härleds ur ditt mönster och ingår inte i iCloud- eller datorsäkerhetskopior."
  - q: "Laddar Velcrypt upp mina bilder någonstans när jag döljer dem?"
    a: "Nej. Velcrypt har inga servrar och inget konto. Importerade bilder krypteras och sparas bara i din iPhone."
---

Kamerarullen är den mest besökta platsen i din telefon. Den som lånar telefonen för att titta på en bild kan scrolla förbi den till allt annat. Flyttar du privata bilder till Velcrypt försvinner de ur det flödet och hamnar bakom ett mönster och kryptering.

## Så fungerar import av bilder

Import innebär att du hämtar en bild från bildbiblioteket i din iPhone till ett valv i Velcrypt. Du väljer en eller flera bilder i den vanliga bildväljaren i iOS, och Velcrypt sparar en krypterad kopia i det valv du har öppet.

Det viktiga ordet är **kopia**. Velcrypt flyttar eller raderar ingenting i ditt bildbibliotek. Originalet ligger kvar precis där det låg tills du tar bort det. Det är en säkerhetsåtgärd, eftersom du kan kontrollera att importen fungerade innan något raderas, men det betyder att ett steg till är upp till dig.

Varje importerad bild krypteras på enheten med AES-256-GCM, med en nyckel som härleds ur valvets huvudnyckel. Hur nycklarna byggs upp förklaras på sidan om [kryptering](id:encryption).

## Ta bort originalen

En bild är bara privat om de andra kopiorna är borta. Efter importen:

1. **Öppna Bilder och markera originalen** som du just importerade.
2. **Radera dem.** De flyttas till albumet Nyligen raderade.
3. **Öppna Nyligen raderade.** I iOS 18 och senare ligger det under ”Verktyg” i appen Bilder; i äldre versioner finns det längst ned på fliken Album.
4. **Radera dem igen därifrån.** Annars går de att återställa i cirka 30 dagar.

<!-- TODO verify iOS label -->

Sedan iOS 16 är Nyligen raderade och Gömda låsta med Face ID, Touch ID eller lösenkoden som standard, men den som kan din enhets lösenkod kan ändå öppna dem. Använder du iCloud-bilder tas bilden även bort från dina andra enheter när du raderar den på en. Hela genomgången finns i [att radera originalen efter import](id:delete-original-photos-after-import).

Tänk också på kopior på andra ställen: bilder som skickats i chattar, delade album, e-postbilagor eller en dator du en gång synkat med. Velcrypt kan bara skydda det som finns i valvet.

## Ordna bilder i album

I varje valv kan du skapa album, till exempel ”Dokument”, ”Personligt” eller ”Resa”, och sortera bilderna i dem. Med flerval kan du flytta många bilder på en gång, och du kan flytta objekt mellan album när ditt system ändras. Se funktionen [album](id:albums) för detaljer.

Albumen hör till valvet de ligger i. Ett annat mönster öppnar ett annat valv med egna album, och det är så [dolda valv](id:hidden-vaults) håller separata samlingar helt åtskilda.

## Visa bilder i valvet

Bilderna öppnas i Velcrypts inbyggda visare. Du kan nypa för att zooma in på detaljer och svepa åt vänster eller höger för att bläddra i ett album. Bilderna dekrypteras för visning medan valvet är öppet, och appen låser sig själv igen när du lämnar den, enligt din inställning för [automatisk låsning](id:auto-lock).

## Velcrypt jämfört med albumet Gömda

| | iPhones album Gömda | Valv i Velcrypt |
| --- | --- | --- |
| Var bilden finns | I ditt bildbibliotek | I ett krypterat valv i appen |
| Hur det låses upp | Face ID, Touch ID eller enhetens lösenkod | Ditt mönster i Velcrypt |
| iCloud | Synkas med iCloud-bilder om det är på | Ingår inte i iCloud- eller datorsäkerhetskopior |
| Separata samlingar | Ett enda album Gömda | Ett separat valv per mönster |

Albumet Gömda är bekvämt och räcker för många. Dess begränsningar tas upp i [är iPhones album Gömda privat?](id:is-iphone-hidden-album-private), och en bredare genomgång av alla alternativ finns i [så döljer du bilder på iPhone](id:hide-photos-iphone).

## Bra att veta

- Velcrypt har ingen inbyggd kamera. Ta bilden med appen Kamera, importera den och radera sedan originalet.
- Bilder kan innehålla plats- och enhetsdata. Om du tänker dela dem senare bör du först [ta bort bildens metadata](id:remove-photo-metadata-iphone).
- Valvdata säkerhetskopieras inte i den första versionen. Är en bild oersättlig, spara en andra kopia någonstans du litar på.
