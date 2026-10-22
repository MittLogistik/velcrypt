---
pageId: offline-no-account
title: "Offline fotovalv utan konto, utan moln och utan servrar"
description: "Velcrypt fungerar helt i din iPhone: inget konto, ingen e-post, inga servrar, inga uppladdningar och ingen analys av valvinnehåll. Det här betyder det."
h1: "Helt offline, inget konto"
navTitle: "Offline, inget konto"
answer: "Velcrypt körs helt i din iPhone. Det finns inget konto, ingen registrering, ingen e-post, ingen server och ingen uppladdning, och ingen analys av det du sparar. I den första versionen undantas valvdata också från iCloud- och datorsäkerhetskopior, så en förlorad telefon eller ett glömt mönster kan inte återställas."
keyFacts:
  - "Inget konto, ingen registrering och ingen e-postadress."
  - "Inga servrar och inga uppladdningar; valvfilerna lämnar aldrig telefonen."
  - "Ingen analys av valvinnehåll."
  - "Valvdata undantas från iCloud-säkerhetskopior och säkerhetskopior via Finder/iTunes i den första versionen."
  - "Avvägning: ingen återställning om telefonen försvinner eller mönstret glöms. En krypterad säkerhetskopia är planerad."
primaryKeyword: "fotovalv utan konto"
keywords: ["offline fotovalv iphone", "bildapp utan moln", "fotovalv utan registrering", "lokalt fotovalv", "privat bildapp utan inloggning"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Inget konto, inga servrar, inga uppladdningar, ingen innehållsanalys. Allt stannar i din iPhone, med en ärlig avvägning kring återställning."
status: available
schemaType: WebPage
order: 5
related: [encryption, photo-vault-without-account, forgot-vault-pattern, are-photo-vault-apps-safe, privacy]
faq:
  - q: "Behöver Velcrypt ett konto eller en e-postadress?"
    a: "Nej. Det finns ingen registrering, ingen inloggning och ingen e-post. Du öppnar appen och ritar ett mönster; det är allt."
  - q: "Säkerhetskopieras mina valvfiler till iCloud?"
    a: "Nej. I den första versionen undantas valvdata från iCloud och från säkerhetskopior på dator via Finder eller iTunes. Dina filer finns bara i din iPhone."
  - q: "Vad händer med mitt valv om jag tappar bort telefonen?"
    a: "Valvet försvinner med den. Eftersom inget sparas på en server eller i en säkerhetskopia kan varken du eller Velcrypt återställa det. Spara kopior av sådant som inte går att ersätta någonstans du litar på."
  - q: "Kommer Velcrypt någon gång att erbjuda säkerhetskopior?"
    a: "En krypterad säkerhetskopia med återställning är planerad, troligen som en del av den valfria Premium-uppgraderingen. Det finns inget lanseringsdatum ännu, och den första versionen innehåller den inte."
---

Många valvappar börjar med att be om din e-postadress. Velcrypt ber inte om någonting. Det finns inget att registrera sig för, inget att logga in på och inget på en server som kan läcka, eftersom det inte finns någon server. Den här sidan förklarar vad det innebär i praktiken, inklusive nackdelen.

## Vad ”offline” betyder i Velcrypt

Ett offlinevalv är ett valv som sparar och krypterar allt på själva enheten, utan att vara beroende av en fjärrtjänst. I Velcrypt betyder det:

- **Inget konto.** Inget användarnamn, ingen lösenordsåterställning och ingen profil.
- **Ingen e-post eller telefonnummer.** Velcrypt frågar aldrig vem du är.
- **Inga servrar.** Det finns inget Velcrypt-moln som har dina filer eller nycklar.
- **Inga uppladdningar.** Bilder, videor och dokument du importerar stannar i din iPhone.
- **Ingen analys av valvinnehåll.** Inget samlas in om vad du sparar, hur många objekt du har eller vad de visar.

Dina filer krypteras i telefonen med nycklar som härleds ur ditt [mönster](id:pattern-lock), enligt beskrivningen på sidan om [kryptering](id:encryption). Nycklarna finns aldrig någon annanstans.

## Varför inget konto är en integritetsfunktion

Varje konto är en länk mellan dig och dina data. Det är en e-postadress någon kan söka efter, ett lösenord någon kan nätfiska och en databas någon kan bryta sig in i. Utan konton försvinner alla tre.

Det betyder också att Velcrypt inte kan lämna ut dina filer, eftersom företaget inte har några. Det finns ingen kopia hos företaget att begära ut. Guiden om [fotovalv utan konto](id:photo-vault-without-account) går djupare in på varför det spelar roll, och [integritetspolicyn](id:privacy) beskriver exakt vad appen och webbplatsen samlar in och inte samlar in.

## Undantaget från iCloud- och datorsäkerhetskopior

I den första versionen undantas valvdata från iCloud-säkerhetskopiering och från säkerhetskopior på dator via Finder eller iTunes. Det är avsiktligt: en säkerhetskopia är ytterligare en kopia, lagrad någonstans du inte helt kontrollerar, och Velcrypt håller antalet kopior på en.

Det skiljer sig från Apples eget album Gömda, som synkas via iCloud-bilder när det är aktiverat. Är du osäker på hur dina befintliga bilder lagras kan du läsa [sparas gömda bilder i iCloud?](id:are-hidden-photos-saved-to-icloud)

## Den ärliga avvägningen: ingen återställning

Att hålla allt på en enda enhet har ett tydligt pris, och det är bättre att se det klart:

| Situation | Kan valvet återställas? |
| --- | --- |
| Du glömmer ditt mönster | Nej |
| Telefonen tappas bort eller blir stulen | Nej |
| Telefonen går sönder så att den inte kan lagas | Nej |
| Du återställer en ny telefon från en säkerhetskopia | Nej, valvdata finns inte i säkerhetskopian |
| Du raderar Velcrypt från telefonen | Nej, när en iOS-app raderas försvinner dess data |

Ingen kan hjälpa till, inte heller Velcrypt, eftersom ingen annan någonsin haft en kopia. Innan du flyttar filer som inte går att ersätta till ett valv bör du bestämma var en andra kopia ska finnas, till exempel på en krypterad hårddisk du har hemma. Guiden om [vad du gör om du glömmer ditt valvmönster](id:forgot-vault-pattern) förklarar vilka alternativ som återstår.

## Planerat: krypterad säkerhetskopia

En krypterad säkerhetskopia med återställning är planerad för en framtida version, som en del av den valfria Premium-uppgraderingen. Målet är att du ska kunna ha en skyddad kopia utan att ge upp principen att bara du har nycklarna. Det finns inget datum för den ännu, och inget på den här sidan ska läsas som ett löfte om när den kommer.

## Goda vanor för ett offlinevalv

- **Välj ett mönster du kommer ihåg** och öva på det de första dagarna.
- **Ha en separat kopia av allt som inte går att ersätta**, som skannade id-handlingar eller familjebilder, på en plats du litar på.
- **Radera originalen medvetet** när en kopia finns i valvet, även från Nyligen raderade. Se [att radera originalen efter import](id:delete-original-photos-after-import).
- **Håll fördröjningen för [automatisk låsning](id:auto-lock) kort** så att ett öppet valv inte förblir öppet om du lägger ifrån dig telefonen.
