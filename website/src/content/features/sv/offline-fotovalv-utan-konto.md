---
pageId: offline-no-account
title: "Offline fotovalv utan konto, utan moln och utan servrar"
description: "Velcrypt fungerar helt i din iPhone: inget konto, ingen e-post, inga servrar, inga uppladdningar och ingen analys av valvinnehåll. Det här betyder det."
h1: "Helt offline, inget konto"
navTitle: "Offline, inget konto"
answer: "Velcrypt körs helt i din iPhone. Det finns inget konto, ingen registrering, ingen e-post, ingen server och ingen uppladdning, och ingen analys av det du sparar. Valvdata undantas också från iCloud- och datorsäkerhetskopior. Ett glömt mönster kan inte återställas, och en förlorad telefon tar valven med sig om du inte har skapat en egen krypterad säkerhetskopia."
keyFacts:
  - "Inget konto, ingen registrering och ingen e-postadress."
  - "Inga servrar och inga uppladdningar; valvfilerna lämnar aldrig telefonen."
  - "Ingen analys av valvinnehåll."
  - "Valvdata undantas från iCloud-säkerhetskopior och säkerhetskopior via Finder/iTunes."
  - "Avvägning: ingen automatisk återställning. En krypterad säkerhetskopia som du skapar själv ingår gratis."
primaryKeyword: "fotovalv utan konto"
keywords: ["offline fotovalv iphone", "bildapp utan moln", "fotovalv utan registrering", "lokalt fotovalv", "privat bildapp utan inloggning"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Inget konto, inga servrar, inga uppladdningar, ingen innehållsanalys. Allt stannar i din iPhone, med en ärlig avvägning kring återställning."
status: available
schemaType: WebPage
order: 5
related: [encryption, photo-vault-without-account, forgot-vault-pattern, are-photo-vault-apps-safe, privacy]
faq:
  - q: "Behöver Velcrypt ett konto eller en e-postadress?"
    a: "Nej. Det finns ingen registrering, ingen inloggning och ingen e-post. Du öppnar appen och ritar ett mönster; det är allt."
  - q: "Säkerhetskopieras mina valvfiler till iCloud?"
    a: "Nej. Valvdata undantas från iCloud och från säkerhetskopior på dator via Finder eller iTunes. Vill du ha en kopia skapar du en krypterad säkerhetskopia under Inställningar → Säkerhetskopiering."
  - q: "Vad händer med mitt valv om jag tappar bort telefonen?"
    a: "Valvet försvinner med den, om du inte har skapat en krypterad säkerhetskopia. Har du det kan du återställa valvet från filen på en ny iPhone med lösenordet för säkerhetskopian. Velcrypt har ingen egen kopia och kan inte hjälpa till."
  - q: "Kan jag säkerhetskopiera mina valv?"
    a: "Ja, gratis. Under Inställningar → Säkerhetskopiering skapar du en krypterad .velcrypt-fil av det öppna valvet, skyddad av ett lösenord du väljer. Du sparar filen själv, och den kan återställas på vilken iPhone som helst."
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

Valvdata undantas från iCloud-säkerhetskopiering och från säkerhetskopior på dator via Finder eller iTunes. Det är avsiktligt: en säkerhetskopia är ytterligare en kopia, lagrad någonstans du inte helt kontrollerar, och Velcrypt skapar inga kopior som du inte själv har valt.

Det skiljer sig från Apples eget album Gömda, som synkas via iCloud-bilder när det är aktiverat. Är du osäker på hur dina befintliga bilder lagras kan du läsa [sparas gömda bilder i iCloud?](id:are-hidden-photos-saved-to-icloud)

## Den ärliga avvägningen: ingen automatisk återställning

Att hålla allt på en enda enhet har ett tydligt pris, och det är bättre att se det klart:

| Situation | Kan valvet återställas? |
| --- | --- |
| Du glömmer ditt mönster | Nej, men innehållet kan återställas från en tidigare krypterad säkerhetskopia |
| Telefonen tappas bort eller blir stulen | Bara från en krypterad säkerhetskopia |
| Telefonen går sönder så att den inte kan lagas | Bara från en krypterad säkerhetskopia |
| Du återställer en ny telefon från en iCloud- eller datorsäkerhetskopia | Nej, valvdata finns inte i den |
| Du glömmer lösenordet för säkerhetskopian | Nej |
| Du raderar Velcrypt från telefonen | Nej, när en iOS-app raderas försvinner dess data |

Ingen kan hjälpa till, inte heller Velcrypt, eftersom ingen annan någonsin haft en kopia. Innan du flyttar filer som inte går att ersätta till ett valv bör du skapa en krypterad säkerhetskopia och bestämma var den ska finnas, till exempel i iCloud Drive eller på en dator. Guiden om [vad du gör om du glömmer ditt valvmönster](id:forgot-vault-pattern) förklarar vilka alternativ som återstår.

## Krypterad säkerhetskopia, när du vill

Under Inställningar → Säkerhetskopiering kan du skapa en krypterad säkerhetskopia av det öppna valvet, gratis. Appen samlar valvet i en .velcrypt-fil som skyddas av ett lösenord du väljer, och du sparar filen själv i Filer, iCloud Drive eller på en dator. Velcrypt får aldrig del av filen. Med Återställ från säkerhetskopia läser du in den på vilken iPhone som helst. Bara du har lösenordet, så glömmer du det kan säkerhetskopian inte öppnas.

## Goda vanor för ett offlinevalv

- **Välj ett mönster du kommer ihåg** och öva på det de första dagarna.
- **Ha en separat kopia av allt som inte går att ersätta**, som skannade id-handlingar eller familjebilder, på en plats du litar på.
- **Radera originalen medvetet** när en kopia finns i valvet, även från Nyligen raderade. Se [att radera originalen efter import](id:delete-original-photos-after-import).
- **Håll fördröjningen för [automatisk låsning](id:auto-lock) kort** så att ett öppet valv inte förblir öppet om du lägger ifrån dig telefonen.
