---
pageId: security
title: "Velcrypts säkerhet: så fungerar krypteringen"
description: "Så skyddar Velcrypt dina valv: PBKDF2-nyckelhärledning, huvudnyckel per valv, AES-256-GCM, iOS Dataskydd – och vad appen inte kan skydda mot."
h1: "Så fungerar Velcrypt: säkerhetsmodellen"
navTitle: "Säkerhetsmodell"
answer: "Velcrypt gör om mönstret du ritar till en nyckel med PBKDF2-HMAC-SHA512 (minst 600 000 iterationer), använder den för att skydda en slumpmässig 256-bitars huvudnyckel för valvet och krypterar varje fil med AES-256-GCM på din iPhone. Inget laddas upp, och det finns varken konto eller någon reservkopia av dina nycklar."
keyFacts:
  - "Mönster → PBKDF2-HMAC-SHA512, minst 600 000 iterationer, slumpmässigt salt per enhet i iOS-nyckelringen."
  - "Varje valv har en egen slumpmässig 256-bitars huvudnyckel; nycklar per fil härleds med HKDF."
  - "Filerna krypteras med AES-256-GCM via Apple CryptoKit, plus iOS Dataskydd (fullständig skyddsklass)."
  - "Ett okänt mönster öppnar ett tomt valv – ingen valvlista, inget meddelande om ”fel mönster”."
  - "Inget nätverk, inget konto, ingen analys av valvinnehållet; valvdata undantas från iCloud- och datorsäkerhetskopior i v1."
  - "Velcrypt har ännu inte granskats av en oberoende säkerhetsrevision."
primaryKeyword: "krypterat fotovalv iphone säkerhet"
keywords: ["velcrypt säkerhet", "kryptering fotovalv iphone", "hur fungerar velcrypts kryptering", "aes-256-gcm fotovalv", "pbkdf2 mönsterlås", "trovärdigt förnekande valvapp"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "Kan Velcrypt se eller återställa mina bilder?"
    a: "Nej. Velcrypt har inga servrar, inget kontosystem och ingen kopia av dina nycklar. Ditt mönster sparas aldrig, så ingen hos Velcrypt kan öppna, nollställa eller återställa ett valv."
  - q: "Vad händer om någon ritar fel mönster i Velcrypt?"
    a: "Ett mönster som Velcrypt aldrig sett öppnar helt enkelt ett nytt, tomt valv. Det visas inget felmeddelande och ingenting som avslöjar om det finns andra valv."
  - q: "Är Velcrypts kryptering samma sak som iPhones inbyggda kryptering?"
    a: "Nej, den kommer utöver den. iOS krypterar redan enheten och Velcrypt använder iOS strängaste dataskyddsklass för sina filer, men appen krypterar dessutom varje fil med en egen AES-256-GCM-nyckel som härleds från valvets mönster. En upplåst telefon räcker alltså inte för att öppna ett valv."
  - q: "Har Velcrypt granskats av en oberoende part?"
    a: "Inte ännu. Velcrypt bygger på Apples CryptoKit och beprövade standardalgoritmer, och vi välkomnar gärna en oberoende säkerhetsgranskning, men någon sådan har inte gjorts hittills."
  - q: "Döljer Velcrypt att jag använder ett krypterat valv?"
    a: "Inte helt. Appen syns på hemskärmen, och någon med forensiska verktyg kan eventuellt se att Velcrypt lagrar krypterade data och ungefär hur mycket. Det Velcrypt döljer är hur många valv du har och vad de innehåller."
---

Den här sidan förklarar på vanlig svenska vad som händer med dina bilder, videor och dokument när du lägger dem i Velcrypt – och var skyddet tar slut. Den är skriven för dig som vill förstå upplägget innan du anförtror appen något personligt.

## Den korta versionen

Velcrypt är en iPhone-app som förvarar privata filer i krypterade valv på din enhet. Du öppnar ett valv genom att rita ett mönster på ett 5×5-rutnät av punkter. Mönstret sparas aldrig någonstans. I stället körs det genom en långsam nyckelhärledningsfunktion som skapar en nyckel, och det är den nyckeln som skyddar valvets innehåll.

Allt sker på själva iPhonen. Velcrypt har inget konto, inga servrar och ingen uppladdning, så det finns ingen kopia av ditt valv – eller av dina nycklar – någon annanstans. Det är både styrkan och den största begränsningen: om mönstret glöms bort eller telefonen försvinner kan valvet inte återställas.

## Från mönster till nyckel

### Mönstret

Ett mönster är en sammanhängande linje genom minst 6 av de 25 punkterna, med minst ett riktningsbyte. Längre mönster på 8–12 punkter rekommenderas, eftersom varje extra punkt mångdubblar antalet mönster en angripare skulle behöva prova. Du kan läsa mer om avvägningarna i [mönsterlås, PIN-kod eller Face ID](id:pattern-lock-vs-pin-vs-face-id), och se hur själva låset fungerar på sidan om [mönsterlåset](id:pattern-lock).

### PBKDF2 med salt per enhet

När du har ritat klart omvandlar Velcrypt punktsekvensen till en nyckel med **PBKDF2-HMAC-SHA512** och minst **600 000 iterationer**. PBKDF2 är en nyckelhärledningsfunktion: ett avsiktligt långsamt, upprepbart recept som gör om en hemlighet (ditt mönster) till en kryptografisk nyckel. Långsamheten är själva poängen. För dig tar det en bråkdel av en sekund att härleda en nyckel, men den som provar miljontals mönster måste betala den kostnaden miljontals gånger.

Härledningen blandar också in ett **salt** – ett slumpmässigt värde som skapas en gång på din enhet och sparas i iOS-nyckelringen. Eftersom saltet är unikt för din iPhone får två personer som råkar rita samma mönster helt olika nycklar, och förberäknade tabeller med ”vanliga mönster → nycklar” blir oanvändbara.

### En huvudnyckel per valv

Varje valv har en egen **huvudnyckel**: 256 slumpmässiga bitar som systemets säkra slumptalsgenerator skapar när valvet skapas. Det är huvudnyckeln som faktiskt skyddar valvets filer. Den lagras bara i skyddad (inkapslad) form, förseglad med nyckeln som härletts från ditt mönster. Utan rätt mönster går huvudnyckeln inte att packa upp.

Uppdelningen spelar roll. Huvudnyckeln är helt slumpmässig, så dess styrka beror inte på hur lätt ditt mönster är att minnas, och den gör varje valv kryptografiskt oberoende av alla andra valv på samma telefon.

### En nyckel per fil

Från huvudnyckeln härleder Velcrypt en separat nyckel för varje fil med **HKDF**, en standardfunktion för att härleda flera oberoende nycklar ur en stark hemlighet. Om en fils nyckel någonsin skulle röjas avslöjar den varken huvudnyckeln eller de andra filernas nycklar.

## Så krypteras filerna

### AES-256-GCM via Apple CryptoKit

Varje bild, video och dokument krypteras med **AES-256-GCM** via Apples ramverk CryptoKit, inte med egenutvecklad kryptokod. AES-256-GCM är autentiserad kryptering: den håller innehållet hemligt *och* upptäcker manipulation. Om så bara en bit i en krypterad fil ändras misslyckas dekrypteringen i stället för att ge skadade eller manipulerade data. En djupare förklaring finns i [AES-256-kryptering förklarad](id:aes-256-encryption-explained) och på sidan om [kryptering](id:encryption).

### iOS Dataskydd som ett andra lager

Utöver Velcrypts egen kryptering skrivs valvfilerna med iOS Dataskydd i klassen **fullständigt skydd**. Med den klassen håller iOS filerna krypterade med en nyckel som bara finns tillgänglig medan iPhonen är upplåst. När telefonen är låst kan inte ens operativsystemet läsa dem. Det här lagret kommer från Apple och är oberoende av Velcrypts nycklar, så en angripare måste ta sig förbi båda.

## Varför ett okänt mönster öppnar ett tomt valv

De flesta appar jämför ditt lösenord med något som finns lagrat – en hash, en verifierare, ett ”rätt svar” – och säger sedan *fel lösenord*. Velcrypt gör medvetet inte så.

Det finns ingen valvlista och inget lagrat värde som bekräftar om ett mönster är ”rätt”. När du ritar ett mönster härleder Velcrypt en nyckel och försöker öppna valvet som hör till den. Om inget valv matchar öppnar appen helt enkelt ett nytt, tomt valv för det mönstret. För den som håller i telefonen ser ett aldrig använt mönster och ett riktigt men tomt valv likadana ut.

Det ger dig **trovärdigt förnekande**: möjligheten att trovärdigt säga att det inte finns något mer att se, eftersom ingenting i appen bevisar motsatsen. Du kan ha ett lockvalv med vanliga bilder och ett separat valv för det som verkligen är privat. Sidan om [dolda valv](id:hidden-vaults) och våra guider om [lockvalv](id:what-is-a-decoy-vault) och [trovärdigt förnekande](id:plausible-deniability-explained) går in mer på detaljerna.

En praktisk bieffekt: om du minns fel med en enda punkt hamnar du i ett tomt valv i stället för att se ett felmeddelande. Det är avsiktligt, inte en bugg.

## Låsning och appväxlaren

Velcrypt låses automatiskt när appen går till bakgrunden, efter en fördröjning du själv ställer in. När appen låses rensas valvnycklarna ur minnet och mönstret måste ritas igen. Valvinnehållet döljs också i iOS appväxlare, så en snabb blick på dina senaste appar visar ingen miniatyr av en privat bild. Inställningarna beskrivs under [autolås](id:auto-lock).

Det finns ingen upplåsning med Face ID eller Touch ID, med avsikt. Ett ansikte eller ett finger kan användas utan ditt samtycke – medan du sover eller under press. Ett mönster finns bara i ditt minne.

## Inget nätverk, inget konto, inga säkerhetskopior

Velcrypt fungerar helt offline. Det finns ingen registrering, ingen e-postadress, ingen server och ingen uppladdning av valvinnehåll, och ingen analysdata samlas in om det du sparar. Sidan [offline utan konto](id:offline-no-account) beskriver vad det innebär i praktiken.

I första versionen **undantas valvdata dessutom från iCloud- och datorsäkerhetskopior (Finder)**. Det håller dina krypterade filer borta från Apples servrar och från datorer du synkar med, men det har en verklig följd: om din iPhone försvinner, går sönder eller återställs försvinner valven med den. Ett alternativ för krypterad säkerhetskopiering är planerat, utan datum.

## Hotmodellen i korthet

| Hot | Skyddad? | Kommentar |
|---|---|---|
| Någon scrollar i ditt bildbibliotek | Ja | Objekt du importerar och sedan raderar i Bilder (inklusive Nyligen raderade) finns bara i Velcrypt. |
| Någon tar din upplåsta telefon och öppnar Velcrypt | Ja | Personen behöver ditt mönster; ett fel mönster visar ett tomt valv. |
| Någon försöker bevisa att du har fler valv | Till stor del | Ingen valvlista, inget ”fel mönster”-meddelande; antalet valv visas inte i appen. |
| Stöld av en låst iPhone | Ja | iOS Dataskydd plus Velcrypts egen AES-256-GCM-kryptering. |
| Brute force mot mönstret ur utdragna filer | Försvårad | PBKDF2 med 600 000+ iterationer och salt per enhet; ett långt mönster gör skillnad. |
| Intrång i ett molnkonto | Ja | Valvdata laddas inte upp och undantas från iCloud-säkerhetskopior i v1. |
| Manipulation av krypterade filer | Upptäcks | Autentiseringen i AES-256-GCM avvisar ändrade data. |
| Någon ser dig rita mönstret | Nej | Se nedan. |
| Skadlig kod eller jailbreakad enhet | Nej | Se nedan. |
| Glömt mönster eller förlorad telefon | Nej | Ingen återställning är möjlig. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Vad Velcrypt inte skyddar mot

Alla säkerhetsverktyg har begränsningar, och du bör känna till Velcrypts innan du förlitar dig på appen.

- **Någon som tittar över axeln.** Om någon ser dig rita mönstret, på plats eller via en kamera, kan personen öppna det valvet. Rita det utom synhåll och välj gärna ett mönster som inte liknar en enkel bokstav eller form.
- **Tvång att låsa upp.** Velcrypt kan inte hindra någon från att tvinga dig att rita ett mönster. Ett lockvalv kan hjälpa; ett tvångsmönster (kommer snart, Premium) är planerat för att öppna ett valt valv och i tysthet ta bort åtkomsten till de andra.
- **En telefon som lämnas över med valvet öppet.** Medan ett valv är upplåst kan den som håller telefonen se det du ser. Lås valvet innan du räcker över telefonen till någon.
- **Komprometterade eller jailbreakade enheter och skadlig kod.** Programvara som kan läsa skärmen, logga tryck eller granska appminnet på en komprometterad enhet kan kringgå all kryptering på appnivå.
- **Skärmdumpar eller foton av skärmen.** Velcrypt kan inte hindra en annan kamera från att fotografera din skärm.
- **Kopior på andra ställen.** Import kopierar en bild; originalet ligger kvar i Bilder tills du raderar det och hamnar sedan i Nyligen raderade i cirka 30 dagar. Kopior kan också finnas i iCloud-bilder, chattappar, e-post eller på någon annans telefon. Följ guiden om att [radera original efter import](id:delete-original-photos-after-import).
- **Förlorad telefon eller glömt mönster.** Båda innebär att data är borta. Det finns ingen återställningsfras och ingen nollställning. Läs [glömt valvmönstret](id:forgot-vault-pattern).
- **Att det syns att Velcrypt används.** Appikonen syns, och forensiska verktyg kan eventuellt se att Velcrypt innehåller krypterade data och ungefär hur mycket. Velcrypt påstår inte att det döljs – bara antalet valv och deras innehåll.
- **Svaga eller lättgissade mönster.** Ett kort mönster, eller ett som är format som L, Z eller en kvadrat, är mycket lättare att gissa. Testa en liknande form med [mönsterkontrollen](id:pattern-strength-checker) – aldrig ditt riktiga mönster.

## Oberoende granskning

Velcrypt bygger på standardiserade, väl studerade byggstenar och på Apples egna kryptobibliotek i stället för hemmagjorda algoritmer. Men en bra design är inte detsamma som en verifierad design. Velcrypt har **inte** granskats av en oberoende part. Vi välkomnar en extern säkerhetsgranskning, och om en sådan görs publicerar vi resultatet här.

## Ordlista

- **AES-256-GCM** är ett symmetriskt krypteringsläge som använder en 256-bitars nyckel och autentiserar data, så att all manipulation upptäcks vid dekryptering.
- **PBKDF2** (Password-Based Key Derivation Function 2) är en standard som gör om en hemlighet som ett lösenord eller mönster till en nyckel genom att upprepa en hashfunktion många gånger, vilket gör gissning långsam.
- **Salt** är ett slumpmässigt värde som kombineras med din hemlighet före nyckelhärledningen, så att samma mönster ger olika nycklar på olika enheter.
- **HKDF** (HMAC-based Key Derivation Function) är ett standardiserat sätt att härleda flera oberoende nycklar ur en stark nyckel.
- **Huvudnyckel** är den slumpmässiga 256-bitars nyckel som hör till ett valv och skyddar alla valvets filnycklar.
- **Trovärdigt förnekande** är egenskapen att ingenting i appen kan bevisa att fler valv finns, så att du trovärdigt kan visa ett valv utan att avslöja andra.
