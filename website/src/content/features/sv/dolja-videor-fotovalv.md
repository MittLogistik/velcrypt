---
pageId: hide-videos
title: "Dölj videor på iPhone i ett krypterat valv | Velcrypt"
description: "Importera videor till ett krypterat valv i Velcrypt, spela upp dem i appen, radera originalen från Bilder och planera för lagringsutrymmet de tar."
h1: "Dölj videor i ett krypterat valv"
navTitle: "Dölj videor"
answer: "Velcrypt importerar videor från ditt bildbibliotek som krypterade kopior och spelar upp dem i valvet. Originalen ligger kvar i Bilder tills du raderar dem och tömmer Nyligen raderade. Videor är stora, så kontrollera ditt lediga utrymme innan du importerar många på en gång."
keyFacts:
  - "Vid import kopieras videon till valvet; originalet ligger kvar i Bilder."
  - "Videor spelas upp i Velcrypt, utan att lämna valvet."
  - "Varje video krypteras på enheten med AES-256-GCM."
  - "Tills du raderar originalet tar videon tillfälligt upp plats två gånger."
  - "Nyligen raderade sparar raderade videor i cirka 30 dagar om du inte tömmer det."
primaryKeyword: "dölja videor iphone app"
keywords: ["krypterat videovalv iphone", "privat videoapp iphone", "låsa videor iphone", "hemligt videovalv", "dölja videor från kamerarullen"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importera videor som krypterade kopior, spela upp dem i valvet och rensa originalen utan att lagringsutrymmet tar slut."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Kan jag titta på videor utan att exportera dem från Velcrypt?"
    a: "Ja. Videorna spelas upp i Velcrypts egen visare medan valvet är öppet. Du behöver inte exportera dem till appen Bilder för att titta på dem."
  - q: "Varför minskade mitt lediga utrymme när jag importerade videor?"
    a: "Importen skapar en kopia, så tills du raderat originalet från Bilder och tömt Nyligen raderade finns videon två gånger. När originalet är borta frigörs utrymmet."
  - q: "Ingår videorna i mitt valv i iCloud-säkerhetskopian?"
    a: "Nej. I den första versionen undantas valvdata från iCloud- och datorsäkerhetskopior. Videorna i valvet finns bara i din iPhone."
  - q: "Synkas dolda videor i Velcrypt till mina andra enheter?"
    a: "Nej. Velcrypt har ingen molnsynkning och finns bara för iPhone. En video i ditt valv stannar i den telefon där du importerade den."
---

Videor är ofta mer personliga än bilder, och de är lika lätta att råka hitta i en kamerarulle. Med Velcrypt kan du flytta dem till ett krypterat valv och titta på dem där, utan att appen Bilder behöver vara inblandad igen.

## Så fungerar import av videor

Att importera en video fungerar på samma sätt som att [importera bilder](id:hide-photos). Du väljer en eller flera videor i väljaren i iOS, och Velcrypt sparar en krypterad kopia i det valv du har öppet. Större filer tar lite längre tid, eftersom hela videon krypteras på enheten innan den sparas.

Precis som med bilder är importen en **kopia**. Originalvideon ligger kvar i bildbiblioteket tills du raderar den. Då kan du kontrollera att videon spelas upp korrekt i valvet innan du tar bort något.

Varje video krypteras med AES-256-GCM med en egen nyckel, härledd ur valvets huvudnyckel. Hela nyckelkedjan finns på sidan om [kryptering](id:encryption).

## Uppspelning i valvet

Velcrypt har en inbyggd spelare, så du kan titta på videor utan att exportera dem. Uppspelningen sker medan valvet är öppet; när du byter från appen låser Velcrypt enligt din inställning för [automatisk låsning](id:auto-lock), och appväxlaren visar ingen förhandsvisning av det som spelades.

Du kan samla videor med tillhörande bilder i samma [album](id:albums) och svepa mellan dem i visaren.

## Ta bort originalen

En dold video är privat först när originalet är borta:

1. **Öppna Bilder och markera videorna** du just importerade.
2. **Radera dem.** De flyttas till Nyligen raderade.
3. **Öppna Nyligen raderade.** I iOS 18 och senare ligger det under ”Verktyg” i appen Bilder; i tidigare versioner finns det längst ned på fliken Album.
4. **Radera dem därifrån också.** Annars går de att återställa i cirka 30 dagar.

<!-- TODO verify iOS label -->

Använder du iCloud-bilder raderas videon även från dina andra enheter med samma bibliotek när du raderar den på din iPhone. Guiden om [att radera originalen efter import](id:delete-original-photos-after-import) går igenom detaljerna, inklusive delade album och andra ställen där kopior brukar gömma sig.

## Om lagringsutrymme

Videofiler är stora. Några minuter film i hög upplösning kan ta flera gigabyte, och valvet lagrar ungefär lika mycket data som originalet.

Tänk på tre saker:

- **Tillfälligt dubbel lagring.** Mellan importen och raderingen av originalet finns videon två gånger. Importera i omgångar om telefonen är nästan full.
- **Nyligen raderade räknas fortfarande.** Raderade videor tar plats tills Nyligen raderade töms eller tills perioden på cirka 30 dagar har gått.
- **Kontrollera före stora importer.** Inställningar › Allmänt › iPhone-lagring visar hur mycket utrymme som är ledigt och hur mycket Velcrypt använder.

| Steg | Utrymme som används |
| --- | --- |
| Före import | Bara originalet |
| Efter import | Originalet + krypterad kopia |
| Efter radering av originalet | Krypterad kopia + objekt i Nyligen raderade |
| Efter tömning av Nyligen raderade | Bara den krypterade kopian |

## Bra att veta

- Velcrypt har ingen inbyggd kamera. Spela in med appen Kamera, importera videon och radera sedan originalet.
- Olika mönster öppnar olika [dolda valv](id:hidden-vaults). Om vissa videor aldrig ska ligga bredvid andra, ge dem ett eget valv i stället för bara ett separat album.
- Valvdata säkerhetskopieras inte i den första versionen. Spara en andra kopia av oersättliga videor någonstans du litar på.
- Om en video någon gång skickats i en chatt eller lagts upp i ett delat album ligger de kopiorna utanför valvet. Guiden om [att förvara intima bilder säkert](id:store-intimate-photos-safely-iphone) tar upp den risken mer ingående.

För en bredare genomgång av alla inbyggda alternativ och tredjepartsalternativ, se [så döljer du videor på iPhone](id:hide-videos-iphone).
