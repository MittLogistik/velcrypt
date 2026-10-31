---
pageId: can-aes-256-be-cracked
title: "Kan AES-256 knäckas? Brute force, kvantdatorer och GCM"
description: "Hur lång tid det skulle ta att knäcka en 256-bitars nyckel med brute force, vad kvantdatorer och GCM ändrar och vart verkliga attacker siktar."
h1: "Kan AES-256 knäckas? Räkneexemplet, attackerna och kvantfrågan"
navTitle: "Kan AES-256 knäckas?"
answer: "Inte genom att prova nycklar: även en miljard datorer som var och en testar en triljon nycklar per sekund skulle i snitt behöva runt 10⁴² år. De bästa kända attackerna kapar bara ett par bitar, och en kvantdator med Grovers algoritm skulle fortfarande stå inför ungefär 2¹²⁸ steg. Verkliga attacker riktar in sig på lösenordet eller mönstret, enheten eller implementationen."
keyFacts:
  - "En 256-bitars nyckel har ungefär 1,2 × 10⁷⁷ möjliga värden; brute force är utom räckhåll under alla realistiska antaganden."
  - "Den bästa kända attacken mot fullständig AES-256 utan relaterade nycklar (biclique, 2011) kostar runt 2²⁵⁴·⁴ operationer i stället för 2²⁵⁶."
  - "Grovers algoritm skulle lämna AES-256 med ungefär 128-bitars säkerhet; NIST, tyska BSI och brittiska NCSC bedömer AES som hållbart i kvanteran."
  - "Shors algoritm hotar RSA och elliptiska kurvor, inte AES."
  - "I ett valv som skyddas av ett mönster är den svaga punkten mönstrets entropi och nyckelhärledningen, inte chiffret."
primaryKeyword: "kan aes 256 knäckas"
keywords: ["hur lång tid tar det att knäcka aes 256", "är aes 256 kvantsäkert", "aes 256 kryptering", "aes-256-gcm", "rijndael 256", "har aes knäckts"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Räkneexemplet för brute force mot en 256-bitars nyckel, kända attacker, Grover mot Shor, vad GCM tillför och varför mönstret är det verkliga målet."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "Hur lång tid skulle det ta att knäcka AES-256 med brute force?"
    a: "Om en miljard datorer var och en testar 10¹⁸ nycklar per sekund tar det i snitt runt 1,8 × 10⁴² år att hitta en 256-bitars nyckel, ungefär 10³² gånger universums ålder. Antagandena är vansinnigt generösa; verklig hårdvara är långt långsammare."
  - q: "Är AES-256 kvantsäkert?"
    a: "Det anses kvantresistent. Grovers algoritm skulle sänka den effektiva styrkan till ungefär 128 bitar, vilket fortfarande räknas som säkert. NIST säger att dagens tillämpningar kan fortsätta använda AES, och tyska BSI rekommenderar 256-bitars nycklar för långsiktigt skydd."
  - q: "Har AES någonsin knäckts?"
    a: "Inte i praktiken. Det finns akademiska attacker, till exempel biclique-attacker som sänker AES-256 från 2²⁵⁶ till ungefär 2²⁵⁴·⁴ operationer och attacker med relaterade nycklar som kräver ett orealistiskt scenario. Ingen av dem dekrypterar verklig AES-256-data."
  - q: "Är Rijndael 256 samma sak som AES-256?"
    a: "Inte riktigt. Rijndael är konstruktionen som blev AES och tillåter blockstorlekar på 128, 192 eller 256 bitar. AES låser blocket till 128 bitar, och AES-256 betyder en 256-bitars nyckel. En Rijndael-variant med 256-bitars block är inte AES."
  - q: "Vad tillför AES-256-GCM jämfört med vanlig AES-256?"
    a: "GCM gör AES till autentiserad kryptering. Utöver sekretess lägger det till en autentiseringstagg, så att varje ändring i den krypterade filen får dekrypteringen att misslyckas. Det kräver att en nonce aldrig återanvänds med samma nyckel."
  - q: "Kan ett valv som använder AES-256 alltså knäckas?"
    a: "Inte via chiffret. Den som kopierar krypterad data gissar i stället ditt mönster eller lösenord, och långsam nyckelhärledning begränsar bara hur många gissningar per sekund det blir. Det är en lång, oregelbunden hemlighet som håller valvet stängt."
---

”Kan AES-256 knäckas?” är en rimlig fråga, och det ärliga svaret har två halvor. Själva chiffret kommer enligt varje seriös bedömning inte att knäckas genom att prova nycklar, inte med den bästa kända kryptoanalysen och inte av kvantdatorer inom någon synlig horisont. Men data som skyddas av AES-256 kan ändå läcka, eftersom angripare siktar på den svagaste länken. Den här guiden räknar på saken och följer sedan angriparen dit hen faktiskt går. Grunderna i hur AES fungerar finns i [AES-256-kryptering förklarad](id:aes-256-encryption-explained).

## Hur lång tid skulle brute force ta?

Brute force betyder att prova varje möjlig nyckel tills en passar. En 256-bitars nyckel har 2²⁵⁶ möjliga värden, ungefär 1,16 × 10⁷⁷. I snitt hittar man rätt nyckel halvvägs, alltså efter runt 5,8 × 10⁷⁶ försök.

Ge angriparen absurt generösa resurser:

- **Hastighet per dator:** 10¹⁸ nycklar per sekund (en triljon), långt bortom all verklig hårdvara för att knäcka AES.
- **Antal datorer:** en miljard, alla parallellt.
- **Totalt:** 10²⁷ nycklar per sekund.

Resultatet: 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ sekunder, ungefär **1,8 × 10⁴² år**. Universum är omkring 1,38 × 10¹⁰ år gammalt, så det är ungefär 10³² gånger dess ålder. Att fördubbla hårdvaran några dussin gånger ändrar inte slutsatsen: varje extra nyckelbit fördubblar arbetet, och 256 bitar lämnar inget utrymme för tekniken att komma ikapp.

Därför pratar ingen inom kryptografi om brute force mot AES-256. Frågan är bara om det finns en genväg.

## Kända attacker: små teoretiska vinster

AES har varit offentligt sedan 2001 och är en av de mest granskade algoritmerna som finns. Kryptoanalytiker har hittat attacker som strängt taget är snabbare än brute force, men med marginaler som bara spelar roll på papperet.

- **Biclique-attacker (2011).** Bogdanov, Khovratovich och Rechberger visade en nyckelåtervinning mot fullständig AES-256 som kostar runt 2²⁵⁴·⁴ operationer i stället för 2²⁵⁶. Det är ungefär tre gånger mindre arbete än brute force, fortfarande runt 10⁷⁶ operationer. Författarna skrev själva att attacken inte hotar praktisk användning av AES.
- **Attacker med relaterade nycklar (2009).** Biryukov och Khovratovich hittade en attack mot AES-256 på runt 2⁹⁹·⁵ i tid, men bara i en modell där angriparen får data krypterad med flera hemliga nycklar som har ett visst matematiskt samband. Väldesignade system skapar oberoende slumpmässiga nycklar, så modellen gäller inte dem.

Inget av resultaten återvinner en nyckel ur verklig AES-256-data. Båda visar framför allt att två decennier av granskning inte har hittat någon meningsfull spricka.

### Vad ”Rijndael 256” betyder

Rijndael är konstruktionen av Joan Daemen och Vincent Rijmen som NIST valde som AES. Rijndael stöder block- och nyckelstorlekar på 128, 192 och 256 bitar. AES standardiserade bara 128-bitarsblocket. AES-256 betyder alltså Rijndael med 128-bitars block och 256-bitars nyckel. En ”Rijndael-256” med 256-bitars block är ett annat, icke-standardiserat chiffer, och inte det appar och webbläsare menar med AES-256.

## Är AES-256 kvantsäkert?

Kvantdatorer påverkar två familjer av kryptografi på helt olika sätt.

- **Shors algoritm** löser faktorisering och diskreta logaritmer effektivt. En tillräckligt stor kvantdator skulle knäcka RSA och elliptisk kurvkryptografi, de asymmetriska metoder som används för nyckelutbyte och signaturer. Därför införs nu kvantsäkert nyckelutbyte.
- **Grovers algoritm** snabbar upp brute force kvadratiskt: att söka igenom 2²⁵⁶ nycklar kostar ungefär 2¹²⁸ kvantsteg. I praktiken ger AES-256 runt 128-bitars säkerhet mot en kvantangripare.

Hur mycket är 2¹²⁸ steg? Anta att en kvantdator klarar en miljard Grover-iterationer per sekund, var och en med en komplett AES-krets, vilket är mycket optimistiskt. Den skulle ändå behöva runt 10²² år. Grover går dessutom dåligt att parallellisera: att dela upp sökningen på många maskiner ger betydligt mindre än en proportionell uppsnabbning.

De officiella ståndpunkterna stämmer överens:

- **NIST** (USA) skriver i sina vanliga frågor om postkvantkryptografi att Grovers algoritm troligen ger liten eller ingen fördel vid attacker mot AES, och att dagens tillämpningar kan fortsätta använda AES med 128, 192 eller 256 bitars nycklar.
- **BSI** (Tyskland) anser att symmetriska chiffer som AES i grunden är resistenta mot kvantattacker om nyckellängden anpassas, och rekommenderar 256-bitars nycklar i nya system som ska skydda data långsiktigt.
- **NCSC** (Storbritannien) skriver att säkerheten i symmetrisk kryptografi inte påverkas nämnvärt av kvantdatorer och att AES kan fortsätta användas med lämpliga nyckellängder.

Så ja: AES-256 är varianten som rekommenderas för data som måste förbli konfidentiell länge, kvantdatorer inräknade.

## Vad GCM tillför i AES-256-GCM

AES i sig krypterar ett block på 16 byte. Ett driftläge avgör hur hela filer krypteras. **GCM (Galois/Counter Mode)**, standardiserat av NIST i SP 800-38D, är ett autentiserat läge: utöver chiffertexten skapar det en autentiseringstagg. Vid dekryptering kontrolleras taggen, och om en enda bit i filen har ändrats misslyckas dekrypteringen i stället för att lämna ut ändrad data.

GCM har en hård regel: en nonce får aldrig upprepas under samma nyckel. Återanvändning kan läcka information om klartexten och göra det möjligt att förfalska taggar. Det är ingen svaghet i AES, utan precis den sortens implementationsfel som verkliga attacker utnyttjar. Att ge varje fil en egen nyckel, som Velcrypt gör, gör regeln lätt att följa.

## Vart attackerna verkligen går

Om chiffret är utom räckhåll går angripare runt det. I praktiken siktar de på tre saker.

1. **Hemligheten du kommer ihåg.** 256-bitarsnyckeln härleds oftast från ett lösenord, en PIN-kod eller ett mönster. Att gissa hemligheten är ofantligt mycket billigare än att gissa nyckeln.
2. **Enheten.** Skadlig kod, en jailbreakad telefon, ett valv som lämnats öppet eller någon som tittar när du låser upp kringgår krypteringen helt.
3. **Implementationen.** Återanvända nonces, nycklar som lagras bredvid datan, svaga slumptal eller sidokanaler som tidsläckor. Därför är beprövade systembibliotek som Apple CryptoKit att föredra framför egenhändigt skriven kryptokod.

## Den ärliga slutsatsen för ett valv med mönster

I ett valv som Velcrypt är nyckeln som krypterar dina filer en slumpmässig 256-bitars huvudnyckel, så stark som AES kan bli. Men huvudnyckeln är förseglad med en nyckel som härleds ur mönstret du ritar. Den som har kopierat krypterad data och enhetens salt kan gissa offline. Chiffrets styrka spelar då ingen roll; det som räknas är hur många mönster hen kan prova per sekund och hur många som behövs.

Velcrypt bromsar varje gissning med PBKDF2-HMAC-SHA512 och minst 600 000 iterationer. Utifrån offentliga benchmarks för lösenordsknäckning klarar ett kraftfullt grafikkort för spel i storleksordningen 5 000 gissningar per sekund med den inställningen. Det är en grov uppskattning, inte en mätning av Velcrypt självt. Så här blir det:

| Mönster angriparen måste prova | Ca bitar | Ett grafikkort | 100 grafikkort |
|---|---|---|---|
| 10 000 (vanliga former) | ~13 | sekunder | direkt |
| 1 miljon | ~20 | minuter | sekunder |
| 1 miljard | ~30 | runt 2 dygn | runt 30 minuter |
| 1 biljon | ~40 | runt 6 år | runt 3 veckor |

Som jämförelse: även om man ser ett mönster som vilket ordnat urval som helst av 10 olika punkter av 25 blir det bara runt 1,2 × 10¹³ möjligheter (ungefär 43 bitar), och det är en generös övre gräns, eftersom en sammanhängande linje begränsar dragen och människor föredrar hörn, bokstäver och korta former. Ett mönster ligger på några tiotal bitar; nyckeln på 256.

Inget av detta går enkelt på en iPhone: angriparen måste först få ut de krypterade filerna och saltet ur enheten, förbi iOS Dataskydd. Men det visar var din omsorg hör hemma:

- **Använd 8–12 punkter**, med flera riktningsbyten och gärna en korsning.
- **Undvik start i ett hörn, bokstäver och enkla former** som L, Z eller en kvadrat.
- **Rita det i skydd för insyn**, för ingen entropi hjälper mot någon som har sett.

Testa en liknande form, aldrig ditt riktiga mönster, med [verktyget för mönsterstyrka](id:pattern-strength-checker), och läs guiden [mönster, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id) för att se hur hemligheter som människor väljer står sig. Sidan om [krypteringen](id:encryption) beskriver Velcrypts hela nyckelkedja, och [säkerhetsöversikten](id:security#what-velcrypt-does-not-protect-against) listar vad kryptering inte kan skydda mot.
