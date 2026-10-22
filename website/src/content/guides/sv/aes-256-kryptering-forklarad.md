---
pageId: aes-256-encryption-explained
title: "AES-256-kryptering förklarad (GCM, PBKDF2, kvant)"
description: "Vad AES-256 är, varför GCM-läget spelar roll, varför nyckelhärledningen väger tyngre än chiffret vid mönsterskydd och vad kvantdatorer ändrar."
h1: "AES-256-kryptering förklarad, utan hype"
navTitle: "AES-256-kryptering förklarad"
answer: "AES-256 är ett symmetriskt chiffer som krypterar data med en 256-bitars nyckel; ingen kan i praktiken knäcka det genom att prova nycklar. För data som skyddas av ett mönster eller lösenord avgörs den verkliga styrkan av nyckelhärledningen: hur långsamt och noggrant den korta hemligheten görs om till nyckeln. GCM-läget lägger till manipulationsskydd utöver sekretessen."
keyFacts:
  - "AES är ett blockchiffer som standardiserades av NIST 2001; AES-256 använder en 256-bitars nyckel och 14 rundor."
  - "GCM är ett autentiserat läge: det krypterar och upptäcker dessutom varje ändring av chiffertexten."
  - "Ett svagt mönster eller lösenord undergräver AES-256, eftersom angripare gissar hemligheten, inte nyckeln."
  - "Långsam nyckelhärledning, som PBKDF2 med många iterationer, gör varje gissning dyr."
  - "Grovers algoritm skulle sänka AES-256 till ungefär 128-bitars säkerhet mot en kvantangripare, vilket fortfarande räknas som starkt."
primaryKeyword: "aes-256 kryptering"
keywords: ["vad är aes 256", "aes-256-gcm", "pbkdf2 förklarat", "är aes 256 kvantsäkert", "aes 256 vs aes 128", "autentiserad kryptering"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, nyckellängder, autentiserad kryptering med GCM, varför PBKDF2 väger tyngre än chiffret och kvantfrågan, på vanlig svenska."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "Kan AES-256 knäckas?"
    a: "Det finns ingen känd praktisk attack som tar fram en AES-256-nyckel snabbare än totalsökning, och att prova alla 256-bitars nycklar ligger långt bortom varje tänkbar dator. Verkliga intrång beror på svaga lösenord, stulna nycklar eller buggar runt chiffret, inte på AES i sig."
  - q: "Vad är skillnaden mellan AES-128 och AES-256?"
    a: "Båda använder samma algoritm med olika nyckellängd och antal rundor: 128-bitars nycklar med 10 rundor mot 256-bitars nycklar med 14 rundor. AES-128 räknas redan som säkert; AES-256 ger en stor marginal, även mot framtida kvantattacker."
  - q: "Vad betyder GCM i AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) är ett driftläge som både krypterar data och skapar en autentiseringstagg. Om ens en bit i den krypterade filen ändras misslyckas dekrypteringen i stället för att ge tillbaka skadad eller manipulerad data."
  - q: "Är AES-256 kvantsäkert?"
    a: "Det anses i allmänhet vara kvantresistent. Grovers algoritm skulle i teorin halvera den effektiva nyckelstyrkan till omkring 128 bitar, vilket fortfarande räknas som säkert. Kvantdatorer är ett större hot mot asymmetriska algoritmer som RSA än mot AES."
  - q: "Varför behöver en app med AES-256 ändå ett starkt lösenord eller mönster?"
    a: "För att angripare inte gissar 256-bitars nyckeln; de gissar den korta hemlighet som nyckeln härleds från. Om din hemlighet hör till de några tusen vanligaste valen köper även långsam nyckelhärledning bara begränsad tid."
---

”AES-256-kryptering” står i funktionslistan hos nästan varje integritetsapp. Det är ett verkligt och meningsfullt påstående, men chiffret är också den del av ett system som minst sannolikt fallerar. Den här guiden förklarar vad AES-256 gör, vad tilläggen som GCM betyder och varför steget som gör om ditt mönster eller lösenord till en nyckel förtjänar mer av din uppmärksamhet.

## Vad AES är

AES (Advanced Encryption Standard) är ett symmetriskt blockchiffer: samma hemliga nyckel krypterar och dekrypterar, och data bearbetas i block om 128 bitar. Det valdes av amerikanska National Institute of Standards and Technology (NIST) 2001 efter en öppen, flerårig offentlig tävling, och den vinnande konstruktionen, Rijndael, kom från två belgiska kryptografer.

I dag finns AES överallt: i HTTPS-anslutningar, wifi, diskkryptering och hårdvaran i varje modern iPhone. Den spridningen är en styrka. Kryptografer har granskat AES i över två decennier, och många processorer accelererar det i hårdvara.

### Nyckellängder

AES finns i tre nyckellängder:

| Variant | Nyckellängd | Rundor | Möjliga nycklar |
|---|---|---|---|
| AES-128 | 128 bitar | 10 | cirka 3,4 × 10³⁸ |
| AES-192 | 192 bitar | 12 | cirka 6,3 × 10⁵⁷ |
| AES-256 | 256 bitar | 14 | cirka 1,2 × 10⁷⁷ |

För att sätta AES-256-siffran i perspektiv: den ligger inte långt från vanliga uppskattningar av antalet atomer i det observerbara universum. Att prova varje nyckel är inte en fråga om snabbare datorer; det är fysiskt utom räckhåll.

## Driftlägen: varför ”GCM” spelar roll

Ett blockchiffer i sig förvränger bara ett enda block på 16 byte. Ett **driftläge** anger hur hela filer krypteras säkert. Äldre lägen gav bara sekretess, vilket innebar att en angripare ibland kunde vända bitar i chiffertexten och orsaka förutsägbara ändringar i den dekrypterade datan.

**GCM (Galois/Counter Mode) är ett läge för autentiserad kryptering.** Det krypterar datan och beräknar dessutom en autentiseringstagg över den. När du dekrypterar kontrolleras taggen först. Har filen manipulerats eller skadats misslyckas dekrypteringen rent, i stället för att lämna tillbaka ändrat innehåll.

GCM har en strikt regel: ett nonce (ett tal som bara används en gång) får aldrig upprepas under samma nyckel. Välbyggda system undviker den risken strukturellt, till exempel genom att ge varje fil en egen nyckel.

## Delen som faktiskt avgör din säkerhet: nyckelhärledning

Här är den obekväma sanningen om ”AES-256” i en låsskyddad app. Ingen angriper 256-bitars nyckeln direkt. De angriper det du kommer ihåg.

Ett mönster, en PIN-kod eller ett lösenord är kort. En **nyckelhärledningsfunktion (KDF)** är processen som gör om den korta hemligheten till en nyckel med full längd. Om KDF:en är snabb kan en angripare som har kopierat den krypterade datan testa miljarder gissningar. Om den är avsiktligt långsam kostar varje gissning verklig tid och datorkraft.

### Så bromsar PBKDF2 angripare

**PBKDF2** (Password-Based Key Derivation Function 2) är en spridd, standardiserad KDF. Den kör din hemlighet genom en nyckelstyrd hashfunktion (HMAC) många tusen gånger och blandar in ett **salt**, ett slumpvärde som gör din härledda nyckel unik även om någon annan valt samma hemlighet.

- **Iterationer** multiplicerar kostnaden för varje gissning. Med hundratusentals iterationer tar en gissning som annars skulle ta en mikrosekund en märkbar bråkdel av en sekund.
- **Saltet** slår ut förberäknade tabeller. En angripare kan inte bygga en enda jättelista över ”mönster → nyckel” och återanvända den mellan enheter.

Ändå kan ingen KDF rädda en hemlighet som hör till de första tusen en angripare skulle prova. Därför är råden om att välja en stark hemlighet i guiden [mönster, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id) lika viktiga som chiffret. Testa en liknande form (aldrig ditt riktiga mönster) med [verktyget för mönsterstyrka](id:pattern-strength-checker).

## Kvantfrågan

Kvantdatorer hotar viss kryptografi allvarligt och annan bara lite.

- **Asymmetriska algoritmer** som RSA och elliptisk kurvkryptografi skulle kunna knäckas med Shors algoritm på en tillräckligt stor kvantdator. Därför rullas kvantsäkert nyckelutbyte ut i hela branschen.
- **Symmetriska chiffer** som AES möter Grovers algoritm, som ger en kvadratisk uppsnabbning av totalsökning. I praktiken halveras ungefär den effektiva nyckellängden: AES-256 skulle ge omkring 128-bitars säkerhet mot en kvantangripare.

128-bitars säkerhet räknas fortfarande som starkt. Det är ett skäl till att AES-256 rekommenderas för data som måste förbli konfidentiell länge.

## Vanliga missuppfattningar

- **Superlativ i en funktionslista betyder något.** Det gör de inte. AES är en öppen standard som används av banker, webbläsare och chattappar; dramatiska adjektiv framför den är marknadsföring.
- **AES-256 gör en app säker.** Det gör de krypterade byten säkra. Nyckelhanteringen, KDF:en, upplåsningsdesignen, säkerhetskopior och kopior som ligger kvar på andra ställen avgör om helheten är det.
- **Längre nycklar lagar svaga lösenord.** Det gör de inte. En 256-bitars nyckel härledd från ”1234” är bara så stark som ”1234”.

## Så använder Velcrypt AES-256

Velcrypts design följer principen ovan: starkt chiffer, omsorgsfull nyckelhantering, långsam härledning.

- **Chiffer:** AES-256-GCM via Apple CryptoKit, så varje fil både krypteras och autentiseras.
- **Nyckelhärledning:** ditt mönster bearbetas med PBKDF2-HMAC-SHA512 med minst 600 000 iterationer och ett slumpmässigt salt per enhet som förvaras i iOS-nyckelringen.
- **Nyckelhierarki:** varje valv har en egen slumpmässig 256-bitars huvudnyckel, och nycklar per fil härleds från den med HKDF. Separata nycklar per fil gör det också enkelt att följa GCM:s nonce-regel.
- **Extra lager:** iOS Dataskydd (klassen fullständigt skydd) tillämpas på filerna ovanpå Velcrypts egen kryptering.
- **Bara på enheten:** inget konto och inga servrar, så det finns ingen kopia av dina nycklar någon annanstans.

Sidan om [krypteringen](id:encryption) sammanfattar detta, och [säkerhetsöversikten](id:security) är tydlig med vad kryptering inte kan skydda mot, som att någon ser dig rita mönstret eller att telefonen lämnas över med valvet öppet.
