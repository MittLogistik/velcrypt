---
pageId: encryption
title: "Velcrypts kryptering: AES-256-GCM, nycklar från ditt mönster"
description: "Så krypterar Velcrypt ditt fotovalv: PBKDF2-HMAC-SHA512 från ditt mönster, en slumpad 256-bitars huvudnyckel, HKDF per fil och AES-256-GCM."
h1: "Så krypterar Velcrypt ditt valv"
navTitle: "Kryptering"
answer: "Velcrypt krypterar varje fil med AES-256-GCM. Ditt mönster sträcks med PBKDF2-HMAC-SHA512 (minst 600 000 iterationer, salt per enhet) till en nyckel som låser upp valvets slumpmässiga 256-bitars huvudnyckel, ur vilken HKDF härleder en egen nyckel för varje fil. iOS dataskydd lägger till ett andra lager."
keyFacts:
  - "Chiffer: autentiserad kryptering med AES-256-GCM via Apple CryptoKit."
  - "Nyckelsträckning av mönstret: PBKDF2-HMAC-SHA512, minst 600 000 iterationer."
  - "Ett slumpmässigt salt per enhet sparas i iOS-nyckelringen."
  - "Varje valv har en egen slumpmässig 256-bitars huvudnyckel; varje fil får en egen nyckel via HKDF."
  - "iOS dataskydd (klassen fullständigt skydd) gäller ovanpå."
primaryKeyword: "krypterat fotovalv iphone"
keywords: ["fotovalv kryptering", "aes-256-gcm fotovalv", "pbkdf2 valvapp", "hur krypteras mitt valv", "autentiserad kryptering förklarad"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM per fil, nycklar härledda ur ditt mönster med PBKDF2-HMAC-SHA512 och HKDF, plus iOS dataskydd."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "Vilken kryptering använder Velcrypt?"
    a: "AES-256-GCM, ett autentiserat krypteringsläge, via Apples ramverk CryptoKit. Varje fil krypteras med en egen nyckel som härleds ur valvets slumpmässiga 256-bitars huvudnyckel."
  - q: "Sparas mitt mönster i telefonen?"
    a: "Ditt mönster används inte direkt som nyckel. Det sträcks med PBKDF2-HMAC-SHA512 med minst 600 000 iterationer och ett salt per enhet, och resultatet används för att låsa upp valvets huvudnyckel."
  - q: "Kan Velcrypt dekryptera mina filer?"
    a: "Nej. Velcrypt har inga servrar och ingen kopia av dina nycklar. Nycklarna kan bara återskapas i din telefon utifrån ditt mönster, vilket också är skälet till att ett glömt mönster inte går att återställa."
  - q: "Varför används iOS dataskydd också?"
    a: "Det lägger till ett oberoende lager. Filerna använder klassen fullständigt skydd, så iOS håller dem krypterade med nycklar knutna till enhetens lösenkod medan telefonen är låst, utöver Velcrypts egen kryptering."
---

Krypteringen är skälet till att ett valv är mer än en gömd mapp. I Velcrypt krypteras varje bild, video och dokument på din iPhone innan det sparas, med nycklar som bara kan återskapas ur ditt mönster. Den här sidan går igenom hur nycklarna skapas och används.

## Nyckelkedjan, steg för steg

Velcrypt använder en nyckelmodell i flera lager. Varje lager har en uppgift.

1. **Ditt mönster.** Du ritar det på [5×5-rutnätet](id:pattern-lock). Det är den enda hemlighet du behöver komma ihåg.
2. **Nyckelsträckning med PBKDF2-HMAC-SHA512.** Mönstret körs genom PBKDF2 med SHA-512 i **minst 600 000 iterationer**, tillsammans med ett slumpmässigt salt. Nyckelsträckning är en teknik som avsiktligt gör varje enskild gissning långsam, så att det blir dyrt att prova mönster ett i taget.
3. **Ett salt per enhet i nyckelringen.** Saltet är slumpmässigt, skapas på din enhet och förvaras i iOS-nyckelringen. Det gör att samma mönster ger en annan nyckel på en annan telefon, så förberäknade gissningstabeller blir värdelösa.
4. **Valvets huvudnyckel.** Varje valv har en egen **slumpmässig 256-bitars huvudnyckel**. Den sträckta mönsternyckeln krypterar inte dina filer direkt; den låser upp den här huvudnyckeln.
5. **Nycklar per fil med HKDF.** Ur huvudnyckeln härleder HKDF (en standardiserad nyckelhärledningsfunktion) en separat nyckel för varje fil. Inga två filer delar nyckel.
6. **AES-256-GCM.** Varje fil krypteras med sin egen nyckel med AES-256 i GCM-läge, via Apples CryptoKit.

| Lager | Vad det gör |
| --- | --- |
| Mönster | Hemligheten som bara du känner till |
| PBKDF2-HMAC-SHA512, 600 000+ iterationer | Gör varje gissning långsam |
| Salt per enhet (nyckelringen) | Gör nycklarna unika för enheten |
| Slumpmässig 256-bitars huvudnyckel | En per valv, håller valven åtskilda |
| HKDF | En unik nyckel för varje fil |
| AES-256-GCM | Krypterar och autentiserar filen |
| iOS dataskydd | Ett andra lager på systemnivå |

Eftersom varje valv har en egen huvudnyckel är valven kryptografiskt åtskilda. Det är det som gör [dolda valv](id:hidden-vaults) till mer än ett visuellt trick.

## Vad autentiserad kryptering betyder

Autentiserad kryptering är kryptering som skyddar både sekretess och integritet. AES-256-GCM gör två saker samtidigt: det förvränger filen så att den inte kan läsas utan nyckeln, och det lägger till en autentiseringstagg som bevisar att filen inte har ändrats.

När Velcrypt öppnar en fil kontrolleras taggen. Om så bara en byte har ändrats, vare sig genom skada eller manipulation, misslyckas dekrypteringen i stället för att i tysthet lämna tillbaka skadade eller manipulerade data. Äldre lägen som krypterar utan autentisering kan inte upptäcka sådant. En lättbegriplig genomgång av själva chiffret finns i [AES-256-kryptering, förklarat](id:aes-256-encryption-explained).

## iOS dataskydd som andra lager

Utöver sin egen kryptering sparar Velcrypt valvfilerna med iOS dataskydd inställt på klassen **fullständigt skydd**. I den klassen håller iOS filerna krypterade med nycklar knutna till enhetens lösenkod så fort telefonen är låst.

De två lagren är oberoende av varandra. Även om det ena på något sätt kringgicks skulle det andra fortfarande stå mellan en låst telefon och dina filer.

## Varför nycklarna inte finns någon annanstans

Velcrypt är [helt offline utan konto](id:offline-no-account). Det finns inga servrar, inga uppladdningar och ingen kopia av dina nycklar utanför telefonen. Den utformningen tar bort en hel kategori av risker: det finns ingen databas att bryta sig in i och ingen anställd som skulle kunna dekryptera dina filer.

Det har också ett pris. Eftersom nycklarna bara finns på enheten och bara via ditt mönster kan ingen återställa ett valv om mönstret glöms bort eller telefonen försvinner. Därför kan du själv skapa en krypterad säkerhetskopia, skyddad av ett lösenord du väljer, under Inställningar → Säkerhetskopiering.

## Vad krypteringen inte täcker

Stark kryptering skyddar lagrade filer. Den kan inte hjälpa om någon ser dig rita ditt mönster, om valvet är öppet när du lämnar över telefonen eller om skadlig kod körs på en jailbreakad enhet. Den når inte heller kopior utanför Velcrypt, till exempel original som fortfarande ligger i Bilder. [Säkerhetsöversikten](id:security) beskriver hotmodellen i sin helhet, inklusive [vad Velcrypt inte skyddar mot](id:security#what-velcrypt-does-not-protect-against).
