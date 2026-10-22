---
pageId: is-iphone-hidden-album-private
title: "Är albumet Gömda på iPhone privat? Vad det skyddar"
description: "Albumet Gömda håller bilder borta från biblioteket och låses med Face ID, men lösenkoden öppnar det och det synkas till iCloud. Så här fungerar det."
h1: "Är albumet Gömda på iPhone privat?"
navTitle: "Är albumet Gömda privat?"
answer: "Delvis. Albumet Gömda tar bort bilder från huvudbiblioteket och låses i iOS 16 och senare bakom Face ID, Touch ID eller lösenkoden. Men den som kan enhetens lösenkod kan öppna det, det synkas via iCloud-bilder och det är totalsträckskrypterat i iCloud bara om du slår på Avancerat dataskydd."
keyFacts:
  - "Att gömma en bild flyttar den från biblioteksrutnätet, albumen och widgetar; den krypteras inte separat på enheten."
  - "I iOS 16 och senare är albumet Gömda som standard låst med Face ID, Touch ID eller enhetens lösenkod."
  - "Enhetens lösenkod är alltid ett reservalternativ, så den som kan den kan öppna albumet Gömda."
  - "Med iCloud-bilder påslaget synkas gömda bilder till dina andra enheter och till iCloud."
  - "I iCloud är gömda bilder totalsträckskrypterade bara när Avancerat dataskydd är aktiverat."
primaryKeyword: "är albumet gömda privat iphone"
keywords:
  - "albumet gömda integritet iphone"
  - "vem kan se gömda bilder på iphone"
  - "är albumet gömda låst"
  - "albumet gömda face id"
  - "kan någon se mina gömda bilder"
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Vad albumet Gömda verkligen skyddar, vem som ändå kan öppna det och hur iCloud-synk och Avancerat dataskydd förändrar bilden."
category: apple
order: 10
related:
  - are-hidden-photos-saved-to-icloud
  - icloud-advanced-data-protection-explained
  - velcrypt-vs-iphone-hidden-album
  - hide-photos-iphone
  - partner-scrolling-camera-roll
faq:
  - q: "Kan någon se mitt album Gömda om hen kan min iPhone-lösenkod?"
    a: "Ja. Låset på albumet Gömda använder samma Face ID, Touch ID och lösenkod som låser upp din iPhone. Om Face ID misslyckas eller avbryts erbjuder iOS lösenkoden, så den som kan den kan öppna albumet."
  - q: "Krypteras en bild när jag gömmer den på iPhone?"
    a: "Inte på något extra sätt. Gömda bilder skyddas av samma iOS-dataskydd som alla andra filer på din iPhone. Att gömma ändrar var bilden visas och lägger till ett autentiseringssteg för albumet, men det skapar ingen separat krypterad behållare."
  - q: "Syns gömda bilder på min Mac eller iPad?"
    a: "Ja, om iCloud-bilder är påslaget. Gömda objekt synkas till alla enheter som är inloggade med samma Apple-konto och visas där i enhetens album Gömda, som också är låst i nyare versioner av macOS och iPadOS."
  - q: "Kan jag stänga av Face ID-låset för albumet Gömda?"
    a: "Ja. I iOS 18 och senare går du till Inställningar › Appar › Bilder; i äldre versioner Inställningar › Bilder. Stänger du av alternativet för Face ID (eller Touch ID / lösenkod) är albumet Gömda öppet för alla som kan låsa upp telefonen, så låt det vara på."
  - q: "Kan appar med åtkomst till bilder se gömda bilder?"
    a: "Att gömma är en visningsinställning i appen Bilder, inte en behörighetsgräns. Lita inte på att den håller en bild borta från en app som har full åtkomst till biblioteket; ge appar begränsad åtkomst eller använd systemets bildväljare i stället."
---

Albumet Gömda är det första de flesta iPhone-ägare provar när de vill ha en bild ur sikte. Det är verkligen användbart, men ”gömd” och ”privat” är inte samma sak. Den här guiden går igenom exakt vad albumet gör, var skyddet tar slut och vem som ändå kan komma in.

## Vad albumet Gömda faktiskt gör

Albumet Gömda är en inbyggd samling i appen Bilder som innehåller objekt du har markerat som gömda. När du gömmer en bild eller video tar iOS bort den från biblioteksrutnätet, från dina andra album, från widgeten för Bilder och från funktioner som Minnen och Utvalda bilder. Själva filen flyttas inte till något särskilt ställe: den ligger kvar i samma bildbibliotek, bara markerad som gömd.

Sedan iOS 16 är albumen Gömda och Nyligen raderade låsta som standard. Att öppna något av dem kräver Face ID, Touch ID eller enhetens lösenkod. Var du hittar albumet beror på din iOS-version:

| iOS-version | Var albumet Gömda finns |
| --- | --- |
| iOS 18 och senare | Appen Bilder, scrolla ned till **Verktyg** och sedan **Gömda** |
| iOS 16 och iOS 17 | Fliken Album, scrolla ned till **Verktyg** och sedan **Gömda** |
| iOS 15 och tidigare | Fliken Album, **Gömda** (inget lås) |

<!-- TODO verify iOS label -->

Ser du det inte alls kan själva albumet vara avstängt. I iOS 18 och senare letar du efter reglaget **Visa albumet Gömda** i Inställningar › Appar › Bilder; i äldre versioner ligger det i Inställningar › Bilder. Stänger du av det döljs albumet i appen Bilder, men bilderna finns kvar på enheten. Hela genomgången finns i [så döljer du bilder på iPhone](id:hide-photos-iphone).

## Där skyddet tar slut

Albumet Gömda är bra på en sak: att hindra bilder från att dyka upp när någon bläddrar i din kamerarulle. Flera begränsningar spelar roll om du vill ha mer än så.

### Lösenkoden är alltid ett reservalternativ

Låset på albumet Gömda är ditt enhetslås. Om Face ID inte känner igen den som håller i telefonen erbjuder iOS lösenkoden i stället. De som kan öppna ditt album Gömda är alltså exakt de som känner till iPhonens lösenkod: en partner, en familjemedlem eller någon som har sett dig skriva in den. Det finns inget separat lösenord för albumet.

### Det är inget separat krypterat utrymme

Alla filer på en låst iPhone skyddas av iOS dataskydd, och gömda bilder är inget undantag. Men att gömma lägger inte till ännu ett krypteringslager med en egen nyckel. När telefonen är upplåst och albumet öppnat med enhetens inloggningsuppgifter går allt därinne att läsa. Jämför med ett valv som använder en egen nyckel härledd från en hemlighet som bara du känner till, vilket vi förklarar i [AES-256-kryptering förklarad](id:aes-256-encryption-explained).

### Att det finns är uppenbart

Den som öppnar Bilder och scrollar ned till Verktyg kan se att ett album Gömda finns. Om du inte har stängt av albumet döljer det inte att du döljer något, vilket spelar roll i vissa situationer (se [trovärdigt förnekande förklarat](id:plausible-deniability-explained)).

### Biometri kan användas utan ditt samarbete

Face ID och Touch ID är bekväma, men ett ansikte eller ett finger kan visas upp medan du sover, hålls fast eller helt enkelt pressas. Det är en verklig faktor för vissa, och vi diskuterar det i [mönsterlås, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Vad som händer i iCloud

Om iCloud-bilder är på synkas gömda bilder som alla andra objekt. De visas i albumet Gömda på din iPad och Mac och lagras på Apples servrar. Om Apple tekniskt kan läsa dem beror på kontots säkerhetsinställning:

- **Standardskydd för data** (standard): bilderna krypteras under överföring och på Apples servrar, men Apple har nycklarna. Det betyder att Apple skulle kunna avkryptera dem, till exempel när lagen kräver det.
- **Avancerat dataskydd**: Bilder är totalsträckskrypterat, så bara dina betrodda enheter har nycklarna.

Vi går in på det mer i [sparas gömda bilder i iCloud?](id:are-hidden-photos-saved-to-icloud) och [Avancerat dataskydd för iCloud förklarat](id:icloud-advanced-data-protection-explained).

Kom också ihåg att iCloud är ett konto, inte en enhet. Den som loggar in med ditt Apple-konto på en annan enhet, eller på iCloud.com där webbåtkomst är tillåten, kan nå ditt bibliotek, även albumet Gömda, med samma låsbeteende på den enheten.

## Vem som faktiskt kan se dina gömda bilder

Här är en enkel sammanfattning av vem som kan och inte kan komma in i ett album Gömda:

| Person eller situation | Kan de se gömda bilder? |
| --- | --- |
| Någon som i förbigående bläddrar i din upplåsta kamerarulle | Nej, gömda objekt visas inte i biblioteket |
| Någon som kan enhetens lösenkod | Ja, lösenkoden öppnar albumet |
| Någon med åtkomst till ditt Apple-konto | Kanske, på en enhet eller i en webbsession som är inloggad på kontot |
| En person du delar familjeabonnemang för iCloud med | Nej, Familjedelning delar inte ditt personliga bibliotek |
| En deltagare i ett delat bildbibliotek i iCloud | Bara objekt du lägger i det delade biblioteket; håll privata bilder i ditt personliga bibliotek |
| Apple | Tekniskt möjligt med standardskydd för data; inte med Avancerat dataskydd påslaget |

Använder du ett delat bildbibliotek i iCloud bör du kontrollera vilket bibliotek en bild tillhör innan du gömmer den. Vår guide om [familjedelade iCloud-upplägg](id:family-shared-icloud) förklarar skillnaden.

## Så gör du albumet Gömda så privat som möjligt

Om du kommer fram till att albumet Gömda räcker i din situation gör några inställningar det märkbart starkare:

1. **Behåll låset på.** Kontrollera att alternativet för Face ID / Touch ID / lösenkod för albumet Gömda är aktiverat i Inställningar › Appar › Bilder (iOS 18+) eller Inställningar › Bilder.
2. **Använd en stark lösenkod.** En sexsiffrig kod är minimum; en längre alfanumerisk lösenkod är bättre, och dela den aldrig.
3. **Slå på Avancerat dataskydd** om det är tillgängligt för dig och du kan hantera kraven på återställning.
4. **Överväg att dölja själva albumet** med reglaget Visa albumet Gömda.
5. **Rensa Nyligen raderade** när du har flyttat runt saker, eftersom raderade objekt ligger kvar där i ungefär 30 dagar.

## När ett separat valv är vettigare

Albumet Gömda är gjort för ordning och lätt integritet, inte för situationer där någon nära dig kan din lösenkod eller kan pressa dig att låsa upp telefonen. Då vill du oftast ha ett utrymme med egen hemlighet och egen kryptering.

Velcrypt använder det synsättet. Varje valv öppnas med ett mönster som ritas på ett rutnät med 5×5 punkter i stället för med Face ID eller enhetens lösenkod, och innehållet krypteras med AES-256-GCM med nycklar som härleds från mönstret ([så fungerar krypteringen](id:encryption)). Varje mönster öppnar ett eget valv och ett okänt mönster öppnar helt enkelt ett tomt, så ingenting avslöjar hur många valv som finns ([dolda valv](id:hidden-vaults)). Allt stannar på enheten, utan konto och utan kopia i molnet.

Det medför också ärliga avvägningar. Valvinnehållet ingår inte i säkerhetskopior till iCloud eller dator, så ett glömt mönster går inte att återställa, och en förlorad telefon tar innehållet med sig om du inte själv har skapat en krypterad säkerhetskopia. Och att importera en bild kopierar den, så du behöver fortfarande ta bort originalet från Bilder och Nyligen raderade. En jämförelse sida vid sida finns i [Velcrypt mot albumet Gömda på iPhone](id:velcrypt-vs-iphone-hidden-album).
