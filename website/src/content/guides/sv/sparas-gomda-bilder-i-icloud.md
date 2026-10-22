---
pageId: are-hidden-photos-saved-to-icloud
title: "Sparas gömda bilder i iCloud? Så fungerar synken"
description: "Med iCloud-bilder på synkas gömda bilder som alla andra. Se hur krypteringen skiljer sig, vad säkerhetskopian innehåller och hur du väljer bort."
h1: "Sparas gömda bilder i iCloud?"
navTitle: "Gömda bilder och iCloud"
answer: "Ja. Om iCloud-bilder är påslaget laddas gömda bilder och videor upp till iCloud och synkas till alla dina enheter, precis som resten av biblioteket. Med iCloud-bilder avstängt kan de ändå hamna i iCloud-säkerhetskopian. De är totalsträckskrypterade i iCloud bara när Avancerat dataskydd är aktiverat."
keyFacts:
  - "Att gömma en bild utesluter den inte från iCloud-bilder; gömda objekt synkas till alla enheter med samma Apple-konto."
  - "Om iCloud-bilder är av men iCloud-säkerhetskopiering är på ingår bildbiblioteket, gömda objekt inräknade, i enhetens säkerhetskopia."
  - "Med standardskydd för data har Apple krypteringsnycklarna för Bilder och iCloud-säkerhetskopior."
  - "Med Avancerat dataskydd är Bilder och iCloud-säkerhetskopior totalsträckskrypterade."
  - "Det enda sättet att hålla en bild helt borta från iCloud är att förvara den någonstans som inte synkas eller säkerhetskopieras."
primaryKeyword: "sparas gömda bilder i icloud"
keywords:
  - "hamnar gömda bilder i icloud"
  - "albumet gömda icloud"
  - "gömda bilder icloud-säkerhetskopia"
  - "hålla bilder borta från icloud"
  - "gömda bilder på icloud.com"
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Gömda bilder synkas via iCloud-bilder och kan hamna i iCloud-säkerhetskopian. Så fungerar krypteringen i varje fall och så håller du en bild borta från iCloud."
category: apple
order: 11
related:
  - is-iphone-hidden-album-private
  - icloud-advanced-data-protection-explained
  - offline-no-account
  - delete-original-photos-after-import
  - family-shared-icloud
faq:
  - q: "Laddas en bild fortfarande upp till iCloud om jag gömmer den?"
    a: "Ja. Att gömma ändrar bara var bilden visas i appen Bilder. Med iCloud-bilder påslaget laddas en gömd bild upp och synkas till dina andra enheter precis som en bild som inte är gömd."
  - q: "Kan gömda bilder ses på iCloud.com?"
    a: "De ingår i ditt bibliotek i iCloud-bilder, så de kan nås från en webbläsare som är inloggad med ditt Apple-konto, i avsnittet Gömda i Bilder. Om Avancerat dataskydd är på är webbåtkomsten till dina iCloud-data avstängd om du inte väljer att tillåta den."
  - q: "Ingår gömda bilder i iCloud-säkerhetskopian?"
    a: "Bara när iCloud-bilder är avstängt. Då lagras bildbiblioteket på enheten och ingår i iCloud-säkerhetskopian. När iCloud-bilder är på synkas biblioteket separat och dubbleras inte i säkerhetskopian."
  - q: "Kan Apple se mina gömda bilder i iCloud?"
    a: "Med standardinställningen, standardskydd för data, är Bilder krypterat men Apple har nycklarna och kan alltså tekniskt avkryptera det. Med Avancerat dataskydd påslaget är Bilder totalsträckskrypterat och Apple kan inte läsa det."
  - q: "Hur håller jag en enda bild borta från iCloud utan att stänga av iCloud-bilder?"
    a: "iCloud-bilder kan inte undanta enskilda bilder. Du behöver flytta bilden till ett ställe som inte synkas eller säkerhetskopieras, till exempel ett krypterat valv på enheten, och sedan radera den från Bilder och från Nyligen raderade."
---

Många gömmer en bild i tron att den då också stannar på telefonen. Det gör den inte. På iPhone beskriver ”gömd” hur appen Bilder visar ett objekt, inte var det lagras. Den här guiden förklarar hur gömda bilder färdas genom iCloud, vad som skyddar dem där och vad du kan göra om du vill att en bild ska stanna strikt på enheten.

## Kortversionen: att gömma påverkar inte synken

iCloud-bilder är funktionen som håller ett och samma bildbibliotek synkat mellan din iPhone, iPad, Mac och webben. Den behandlar gömda och ogömda objekt likadant. När du gömmer en bild på din iPhone:

- laddas den fortfarande upp till iCloud om iCloud-bilder är på;
- visas den i albumet Gömda på dina andra enheter som är inloggade med samma Apple-konto;
- förblir den gömd överallt, eftersom markeringen som gömd också synkas;
- om du raderar den hamnar den i Nyligen raderade på alla enheter och tas bort från iCloud efter ungefär 30 dagar.

För att kontrollera om iCloud-bilder är på går du till Inställningar › [ditt namn] › iCloud › Bilder och letar efter reglaget **Synka den här iPhonen** (äldre versioner kallar det **iCloud-bilder**).

<!-- TODO verify iOS label -->

## Så skyddas gömda bilder i iCloud

Apple erbjuder två nivåer av iCloud-säkerhet. Vilken du har gör verklig skillnad för vem som tekniskt skulle kunna läsa dina gömda bilder.

| | Standardskydd för data (standard) | Avancerat dataskydd (valbart) |
| --- | --- | --- |
| Bilder krypterade under överföring och på servrar | Ja | Ja |
| Vem har nycklarna till Bilder | Apple | Bara dina betrodda enheter |
| Apple kan avkryptera Bilder | Tekniskt ja | Nej |
| iCloud-säkerhetskopior totalsträckskrypterade | Nej | Ja |
| Återställning om du förlorar åtkomsten | Apple kan hjälpa till | Bara din återställningskontakt eller återställningsnyckel |
| Webbåtkomst på iCloud.com | På som standard | Av om du inte tillåter den |

Totalsträckskryptering innebär att data krypteras på din enhet med nycklar som bara dina enheter har, så tjänsten som lagrar dem kan inte läsa dem. Med standardskydd för data är Bilder krypterat men inte totalsträckskrypterat, eftersom Apple behåller nycklarna för att kunna hjälpa dig att återställa kontot. Hela bilden får du i [Avancerat dataskydd för iCloud förklarat](id:icloud-advanced-data-protection-explained).

## Gömda bilder på iCloud.com

Eftersom gömda objekt ingår i ditt bibliotek i iCloud-bilder kan de nås från en webbläsare som är inloggad med ditt Apple-konto. De ligger i ett avsnitt för gömda bilder i Bilder snarare än i huvudvyn. Apple har lagt till extra steg för att visa gömt innehåll på olika ställen, men det säkraste antagandet är enkelt: den som kan logga in på ditt Apple-konto kan potentiellt se ditt album Gömda.

Det gör kontosäkerheten till en del av bildintegriteten. Använd ett unikt lösenord för ditt Apple-konto, behåll tvåfaktorsautentiseringen på och gå igenom vilka enheter som är inloggade på kontot i Inställningar › [ditt namn], och ta bort dem du inte känner igen.

## Vad som händer när iCloud-bilder är av

Att stänga av iCloud-bilder betyder inte automatiskt att ingenting når iCloud. Om **iCloud-säkerhetskopiering** är på säkerhetskopierar din iPhone bildbiblioteket som en del av den nattliga säkerhetskopian, gömda objekt inräknade. Säkerhetskopian lagras krypterad på Apples servrar, och med standardskydd för data har Apple även de nycklarna.

Du ser vad som händer i Inställningar › [ditt namn] › iCloud › iCloud-säkerhetskopiering. Vill du undanta bilder från säkerhetskopian men behålla iCloud-säkerhetskopiering letar du efter listan över appar som säkerhetskopieras och stänger av Bilder där. Skärmens exakta upplägg har ändrats mellan iOS-versioner, så leta efter en lista per app under inställningarna för säkerhetskopiering.

<!-- TODO verify iOS label -->

Säkerhetskopior på datorn är en tredje väg. En säkerhetskopia som görs med Finder på en Mac eller med Apple-enheter/iTunes på Windows innehåller också bildbiblioteket, om inte iCloud-bilder är på. Att kryptera de lokala säkerhetskopiorna med ett lösenord är en bra idé i vilket fall som helst.

## Delade bibliotek och delade album

Två funktioner kan flytta en bild utanför ditt personliga utrymme utan att du tänker på det som att ”ladda upp”:

- **Delat bildbibliotek i iCloud** lägger utvalda bilder i ett bibliotek som upp till fem andra personer kan se och redigera. Ligger en bild i det delade biblioteket kan de andra deltagarna se den. Göm privata bilder först när du har säkerställt att de ligger i ditt personliga bibliotek. Vår [guide om iCloud i familjen](id:family-shared-icloud) går igenom detta.
- **Delade album** är en separat funktion som enligt Apple inte omfattas av Avancerat dataskydd. Allt du lägger där bör betraktas som synligt för alla i albumet.

## Så håller du en bild borta från iCloud

iCloud-bilder är allt eller inget per enhet: det finns inget reglage för att undanta en enskild bild. Vill du behålla iCloud-bilder för vardagsbilderna men hålla några bilder helt borta från Apples servrar har du tre realistiska alternativ.

### Alternativ 1: Stäng av iCloud-bilder på den här iPhonen

Det stoppar nya uppladdningar, men det stoppar också synken av allt annat, och befintliga objekt ligger kvar i iCloud tills du raderar dem där. Du behöver också kontrollera iCloud-säkerhetskopieringen enligt ovan. För de flesta är det för trubbigt.

### Alternativ 2: Förvara bilden i en app som inte synkar

Vissa appar lagrar filer bara i sin egen lagring på enheten och undantar dem från säkerhetskopior. Velcrypt är byggd så: bilder, videor och dokument du importerar krypteras på iPhonen och undantas från säkerhetskopior till iCloud och dator. Det finns inget konto och ingenting laddas upp ([på enheten, utan konto](id:offline-no-account)).

Den ärliga avvägningen: om bilden bara finns i ett sådant valv och du tappar bort telefonen eller glömmer mönstret finns det ingen automatisk kopia att återställa. I Velcrypt kan du själv skapa en krypterad säkerhetskopia, skyddad av ett lösenord du väljer. Sparar du den i iCloud Drive hamnar bara den krypterade filen där, inte bilderna.

### Alternativ 3: Radera iCloud-kopian ordentligt

Vilken app du än flyttar en bild till ligger originalet kvar i Bilder tills du tar bort det, och med iCloud-bilder på finns det fortfarande i iCloud. Så här städar du:

1. Radera originalbilden i appen Bilder (den raderas från alla synkade enheter).
2. Öppna **Nyligen raderade** under Verktyg och radera den där också, annars ligger den kvar i ungefär 30 dagar.
3. Om du tidigare har delat bilden i Meddelanden, en chattapp eller ett delat album raderar du den där också; de kopiorna är separata.

Vår steg-för-steg-guide om att [radera originalen efter import till ett valv](id:delete-original-photos-after-import) går igenom detta i detalj, även vad du ska kontrollera på en Mac.

## En snabb beslutsguide

- **Du vill bara ha bort bilder från kamerarullens rutnät:** albumet Gömda räcker. Se [är albumet Gömda privat?](id:is-iphone-hidden-album-private)
- **Du är okej med iCloud men vill att Apple inte ska kunna läsa det:** slå på Avancerat dataskydd, om det finns i din region.
- **Du vill att en bild aldrig ska röra iCloud:** flytta den till ett krypterat utrymme på enheten, radera originalet, töm Nyligen raderade och acceptera att det är ditt ansvar att inte förlora den.
