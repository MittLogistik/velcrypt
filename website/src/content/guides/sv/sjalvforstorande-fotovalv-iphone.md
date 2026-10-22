---
pageId: self-destruct-photo-vault
title: "Självförstörande fotovalv för iPhone: så fungerar det"
description: "Så fungerar ett fotovalv som raderar sig självt på iPhone: radering efter felaktiga försök kontra nödmönster, permanent radering och säkerhetskopior."
h1: "Självförstörande fotovalv på iPhone: så fungerar de och vad de kostar dig"
navTitle: "Självförstörande fotovalv"
answer: "Ett självförstörande fotovalv raderar sitt innehåll när ett villkor uppfylls. De två vanligaste är för många felaktiga försök och en särskild nödkod. Radering efter felaktiga försök kan utlösas av vem som helst; en nödkod bara av dig. Velcrypt använder ett nödmönster som öppnar ett lockbetesvalv och permanent raderar alla andra valv. Raderingen går inte att ångra, så ha en säkerhetskopia."
keyFacts:
  - "Självförstörelse raderar valvinnehållet när ett villkor uppfylls; raderingen går inte att ångra."
  - "Radering efter felaktiga försök kan utlösas av vem som helst som gissar fel, även ett barn eller en angripare."
  - "En nödkod utlöses bara medvetet av dig och kan vara tyst."
  - "iPhone kan själv radera all data efter 10 misslyckade försök med lösenkoden, om du slår på det."
  - "Velcrypts nödmönster öppnar ett lockbetesvalv och raderar permanent alla andra valv (Premium)."
  - "En krypterad säkerhetskopia som gjorts tidigare är den enda vägen tillbaka efter en självförstörelse."
primaryKeyword: "självförstörande fotovalv iphone"
keywords: ["fotovalv som raderar sig självt", "självförstörande valv app", "fotovalv radera efter felaktiga försök", "automatisk radering fotovalv", "panikradera bilder iphone"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Radering efter felaktiga försök kontra nödmönster, priset för permanent radering och hur du säkerhetskopierar innan du förlitar dig på någon av dem."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "Finns det ett fotovalv för iPhone som raderar sig självt?"
    a: "Ja. Vissa valvappar raderar sitt innehåll efter ett antal felaktiga försök, och vissa har en nöd- eller panikkod. Velcrypt har ett nödmönster (Premium) som öppnar ett lockbetesvalv och permanent raderar alla andra valv på iPhonen."
  - q: "Raderar Velcrypt valv efter för många felaktiga mönster?"
    a: "Nej. I Velcrypt öppnar ett mönster som appen inte har sett helt enkelt ett nytt, tomt valv, så det finns inga ”felaktiga försök” att räkna. Radering sker bara när någon ritar nödmönstret som du har ställt in."
  - q: "Kan jag få tillbaka bilder efter att ett valv har förstört sig självt?"
    a: "Inte från telefonen. I Velcrypt är den enda vägen tillbaka en krypterad säkerhetskopia som du tidigare skapat under Inställningar → Säkerhetskopiering och sparat utanför appen. Nödmönstret rör inte säkerhetskopior som ligger någon annanstans."
  - q: "Är självförstörelse samma sak som säker radering?"
    a: "Inte riktigt. Flashminne garanterar inte att raderade byte fysiskt skrivs över. Velcrypts valvdata krypteras med AES-256-GCM och nycklarna raderas tillsammans med valven, så det som ligger kvar är oläsbar chiffertext."
  - q: "Kan jag använda ett självförstörande valv om polisen vill se min mobil?"
    a: "Nej. Använd aldrig en raderingsfunktion för att förstöra bevis eller trotsa ett lagligt krav. Lagarna skiljer sig mellan länder, och att radera data när det finns ett rättsligt krav kan i sig vara ett brott. Sök juridisk rådgivning i stället."
---

”Ett valv som raderar sig självt” låter som det ultimata skyddet. Ibland är det det. Men självförstörelse är också den enda funktionen i en valvapp som kan kosta dig allt på en sekund. Den här guiden förklarar hur de vanligaste varianterna fungerar, vad var och en är bra och dålig på och hur du använder en utan att förlora filer du ville behålla.

## Vad ”självförstörande” betyder i ett fotovalv

En självförstörelsefunktion raderar en del av eller allt innehåll i ett valv när ett villkor uppfylls. På iPhone ser du mest tre sorter:

1. **Radering efter felaktiga försök:** efter ett visst antal felaktiga PIN-koder eller lösenord raderar appen sitt innehåll.
2. **Nöd- eller panikkod:** en särskild kod som öppnar harmlöst innehåll och raderar resten. [Nödlösenord, förklarat](id:duress-password-explained) ger bakgrunden.
3. **Radering på enhetsnivå:** iOS kan radera hela iPhonen efter 10 misslyckade försök med lösenkoden (Inställningar › Face ID och lösenkod › Radera data), och Hitta kan radera en förlorad telefon på distans.

De löser olika problem, och de brister på olika sätt.

## Radering efter felaktiga försök

Idén är enkel: om någon fortsätter att gissa, radera allt innan de har tur.

**Det här gör den bra**

- Den fungerar även när du inte är där, till exempel om telefonen blir stulen.
- Den sätter en hård gräns för hur mycket någon kan gissa på korta PIN-koder.

**Här brister den**

- **Vem som helst kan utlösa den.** Ett barn som leker med din telefon, en vän som vill skämta eller en angripare som hellre förstör dina filer än ger upp kan alla utlösa den, med flit eller av misstag.
- **Den syns.** Efter en radering är valvet uppenbart tomt eller återställt, vilket säger till personen att något har hänt.
- **Den skyddar mot gissningar, inte mot tvång.** Om någon tvingar dig att ange rätt kod kommer en räknare för felaktiga försök aldrig in i bilden.

Kontrollera också hur appen räknar försöken: om räknaren finns kvar när appen startas om och om den verkligen raderar data eller bara låser ute dig.

## Nödkoder och nödmönster

En nödkod utlöses medvetet av dig, oftast när någon tvingar dig att låsa upp appen. De bästa lösningarna öppnar ett trovärdigt lockbete och raderar i tysthet det känsliga innehållet bakom.

**Det här gör den bra**

- **Bara du kan utlösa den.** Ingen sätter i gång den genom att gissa.
- **Den kan vara tyst.** Om den är väl gjord visar inget på skärmen att något har raderats.
- **Den är gjord för tvång,** precis den situation som en räknare för felaktiga försök inte klarar.

**Här brister den**

- **Du måste kunna använda den.** Om någon tar telefonen när den redan är upplåst, eller ser dig rita din riktiga hemlighet, hjälper den inte.
- **Du måste minnas den under stress** och inte blanda ihop den med din riktiga hemlighet.
- **Den är lika oåterkallelig** som alla andra raderingar.

## Så gör Velcrypt

Velcrypt har med avsikt **ingen radering efter felaktiga försök**. Varje mönster som ritas på rutnätet med 5×5 punkter öppnar sitt eget valv, och ett mönster som appen inte har sett öppnar helt enkelt ett nytt, tomt valv utan felmeddelande. Det finns inget ”felaktigt mönster” att räkna, vilket är det som gör [dolda valv](id:hidden-vaults) förnekbara, och det betyder också att ingen kan radera dina valv bara genom att gissa fel.

I stället har Velcrypt ett [nödmönster](id:duress-pattern), som ingår i Premium:

- Du ställer in det under Inställningar → Nödmönster, inifrån ett [lockbetesvalv](id:what-is-a-decoy-vault) med harmlöst innehåll.
- Du ritar ett separat mönster två gånger och bekräftar. Det får inte vara ett mönster som redan öppnar ett valv.
- På låsskärmen öppnar det lockbetesvalvet och raderar i tysthet och permanent alla andra valv på den iPhonen. Upplåsningen ser ut och tar lika lång tid som vanligt.
- Appen visar aldrig om ett nödmönster är inställt. Det finns ett per iPhone; ett nytt ersätter det gamla. För att stänga av det måste du rita det, och det raderar ingenting.
- Det fortsätter att fungera om Premium upphör; det är bara inställningen som kräver Premium.
- Ställer du in det i det enda valvet på telefonen finns det inget annat att radera, och appen varnar dig.

## Varianterna jämförda

| | Radering efter felaktiga försök | Nödkod eller nödmönster | iPhones ”Radera data” |
|---|---|---|---|
| Vem kan utlösa den | Vem som helst som gissar fel tillräckligt många gånger | Bara den som känner till nödhemligheten | Vem som helst som gissar fel på lösenkoden 10 gånger |
| Gjord för | Gissningar, stöld | Att tvingas låsa upp | Gissningar, stöld |
| Syns efteråt | Oftast | Kan vara tyst | Ja, telefonen återställs |
| Vad den raderar | Appens innehåll | Beror på appen; i Velcrypt alla valv utom lockbetet | Allt på iPhonen |
| Går att ångra | Bara från en säkerhetskopia | Bara från en säkerhetskopia | Bara från en säkerhetskopia |

## Avvägningen du inte kommer undan: den är permanent

All självförstörelse byter möjligheten att återställa mot skydd. Innan du slår på en sådan funktion, var ärlig mot dig själv om tre saker.

### Du behöver en säkerhetskopia någon annanstans

Velcrypts valv undantas från iCloud- och datorsäkerhetskopior, så ett raderat valv är borta från telefonen. Den enda vägen tillbaka är en **krypterad säkerhetskopia som du har gjort tidigare**. I Velcrypt skapar Inställningar → Säkerhetskopiering en .velcrypt-fil av det öppna valvet, skyddad av ett lösenord du väljer. Det är gratis. Spara filen någonstans utanför appen, till exempel i Filer, iCloud Drive eller på en dator, så rör nödmönstret den inte. Förvara också lösenordet säkert: ett glömt lösenord för säkerhetskopian kan inte återställas. På [säkerhetssidan](id:security#encrypted-backup) ser du hur säkerhetskopiorna skyddas.

### Raderat är inte alltid fysiskt utplånat

Flashminne ger ingen garanti för att raderade byte fysiskt skrivs över direkt. Det som skyddar dig är krypteringen: Velcrypts valvdata krypteras med AES-256-GCM, och nycklarna raderas tillsammans med valvkatalogerna, så det som ligger kvar är chiffertext utan nyckel. Var skeptisk mot appar som lovar mer än så.

### Den raderar bara det som finns i appen

Original som fortfarande finns i Bilder, i Nyligen raderade, i iCloud, i chattar eller på en annan enhet påverkas inte. [Radera originalen efter importen](id:delete-original-photos-after-import).

## Använd den ansvarsfullt

En självförstörelsefunktion är ett verktyg för personlig säkerhet och integritet. Använd den aldrig för att förstöra bevis eller för att kringgå ett lagligt krav från polis, gränstjänstemän eller en domstol. Lagarna skiljer sig mellan länder, och att radera data när det finns ett rättsligt krav kan i sig vara ett brott. Om du befinner dig i en sådan situation, eller räknar med att göra det, sök juridisk rådgivning.

## Bör du välja ett självförstörande valv?

Välj ett om det är en verklig risk för dig att tvingas låsa upp ditt valv och du hellre förlorar filerna än låter någon se dem. Avstå, eller vänta tills du har en säkerhetskopia, om filerna är oersättliga.

Vilken app du än väljer, kontrollera hur självförstörelsen utlöses, om den syns och vad den faktiskt raderar. Vår [checklista för säkra fotovalv](id:are-photo-vault-apps-safe) hjälper. Väljer du Velcrypt går [så ställer du in ett lockbetesvalv och ett nödmönster](id:set-up-decoy-vault-and-duress-pattern) igenom inställningen med säkerhetskopian först, och [priser](id:pricing) visar Premium-abonnemangen.
