---
pageId: duress-password-explained
title: "Nödlösenord och paniklösenord: så fungerar de"
description: "Vad ett nödlösenord, paniklösenord eller en tvångskod är, var idén kommer ifrån, hur mobilappar använder den och hur Velcrypts nödmönster fungerar."
h1: "Nödlösenord, panikkoder och nödmönster, förklarat"
navTitle: "Nödlösenord förklarat"
answer: "Ett nödlösenord (även kallat paniklösenord eller tvångskod) är en andra hemlighet som du bara använder när någon tvingar dig att låsa upp något. Det ser ut som en vanlig upplåsning men sätter i tysthet i gång en skyddsåtgärd, till exempel ett tyst larm eller radering av känsliga data. I Velcrypt öppnar nödmönstret ett lockbetesvalv och raderar permanent alla andra valv på iPhonen."
keyFacts:
  - "Ett nödlösenord ser ut som en vanlig upplåsning men utlöser en dold skyddsåtgärd."
  - "Idén kommer från larmsystem och banker, där en överfallskod ger ett tyst larm."
  - "I mobiler öppnar nödkoder oftast harmlöst innehåll och raderar eller låser resten."
  - "I Velcrypt öppnar nödmönstret ett lockbetesvalv och raderar permanent alla andra valv."
  - "Raderingen går inte att ångra; bara en säkerhetskopia som gjorts tidigare ger tillbaka data."
  - "Det är ett verktyg för personlig säkerhet, aldrig ett sätt att förstöra bevis eller trotsa lagliga krav."
primaryKeyword: "nödlösenord"
keywords: ["paniklösenord", "panikkod", "tvångskod", "vad är ett nödlösenord", "nödmönster"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Vad nödlösenord och panikkoder är, var de kommer ifrån, hur mobilappar använder dem och hur Velcrypts nödmönster fungerar."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "Vad är ett nödlösenord?"
    a: "Ett nödlösenord är en hemlighet som du bara använder under tvång. För den som tittar ser det ut som en vanlig upplåsning, men i bakgrunden sätter det också i gång något som skyddar dig, till exempel ett tyst larm, att lockbetesinnehåll öppnas eller att känsliga data raderas."
  - q: "Är ett paniklösenord samma sak som en tvångskod?"
    a: "Ja, i vardagligt tal betyder orden samma sak. ”Överfallskod” är vanligt för larmsystem, ”paniklösenord” eller ”nödkod” för appar och enheter. Velcrypt använder ett mönster i stället för en PIN-kod, så appen kallar sin variant för nödmönster."
  - q: "Larmar det polisen om man slår sin PIN-kod baklänges i en bankomat?"
    a: "Nej. Historien om ”PIN-koden baklänges” är en seglivad myt. Banker har studerat och patenterat liknande idéer, men bankomater fungerar i regel inte så. Lita inte på det."
  - q: "Vad gör Velcrypts nödmönster?"
    a: "Att rita det på låsskärmen öppnar lockbetesvalvet som du ställde in det i och raderar samtidigt, i tysthet och permanent, alla andra valv på den iPhonen. Upplåsningen ser ut och tar lika lång tid som vanligt."
  - q: "Kan jag använda ett nödlösenord när polis eller gränstjänstemän begär åtkomst?"
    a: "Du bör inte använda det för att radera data i den situationen. Lagarna skiljer sig mellan länder, och att radera data när det finns ett lagligt krav kan i sig vara ett brott, till exempel bevisförstöring eller att försvåra en utredning. Sök juridisk rådgivning i stället."
---

Det mesta inom säkerhet handlar om att hålla främlingar ute. Ett nödlösenord handlar om en annan stund: när någon står bredvid dig och tvingar dig att släppa in dem. Den här guiden förklarar vad nödlösenord är, var idén kommer ifrån, hur mobilappar använder den och hur Velcrypts nödmönster fungerar, inklusive dess begränsningar.

## Vad ett nödlösenord är

Ett **nödlösenord** är en andra hemlighet som du bara använder när du blir tvingad. För den som tittar ser det precis ut som en vanlig upplåsning. I bakgrunden gör det något extra för att skydda dig eller dina data.

Du stöter på flera namn för samma idé:

- **Överfallskod** eller **tvångskod**, de vanliga orden för larmsystem och skyddade lokaler.
- **Paniklösenord** eller **panikkod**, vanligt i appar.
- **Nödkod**, **nöd-PIN** eller **nödmönster**, beroende på hur enheten låses upp.

Det avgörande är att reaktionen är **tyst**. Om koden utlöste en siren, ett varningsmeddelande eller en synlig förändring skulle den utsätta dig för större fara, eftersom den som tvingar dig skulle förstå att du hade gjort motstånd.

## Var idén kommer ifrån

### Larmsystem

Många larmcentraler för hem och företag har stöd för en överfallskod. Du slår den på knappsatsen och larmet stängs av som vanligt, så en inkräktare som tvingade dig att larma av ser inget ovanligt. Samtidigt skickar centralen tyst en signal till larmcentralen om att du är i fara.

### Banker och skyddade lokaler

Bankpersonal har länge haft tysta larm och överfallssignaler: en knapp, ett kodord eller en kod som larmar vakter utan att rånaren märker det. Målet är detsamma som med larmcentralerna: gå med på kraven på ytan och kalla på hjälp under ytan.

Du har kanske hört att polisen larmas om du slår din PIN-kod baklänges i en bankomat. Det är en myt. Idén har diskuterats och till och med patenterats, men bankomater fungerar i regel inte så, så räkna inte med det.

### Krypteringsprogram

Program för diskkryptering lade till en besläktad idé: ett andra lösenord som öppnar en trovärdig yttre volym medan en dold volym förblir osynlig. Det är ingen nödkod i strikt mening, eftersom inget utlöses, men målet är detsamma: att göra det säkert att ”ge med sig delvis”. [Trovärdigt förnekande, förklarat](id:plausible-deniability-explained) går igenom den historien.

## Så använder mobilappar nödkoder

I en mobil finns oftast ingen larmcentral att larma, så nödkoder skyddar i stället dina data. De vanligaste varianterna är:

1. **Öppna harmlöst innehåll.** Nödkoden öppnar ett lockbete: ett andra, vardagligt utseende utrymme. Det ligger nära ett [lockbetesvalv](id:what-is-a-decoy-vault) och raderar i sig ingenting.
2. **Öppna harmlöst innehåll och radera resten.** Nödkoden öppnar lockbetet och raderar samtidigt de känsliga data. Det är den starkaste varianten, och den går inte att ångra.
3. **Radera allt.** Vissa säkerhetsfokuserade system har en nödkod som raderar hela enheten eller appen. Det skyddar data men gör det uppenbart att något har hänt.

Det som skiljer en bra lösning från en dålig handlar mest om **vad som går att observera**:

- Ser upplåsningen likadan ut och tar den lika lång tid som en vanlig?
- Finns det någon inställning, märkning eller fil som avslöjar att en nödkod är inställd?
- Ändras något på skärmen efteråt?

Om svaret på någon av frågorna avslöjar koden kan den göra en spänd situation värre.

## Så fungerar Velcrypts nödmönster

Velcrypt låses upp med ett mönster som ritas på ett rutnät med 5×5 punkter, och varje mönster öppnar sitt eget valv. Appens [nödmönster](id:duress-pattern) är en Premium-funktion som bygger på den modellen:

- **Du ställer in det inifrån ett lockbetesvalv**, under Inställningar → Nödmönster. Ett lockbete är ett andra valv med harmlöst, trovärdigt innehåll. Fler valv än det första kräver Premium.
- **Du ritar ett separat mönster två gånger och bekräftar.** Det får inte vara ett mönster som redan öppnar ett valv.
- **På låsskärmen öppnar nödmönstret lockbetet** och raderar i tysthet och permanent alla andra valv på den iPhonen.
- **Inget på skärmen visar att det har hänt.** Upplåsningen ser likadan ut och tar lika lång tid som vanligt.
- **Appen visar aldrig om ett nödmönster är inställt.** En krypterad post med fast storlek finns alltid i iOS-nyckelringen; när inget nödmönster är inställt innehåller den slumpmässiga byte.
- **Ett per iPhone.** Ställer du in ett nytt nödmönster ersätter det det gamla. För att stänga av det måste du rita det, och att stänga av det raderar ingenting.
- **Det fortsätter att fungera om Premium upphör.** Det är bara inställningen som kräver Premium.

Ställer du in det i det enda valvet på telefonen finns det inget annat att radera, och Velcrypt varnar dig för det.

## De ärliga begränsningarna

### Raderingen är permanent

Raderade valv kan inte återställas från telefonen. Valvdata ingår inte i iCloud- eller datorsäkerhetskopior, så den enda vägen tillbaka är en krypterad säkerhetskopia som du tidigare har skapat under Inställningar → Säkerhetskopiering. Säkerhetskopieringen är gratis, och nödmönstret rör inte säkerhetskopior som ligger utanför appen. [Säkerhetssidan](id:security#encrypted-backup) förklarar hur säkerhetskopiorna skyddas.

### Raderat är inte samma sak som fysiskt utplånat

Flashminne ger ingen garanti för att raderade byte fysiskt skrivs över direkt. Velcrypt förlitar sig i stället på att valvdata krypteras med AES-256-GCM och att nycklarna raderas tillsammans med valvkatalogerna, så att det som eventuellt ligger kvar är chiffertext utan nyckel.

### Det når bara Velcrypts valv

Kopior i ditt bildbibliotek, i Nyligen raderade, i iCloud, i chattar eller i någon annans telefon påverkas inte. [Radera originalen efter importen](id:delete-original-photos-after-import).

### Det kan inte ångra iakttagelse

Om någon har sett eller filmat dig när du ritade ditt riktiga mönster ändrar ett nödmönster inte vad de vet.

## Ansvar: vad ett nödlösenord inte är till för

Ett nödlösenord är ett verktyg för din personliga säkerhet. Det är tänkt för stunder som ett rån, ett hot eller en kontrollerande partner som kräver att få se din telefon.

Det är **inte** ett sätt att förstöra bevis eller att kringgå ett lagligt krav från polis, gränstjänstemän eller en domstol. Lagarna skiljer sig mellan länder, och att radera data när det finns ett rättsligt krav kan i sig vara ett brott, till exempel bevisförstöring eller att försvåra en utredning. Om du står inför ett rättsligt krav, eller räknar med att göra det, sök juridisk rådgivning. [Guiden om mobilen vid gränsen](id:phone-privacy-border-crossing) tar upp just resor.

## Bör du använda ett?

Ett nödmönster är rimligt om du kan föreställa dig att bli pressad att låsa upp dina valv och hellre förlorar filerna än låter någon se dem. Det är mindre rimligt om filerna är oersättliga och du saknar säkerhetskopia, eller om du skulle ha svårt att minnas vilket mönster som gör vad när du är stressad.

Bestämmer du dig för att använda ett, börja med en säkerhetskopia, bygg ett trovärdigt lockbete och läs [så ställer du in ett lockbetesvalv och ett nödmönster](id:set-up-decoy-vault-and-duress-pattern). Funderar du på det på grund av en viss person tar [vad du gör om någon tvingar dig att låsa upp mobilen](id:forced-to-unlock-phone) upp helheten kring din säkerhet. Premium-abonnemangen finns på [prissidan](id:pricing).
