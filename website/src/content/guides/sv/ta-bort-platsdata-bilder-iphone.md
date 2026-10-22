---
pageId: remove-photo-metadata-iphone
title: "Ta bort EXIF och platsdata från bilder på iPhone"
description: "Ta bort EXIF och platsdata från bilder på iPhone: Alternativ i delningsmenyn, Ingen plats i Bilder, platsinställning för Kamera och ett gratis webbverktyg."
h1: "Så tar du bort EXIF-data och plats från bilder på iPhone"
navTitle: "Ta bort metadata på iPhone"
answer: "För att ta bort platsen innan du delar på iPhone trycker du på Alternativ högst upp i delningsmenyn och stänger av Plats. För att ta bort den från själva bilden öppnar du bilden, sveper uppåt eller trycker på Info, väljer Justera vid platsen och sedan Ingen plats. För att den inte ska sparas alls ställer du in Kamera på Aldrig i Platstjänster."
keyFacts:
  - "EXIF-metadata kan innehålla GPS-koordinater, datum och tid, enhetsmodell, objektiv och programvara."
  - "Menyn Alternativ i delningsmenyn låter dig ta bort platsen (och annan data) för varje delning."
  - "I Bilder kan du ange Ingen plats för en bild i infopanelen."
  - "Inställningar › Integritet och säkerhet › Platstjänster › Kamera › Aldrig gör att nya bilder inte sparar plats."
  - "När en bild väl har delats med metadata ändrar en borttagning i din kopia inte kopian du skickade."
primaryKeyword: "ta bort exif data iphone"
keywords: ["ta bort plats från bilder iphone", "ta bort metadata bilder iphone", "ta bort gps från bild", "platsdata bilder iphone integritet", "exif-borttagare"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Vad EXIF avslöjar, fyra sätt att ta bort plats och annan metadata från bilder på iPhone och ett gratis verktyg som körs i webbläsaren."
category: practical
order: 31
related: [photo-metadata-remover, which-apps-can-see-your-photos-iphone, store-intimate-photos-safely-iphone, phone-privacy-border-crossing, hide-photos-iphone]
howTo:
  name: "Ta bort platsdata från en bild på iPhone"
  steps:
    - name: "Ta bort platsen när du delar"
      text: "Markera bilden i Bilder, tryck på Dela, tryck på Alternativ högst upp i delningsmenyn, stäng av Plats, tryck på Klar och dela sedan."
    - name: "Ta bort platsen från själva bilden"
      text: "Öppna bilden, svep uppåt eller tryck på Info-knappen, tryck på Justera vid platsen eller kartan och välj Ingen plats."
    - name: "Stoppa platsdata i nya bilder"
      text: "Gå till Inställningar › Integritet och säkerhet › Platstjänster › Kamera och välj Aldrig."
    - name: "Rensa all metadata vid behov"
      text: "Öppna verktyget för att ta bort metadata i Safari, välj bilden, granska den metadata som hittas och spara en rensad kopia."
faq:
  - q: "Innehåller bilder från iPhone platsdata?"
    a: "Ja, om Platstjänster är tillåtet för appen Kamera, vilket det är som standard för de flesta. GPS-koordinaterna sparas i bildens metadata och följer med filen när du delar originalet."
  - q: "Försvinner metadata när jag skickar en bild i ett meddelande?"
    a: "Inte på ett pålitligt sätt. Vissa chatt- och sociala appar rensar metadata vid uppladdning, andra behåller den, och AirDrop, e-post och fildelning skickar oftast originalet. Ta bort platsen själv innan du delar i stället för att lita på appen."
  - q: "Försvinner EXIF-data om jag tar en skärmbild?"
    a: "En skärmbild är en ny bild och har oftast ingen GPS-plats från originalet, men den har egen metadata, lägre upplösning och kan fånga annat på skärmen. Det är en grov nödlösning, ingen ren lösning."
  - q: "Kan jag ta bort datum och kameramodell, inte bara platsen?"
    a: "Delningsmenyn i iPhone styr främst platsen och, i vissa versioner, annan medföljande data som bildtexter. För att ta bort kamerauppgifter och datum använder du ett särskilt verktyg, som vårt metadataverktyg i webbläsaren, som sparar en ny kopia utan inbäddad metadata."
  - q: "Blir en bild anonym om jag tar bort metadatan?"
    a: "Nej. Ansikten, gatuskyltar, landmärken, reflexer och till och med utsikten från ett fönster kan avslöja var en bild togs. Att ta bort metadata tar bort dold data, inte det som syns i bilden."
---

Varje bild du tar med en iPhone bär med sig en liten fil med dold information. Oftast är det användbart: Bilder kan sortera dina bilder efter plats och datum. Men när du delar en bild med en främling, en köpare eller hela internet kan den avslöja mycket mer än du tänkt, till exempel exakt var du bor.

## Vad EXIF-metadata innehåller

EXIF (Exchangeable Image File Format) är en standard för att spara information inuti en bildfil vid sidan av pixlarna. I en bild från iPhone kan den innehålla:

| Fält | Exempel | Varför det spelar roll |
|---|---|---|
| GPS-koordinater | Latitud och longitud, ofta exakt på några meter | Kan avslöja ditt hem, din arbetsplats eller ett barns skola |
| Datum och tid | Ögonblicket då bilden togs | Visar rutiner och när du var någonstans |
| Enhet | Märke och modell | Ringar in vem som tog den |
| Objektiv och inställningar | Främre eller bakre kamera, brännvidd, exponering | Litet, men bidrar till ett fingeravtryck |
| Programvara | iOS-version eller redigeringsapp | Visar vilken enhet eller app som behandlat den |
| Orientering | Rotationsflagga | Ofarlig, men behövs för att visa bilden rätt |

Bilder kan också innehålla XMP- och IPTC-data (bildtexter, redigeringshistorik, nyckelord). HEIC, iPhonens standardformat, sparar liknande information.

## Fyra sätt att styra metadata på iPhone

### 1. Ta bort platsen när du delar

Det här är den snabbaste vanan att skaffa sig, och den gäller per delning.

1. Markera en eller flera bilder i Bilder och tryck på **Dela**.
2. Högst upp i delningsmenyn, under sammanfattningen av urvalet, trycker du på **Alternativ**.
3. Stäng av **Plats**. Beroende på iOS-version kan du också se alternativ för annan bilddata, som bildtexter, eller för att skicka som originalfil.
4. Tryck på **Klar** och dela som vanligt.

<!-- TODO verify iOS label -->

Inställningen gäller bara den delningen; ditt original behåller sin plats. Det fungerar för Meddelanden, Mail, AirDrop och de flesta appar som tar emot bilder via delningsmenyn.

### 2. Ta bort platsen från själva bilden

Om du vill att platsen ska försvinna från bilden i biblioteket:

1. Öppna bilden i Bilder.
2. Svep uppåt eller tryck på **Info**-knappen (ⓘ).
3. Tryck på **Justera** vid platsen eller kartan.
4. Välj **Ingen plats**.

<!-- TODO verify iOS label -->

I nyare iOS-versioner kan du markera flera bilder och justera deras plats samtidigt. Etiketterna kan skilja sig något mellan iOS 18 och iOS 26; leta efter platsfältet i infopanelen.

### 3. Stoppa kameran från att spara plats

För att nya bilder inte ska spara GPS alls:

1. Öppna **Inställningar › Integritet och säkerhet › Platstjänster**.
2. Tryck på **Kamera**.
3. Välj **Aldrig**.

Du förlorar platsbaserade funktioner i Bilder, som kartvyn och platsbaserade minnen, för nya bilder. Vissa stänger bara av det på resor eller hemma.

### 4. Använd en metadataborttagare för resten

Delningsmenyn fokuserar på platsen. Vill du också ta bort datum, enhetsmodell och annan inbäddad data behöver du ett särskilt verktyg. Vårt [verktyg för att ta bort metadata från bilder](id:photo-metadata-remover) körs helt i din webbläsare, så ingenting laddas upp. Det visar vad en JPEG-fil innehåller (kamera, objektiv, datum, programvara, orientering och GPS-koordinater) och ritar sedan om pixlarna till en ny JPEG som saknar EXIF, GPS, XMP, IPTC och annan inbäddad metadata.

Några saker att känna till: omkodningen kan ändra filstorleken något; HEIC fungerar bara där webbläsaren kan öppna formatet (som Safari); och när du väljer en bild i Safari på iPhone kan iOS redan ha konverterat HEIC till JPEG.

## Skärmbildstricket, och varför det är trubbigt

Ett vanligt tips är att ta en skärmbild av bilden och dela skärmbilden. En skärmbild är en helt ny bild, så den bär inte med sig originalets GPS-koordinater. Men:

- den har lägre upplösning än originalet och kan bli konstigt beskuren,
- den kan fånga statusfältet, notiser eller andra delar av skärmen,
- den har egen metadata (som datumet den togs och enheten),
- det är lätt att glömma och dela originalet i stället.

Det fungerar i nödfall. För allt viktigt använder du alternativet i delningsmenyn eller en metadataborttagare.

## Metadata kan inte kallas tillbaka

Att ta bort metadata ändrar bara kopian du redigerar. Om du redan har publicerat, skickat eller laddat upp originalet behåller mottagarens kopia det den hade. Vissa plattformar rensar metadata vid uppladdning; många chatt- och fildelningsvägar gör det inte. Utgå från att allt du har delat tidigare fortfarande bär sin ursprungliga data.

Tänk också på vad metadata inte är. Ansikten, husnummer, registreringsskyltar, butiksskyltar, en karakteristisk utsikt eller en reflex i ett fönster kan identifiera en plats lika bra som GPS.

## Vilka appar kan läsa metadatan?

Varje app du ger full åtkomst till bilder kan läsa metadatan för varje bild i biblioteket, även platsen. Att begränsa appar till utvalda bilder minskar den exponeringen. Läs [vilka appar som kan se dina bilder](id:which-apps-can-see-your-photos-iphone) för hur bildbehörigheter fungerar i iOS.

## Var Velcrypt passar in

Velcrypt redigerar inte bilder och tar inte bort metadata; appen skyddar dem. Bilder du importerar till ett valv krypteras i din iPhone med AES-256-GCM, så innehållet, inklusive eventuell inbäddad metadata, kan inte läsas av andra appar eller av någon som bläddrar i ditt bibliotek. Har du privata bilder fungerar det bra att kombinera båda vanorna: ta bort platsen innan du delar och förvara originalen i ett krypterat valv. Läs [så döljer du bilder på iPhone](id:hide-photos-iphone) och [spara intima bilder säkert](id:store-intimate-photos-safely-iphone).
