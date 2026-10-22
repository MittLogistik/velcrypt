---
pageId: velcrypt-vs-keepsafe
title: "Velcrypt vs Keepsafe: lokalt valv eller molnvalv"
description: "Velcrypt och Keepsafe jämförda: konto, molnbackup, upplåsning, lockvalv och återställning. En neutral genomgång av vilket fotovalv som passar dig."
h1: "Velcrypt vs Keepsafe"
navTitle: "Velcrypt vs Keepsafe"
answer: "Velcrypt håller allt på din iPhone utan konto och låses upp med ett ritat mönster, medan Keepsafe enligt sin App Store-sida använder ett konto och erbjuder molnbackup. Välj Velcrypt för enbart lokal lagring och trovärdigt förnekande; Keepsafe kan passa bättre om du vill ha säkerhetskopiering och synk."
keyFacts:
  - "Velcrypt kräver inget konto, ingen e-post och ingen registrering; Keepsafe använder ett konto enligt sin App Store-sida."
  - "Keepsafe erbjuder valfri molnbackup; Velcrypt v1 lagrar valven bara på din iPhone."
  - "Velcrypt låses upp med ett mönster på ett 5×5-rutnät och saknar medvetet Face ID och Touch ID."
  - "I Velcrypt öppnar varje mönster ett eget valv, och okända mönster öppnar ett tomt."
  - "Om du glömmer ditt Velcrypt-mönster eller tappar bort telefonen kan valvet inte återställas."
primaryKeyword: "velcrypt vs keepsafe"
keywords: ["keepsafe vs velcrypt", "keepsafe jämförelse", "alternativ till keepsafe fotovalv", "fotovalv utan konto", "keepsafe molnbackup"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Lokalt valv utan konto mot ett kontobaserat valv med molnbackup. Var vart och ett passar, sida vid sida."
competitor: "Keepsafe"
lastChecked: "oktober 2026"
order: 1
related: [keepsafe-alternative, photo-vault-without-account, offline-no-account, hidden-vaults, best-private-photo-vault-apps-iphone, encryption]
faq:
  - q: "Kräver Keepsafe ett konto?"
    a: "Enligt Keepsafes App Store-sida i skrivande stund använder appen ett konto kopplat till en e-postadress, vilket möjliggör funktioner som molnbackup. Velcrypt har inget konto alls; ingenting om dig eller ditt valv lämnar telefonen."
  - q: "Kan Velcrypt säkerhetskopiera mitt valv som Keepsafes moln?"
    a: "Inte i första versionen. Velcrypt undantar valvdata från iCloud- och datorsäkerhetskopior, så en förlorad telefon eller ett glömt mönster innebär att valvet är borta. Ett alternativ för krypterad säkerhetskopiering är planerat, utan fastställt datum."
  - q: "Vilken av apparna har ett lockvalv?"
    a: "Båda erbjuder någon form av lockbete. Keepsafe har beskrivit en falsk PIN-kod (lock-PIN) som en premiumfunktion. I Velcrypt kan varje mönster vara ett eget valv, så du kan ha ett harmlöst lockvalv, och okända mönster öppnar helt enkelt ett tomt valv."
  - q: "Kan jag byta från Keepsafe till Velcrypt?"
    a: "Ja, i stora drag: exportera dina bilder från Keepsafe tillbaka till Bilder eller Filer, importera dem till Velcrypt och radera sedan de exporterade kopiorna och töm Nyligen raderade. De exakta exportstegen beror på aktuell Keepsafe-version."
---

*Senast kontrollerad: oktober 2026. Produktuppgifter ändras; se respektive apps sida i App Store för aktuell version.*

Keepsafe och Velcrypt håller båda privata bilder borta från kamerarullen, men de bygger på olika idéer. Keepsafe lutar sig mot ett konto och ett valfritt moln, så att dina bilder kan överleva en förlorad telefon. Velcrypt håller allt på iPhonen, utan konto, och ser det som själva poängen. Den här sidan redovisar skillnaderna så neutralt vi kan.

## Den korta versionen

Velcrypt är ett rent lokalt valv: kryptering, nycklar och filer stannar på din enhet, och du låser upp genom att rita ett mönster. Keepsafe kombinerar enligt sin App Store-sida ett valv på enheten med ett konto och en valfri säkerhetskopiering, ”Private Cloud”, som ingår i premiumabonnemanget.

<!-- TODO verify -->

Inget av upplägget är bäst för alla. Det ena byter bekvämlighet mot minimal exponering; det andra byter viss exponering mot möjligheten att återställa.

## Jämförelse av funktioner

| | Velcrypt | Keepsafe |
|---|---|---|
| Publicerade detaljer om kryptering på enheten | Ja: AES-256-GCM, nyckelhärledning med PBKDF2-HMAC-SHA512 (se [kryptering](id:encryption)) | Inte offentligt beskrivet i detalj |
| Kräver konto | Inget konto, ingen e-post | Ja, enligt App Store-sidan |
| Molnbackup | Nej (v1); krypterad säkerhetskopiering planerad | Valfri ”Private Cloud” med premium |
| Upplåsning | Mönster på ett 5×5-rutnät | PIN-kod eller lösenkod |
| Biometri (Face ID / Touch ID) | Erbjuds inte, med avsikt | Stöds, enligt App Store-sidan |
| Lockvalv / flera valv | Varje mönster är ett eget valv | Falsk lock-PIN i premium |
| Tvångsmönster | Kommer snart (Premium) | Inte offentligt angivet |
| Intrångsvarningar | Erbjuds inte | Erbjuds i premium |
| Återställning om du glömmer koden | Ingen; valvet kan inte återställas | Varierar; kontobaserad återställning kan finnas |
| Affärsmodell | Gratisversion plus valfri Premium (se [priser](id:pricing)) | Gratisnivå plus premiumabonnemang |
| Plattformar | iPhone (iOS 17+) | iOS och Android |

<!-- TODO verify -->

## Konto och moln: den avgörande skillnaden

Ett konto är en bekvämlighetsfunktion. Det låter en app återställa ditt valv på en ny telefon och synka det mellan enheter. Det betyder också att ett företag har en identifierare för dig och – om du använder molnbackup – att en kopia av dina filer ligger på servrar du inte kontrollerar, skyddad av den kryptering och de åtkomstregler som tjänsten använder.

Velcrypt intar motsatt hållning. Det finns ingen registrering, ingen e-post och ingen server, vilket förklaras på sidan [offline utan konto](id:offline-no-account). I version 1 undantas valvdata från iCloud- och Finder-säkerhetskopior. Den ärliga följden är att ingen kan återställa dem åt dig: varken Apple, Velcrypt eller du själv. Om det oroar dig, läs [glömt valvmönstret](id:forgot-vault-pattern) innan du bestämmer dig.

## Upplåsning: mönster mot PIN-kod och biometri

Keepsafe använder en PIN-liknande kod och kan enligt sin App Store-sida använda Face ID eller Touch ID för bekvämlighetens skull.

<!-- TODO verify -->

Velcrypt använder ett ritat mönster på ett 5×5-rutnät: en sammanhängande linje genom minst sex punkter med minst ett riktningsbyte. Appen hoppar medvetet över Face ID och Touch ID, eftersom ett ansikte eller ett finger kan användas utan ditt samtycke, medan ett mönster bara finns i ditt minne. Jämförelsen [mönsterlås, PIN-kod eller Face ID](id:pattern-lock-vs-pin-vs-face-id) går djupare in på avvägningarna.

## Lockvalv och förnekande

Många valvappar erbjuder en andra, falsk kod som öppnar ett harmlöst valv. Keepsafe har erbjudit en lock-PIN som premiumfunktion.

<!-- TODO verify -->

Velcrypts modell är inbyggd i strukturen snarare än ett tillägg. Varje mönster är ett eget valv, det finns ingen valvlista, och ett mönster appen aldrig sett öppnar helt enkelt ett tomt valv utan felmeddelande. Ingenting på skärmen bevisar att andra valv finns. Det är vad [dolda valv](id:hidden-vaults) och [trovärdigt förnekande](id:plausible-deniability-explained) betyder i praktiken. Ett tvångsmönster, som skulle öppna ett valt valv och i tysthet ta bort åtkomsten till de andra, är planerat för Premium och kommer snart.

## När Keepsafe kan passa dig bättre

- **Du vill ha säkerhetskopiering och synk.** Om en förlorad telefon inte får betyda förlorade bilder är en kontobaserad molnbackup den enklare lösningen i dag. Velcrypt v1 erbjuder inte det.
- **Du använder även Android.** Keepsafe finns på mer än en plattform enligt sina butikssidor; Velcrypt finns bara för iPhone.
- **Du föredrar Face ID.** Om biometrisk bekvämlighet väger tyngre för dig än risken för framtvingad upplåsning erbjuder Velcrypt det medvetet inte.
- **Du vill ha intrångsvarningar.** Velcrypt tar inga bilder av inkräktare.

<!-- TODO verify -->

## När Velcrypt kan passa dig bättre

- **Du vill inte ha något konto.** Ingenting knyter ditt valv till en e-postadress eller identitet.
- **Du vill att ingenting lämnar telefonen.** Inga uppladdningar, inga servrar, ingen analys av valvinnehållet.
- **Du vill kunna förneka.** Separata valv utan lista, där ett okänt mönster inte avslöjar något.
- **Du vill ha publicerade kryptodetaljer.** Velcrypt dokumenterar sina algoritmer på [säkerhetssidan](id:security).

Vad du än väljer: kom ihåg att import till ett valv oftast kopierar bilden. Radera originalet i Bilder och töm Nyligen raderade efteråt; stegen finns i [radera originalbilder efter import](id:delete-original-photos-after-import).

## Det ingen av apparna kan lösa

Inget valv skyddar mot någon som ser dig ange koden, en telefon som lämnas över medan valvet är öppet eller kopior som fortfarande finns i iCloud-bilder, chattar eller på någon annans telefon. Ett valv är ett lager av integritet, inte hela planen. Om du väger flera appar mot varandra kan genomgången av [privata fotovalvsappar](id:best-private-photo-vault-apps-iphone) och sidan om [alternativ till Keepsafe](id:keepsafe-alternative) hjälpa.
