---
pageId: calculator-vault-apps-explained
title: "Miniräknarvalv förklarade: förklädnad eller kryptering"
description: "Miniräknarappar gömmer ett bildvalv bakom en falsk miniräknare. Så fungerar förklädnaden, varför den inte är kryptering och var iOS avslöjar appen."
h1: "Miniräknarvalv, förklarade"
navTitle: "Miniräknarvalv förklarade"
answer: "Ett miniräknarvalv är ett fotovalv som ser ut och fungerar som en miniräknare tills du skriver in en hemlig kod som en uträkning. Förklädnaden kan lura en snabb blick, men den är inte kryptering, och iOS avslöjar appens verkliga identitet på ställen som sökningen i appbiblioteket, Spotlight, iPhone-lagring och dina köp i App Store."
keyFacts:
  - "Miniräknarvalv döljer ett fotovalv bakom en fungerande miniräknare; en kod som skrivs in som en uträkning öppnar det."
  - "Förklädnad och kryptering är olika saker: förklädnaden döljer att valvet finns, krypteringen skyddar filerna."
  - "Spotlight, appbiblioteket, iPhone-lagring, Skärmtid och köphistoriken i App Store kan avslöja den verkliga appen."
  - "En miniräknare som använder flera gigabyte lagring är ett uppenbart avslöjande."
  - "Många miniräknarvalv är annonsfinansierade; kontrollera integritetsetiketten i App Store innan du använder ett."
primaryKeyword: "miniräknare app dölja bilder"
keywords:
  - "miniräknarvalv iphone"
  - "falsk miniräknare fotovalv"
  - "hemlig miniräknare app"
  - "kalkylator app gömda bilder"
  - "hitta dolda miniräknarappar"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Så fungerar valv förklädda till miniräknare, varför en förklädnad inte är samma sak som kryptering och när knepet ändå har sin plats."
category: choosing
order: 22
related:
  - velcrypt-vs-calculator-vault-apps
  - are-photo-vault-apps-safe
  - plausible-deniability-explained
  - what-is-a-decoy-vault
  - best-private-photo-vault-apps-iphone
faq:
  - q: "Hur fungerar miniräknarappar som döljer bilder?"
    a: "De öppnas som en fungerande miniräknare. När du skriver in en viss kod, ofta följd av likhets- eller procenttangenten, växlar appen till ett dolt fotovalv. Utan koden beter den sig som en vanlig miniräknare."
  - q: "Kan någon hitta ett miniräknarvalv på min iPhone?"
    a: "Ja, om hen letar. Appens verkliga namn och storlek syns på ställen som sökningen i appbiblioteket, Inställningar › Allmänt › iPhone-lagring, Skärmtid och köphistoriken i App Store."
  - q: "Är miniräknarvalv krypterade?"
    a: "Vissa är det och vissa inte. Miniräknarförklädnaden säger ingenting om hur filerna lagras, så kontrollera om utvecklaren dokumenterar riktig kryptering i vila."
  - q: "Är ett miniräknarvalv bättre än ett vanligt valv?"
    a: "Inte i sig. Det lägger till en förklädnad, som kan hjälpa mot en snabb blick, men skyddet av dina filer beror fortfarande på krypteringen och hur stark din kod är."
  - q: "Finns det ett bättre alternativ än att förklä en app?"
    a: "I iOS 18 och senare kan du gömma vilken app som helst bakom Face ID i mappen för gömda appar i appbiblioteket. Ett annat sätt är trovärdigt förnekande, där ett valv inte bevisar att annat innehåll finns ens när det öppnas."
---

I App Store är förvånansvärt många ”miniräknare” egentligen inga miniräknare. De är fotovalv i förklädnad. Idén är smart: ingen tittar två gånger på en miniräknare. Men det är värt att förstå exakt vad förklädnaden gör och inte gör innan du anförtror den något känsligt.

## Så fungerar en miniräknarförklädnad

Ett miniräknarvalv är en fotovalv-app som är gjord för att se ut och bete sig som en vanlig miniräknare. Symbolen liknar en miniräknare, namnet på hemskärmen är oftast något i stil med ”Kalkylator” och när den öppnas räknar den på riktigt. Valvet visas först när du anger en hemlig kod, oftast en siffra följd av en viss tangent som **=** eller **%**.

Vissa varianter går längre: en falsk historik med ”senaste uträkningar”, en lockbeteskod som öppnar ett harmlöst galleri eller ett alternativ som får appen att krascha eller stängas om fel kod anges. Funktionerna skiljer sig mycket mellan utvecklare.

<!-- TODO verify -->

## Förklädnad är inte kryptering

Här besvaras två olika frågor:

- **Förklädnad** svarar på: ”Kommer någon att märka att det finns ett valv på telefonen?”
- **Kryptering** svarar på: ”Om någon kommer åt filerna, kan hen läsa dem?”

Kryptering är processen att kasta om data så att de bara kan läsas med rätt nyckel. En miniräknarförklädnad gör ingenting för den frågan. Filerna kan vara ordentligt krypterade, eller så kan de vara vanliga bildfiler i appens lagring bakom en kodskärm. Det går inte att se på miniräknaren. Leta efter ett tydligt besked om hur filerna lagras och hur nyckeln hänger ihop med din kod; vår [säkerhetschecklista för valv](id:are-photo-vault-apps-safe) förklarar vad du ska titta efter.

Det omvända gäller också: ett valv kan ha stark kryptering och ingen förklädnad alls.

## Var iOS avslöjar den verkliga appen

iOS är inte gjort för att hålla en apps identitet hemlig, så en förklädd app lämnar spår på flera ställen. Den som vet var hen ska leta kan hitta dem:

| Var | Vad det kan avslöja |
| --- | --- |
| **Spotlight och sökning i appbiblioteket** | Att söka på appens verkliga namn, eller bläddra bland kategorierna i appbiblioteket, kan få fram den |
| **Inställningar › Allmänt › iPhone-lagring** | En ”miniräknare” som använder gigabyte av utrymme |
| **Skärmtid** | Hur länge du använder din ”miniräknare” |
| **Köphistorik i App Store** | Appens faktiska namn och sida i App Store |
| **Hålla fingret på symbolen** | Alternativ som att dela appen, vilket kan leda till dess sida i App Store |
| **Två miniräknare** | Apples egen Kalkylator finns kvar på telefonen om du inte har tagit bort den |

Lagringsledtråden är särskilt svår att undvika: bilder och videor tar plats, och iOS visar varje apps storlek ärligt. Om någon är aktivt misstänksam hjälper en förklädnad ofta mindre än man tror.

## När förklädnad ändå kan hjälpa

Det gör inte miniräknarvalv värdelösa. En förklädnad har verkligt värde i några situationer:

- **Tillfällig exponering.** Ett barn, en vän eller en kollega som tittar på din hemskärm undersöker knappast en miniräknare.
- **Slippa frågor.** Vissa vill helt enkelt inte förklara varför de har en ”valvapp”.
- **Delade enheter** där ingen letar efter något.

Om någon aktivt letar, eller kan pressa dig att öppna appar, är förklädnaden ett tunt lager. I den situationen brukar två andra idéer hålla bättre.

### Göm appen med iOS egen funktion

I iOS 18 och senare kan du hålla fingret på de flesta appar och välja att kräva Face ID eller att gömma appen. Gömda appar flyttas till en mapp för gömda appar längst ned i appbiblioteket, som låses med Face ID, Touch ID eller lösenkoden, och de syns inte längre i Spotlight. Det är en systemfunktion som fungerar med alla appar, inte bara valv. Samma förbehåll gäller som för albumet Gömda: den som kan lösenkoden kan öppna mappen.

<!-- TODO verify iOS label -->

### Trovärdigt förnekande i stället för förklädnad

Trovärdigt förnekande är idén att ingenting bevisar att det finns mer att hitta, även när någon ser appen eller får dig att öppna den. Ett lockvalv är en form: en andra kod öppnar ett oskyldigt utrymme. En starkare form är en utformning där vilken kod som helst öppnar något och appen aldrig bekräftar hur många utrymmen som finns. Vi förklarar båda i [vad är ett lockvalv?](id:what-is-a-decoy-vault) och [trovärdigt förnekande förklarat](id:plausible-deniability-explained).

## Frågor att ställa innan du väljer ett miniräknarvalv

1. Förklarar utvecklaren hur filerna krypteras, inte bara döljs?
2. Vad listar integritetsetiketten i App Store? Många miniräknarvalv är annonsfinansierade, vilket oftast innebär spårnings-SDK:er.
3. Finns det ett konto eller en uppladdning till molnet, och är det valfritt?
4. Hur får du tillbaka åtkomsten om du glömmer koden?
5. Kopierar importen bilden, så att originalet ligger kvar i biblioteket?

<!-- TODO verify -->

Den sista punkten överraskar folk med alla sorters valv. Originalet ligger kvar i Bilder och i **Nyligen raderade** tills du tar bort det; se [radera originalen efter import](id:delete-original-photos-after-import).

## Så hanterar Velcrypt det här

Velcrypt låtsas inte vara något annat. Appen har ingen miniräknarförklädnad och ingen alternativ symbol. I stället fokuserar den på vad som händer när appen väl är öppen. Varje valv öppnas med sitt eget mönster som ritas på ett rutnät med 5×5 punkter, och ett mönster som appen inte har sett förut öppnar helt enkelt ett tomt valv, utan felmeddelande och utan något som bevisar att andra valv finns ([dolda valv](id:hidden-vaults)). Filerna krypteras med AES-256-GCM med nycklar som härleds från mönstret ([kryptering](id:encryption)), och allt stannar på enheten.

Avvägningen är att appen syns på hemskärmen, om du inte använder iOS egen funktion för att gömma appar. Och i den första versionen säkerhetskopieras valvinnehållet ingenstans, så en förlorad telefon eller ett glömt mönster innebär förlorat innehåll. En direkt jämförelse finns i [Velcrypt mot miniräknarvalv](id:velcrypt-vs-calculator-vault-apps).
