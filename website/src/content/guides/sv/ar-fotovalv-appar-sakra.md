---
pageId: are-photo-vault-apps-safe
title: "Är fotovalv-appar säkra? En checklista i 9 punkter"
description: "Fotovalv sträcker sig från riktig kryptering till en enkel PIN-skärm. Använd checklistan för att bedöma kryptering, datainsamling, moln och återställning."
h1: "Är fotovalv-appar säkra?"
navTitle: "Är fotovalv-appar säkra?"
answer: "Vissa är det, andra inte. Ett fotovalv är aldrig säkrare än sin kryptering, sin datainsamling och sina lagringsval. Ett pålitligt valv förklarar hur filerna krypteras, samlar in lite data, berättar om något skickas till en server och är ärligt om vad som händer om du glömmer koden eller raderar appen."
keyFacts:
  - "En PIN-skärm i sig skyddar inte filer; leta efter dokumenterad kryptering i vila som är knuten till din hemlighet."
  - "Integritetsetiketten i App Store visar vilka data en app säger att den samlar in och om den spårar dig."
  - "Annonsfinansierade valv innehåller oftast reklamkod från tredje part."
  - "Att radera en valvapp raderar normalt dess filer på enheten; kontrollera säkerhetskopieringen innan du avinstallerar."
  - "Import till ett valv kopierar oftast en bild, så originalet ligger kvar i Bilder tills du raderar det."
primaryKeyword: "är fotovalv-appar säkra"
keywords:
  - "är fotovalv säkert"
  - "är valvappar säkra"
  - "kan fotovalv-appar se mina bilder"
  - "fotovalv integritet"
  - "är hemlig bildapp säker"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "En praktisk checklista för att bedöma alla fotovalv: kryptering, integritetsetikett, konto, moln, annonser, avinstallation och återställning."
category: choosing
order: 21
related:
  - best-private-photo-vault-apps-iphone
  - photo-vault-without-account
  - aes-256-encryption-explained
  - calculator-vault-apps-explained
  - delete-original-photos-after-import
  - security
faq:
  - q: "Kan utvecklaren av en fotovalv-app se mina bilder?"
    a: "Om appen laddar upp dina bilder till sina servrar utan totalsträckskryptering kan utvecklaren tekniskt komma åt dem. Om appen bara behåller filerna på enheten, eller krypterar dem med en nyckel som bara du har, kan den inte det."
  - q: "Blir fotovalv-appar hackade?"
    a: "Genom åren har svagheter hittats i valvappar, oftast där filer lagrades okrypterade eller bara skyddades av en PIN-skärm. Att välja en app som dokumenterar riktig kryptering och lagrar så lite som möjligt minskar den risken."
  - q: "Vad händer med mina bilder om jag raderar en valvapp?"
    a: "För valv på enheten raderas valvfilerna normalt tillsammans med appen. För valv med molnsäkerhetskopiering kan filerna finnas kvar i ditt konto. Läs appens dokumentation innan du avinstallerar, och exportera först allt du vill behålla."
  - q: "Är en valvapp säkrare än albumet Gömda på iPhone?"
    a: "Det kan den vara, om den använder en separat hemlighet och riktig kryptering, eftersom albumet Gömda öppnas med enhetens lösenkod. Ett valv som bara lägger till en PIN-skärm, eller som laddar upp filer osäkert, är kanske ingen förbättring."
  - q: "Ska en fotovalv-app be om full åtkomst till bildbiblioteket?"
    a: "Det behövs inte för import; systemets bildväljare kan lämna över bara de objekt du väljer. Vissa valv begär bredare åtkomst för att kunna radera originalen åt dig. Ge bara den åtkomst som funktionerna du använder kräver."
---

”Valv” låter tryggt, men ordet säger ingenting om hur en app faktiskt lagrar dina filer. Vissa valvappar krypterar allt med en nyckel som härleds från din hemlighet. Andra lägger dina bilder i en vanlig mapp och sätter en knappsats framför. Du kan inte granska koden, men du kan lära dig mycket av vad en app berättar och vad den ber om.

Använd checklistan nedan på alla valv du överväger, även vårt.

## Checklistan

### 1. Förklarar appen sin kryptering?

Kryptering i vila innebär att filerna lagras i omkastad form och bara kan läsas med rätt nyckel. Ett säkert valv berättar på begriplig svenska vilken algoritm det använder (till exempel AES-256), hur nyckeln härleds från din PIN-kod, ditt lösenord eller ditt mönster och var nycklarna lagras.

Vaga fraser som ”säkerhet i banknivå” utan detaljer är en varningssignal. Detsamma gäller beskrivningar som bara handlar om låsskärmen. Se [AES-256-kryptering förklarad](id:aes-256-encryption-explained) för hur stabila svar ser ut.

### 2. Är hemligheten skild från enhetens lösenkod?

Om valvet öppnas med Face ID och faller tillbaka på iPhonens lösenkod kan alla som kan lösenkoden komma in, vilket är samma begränsning som det inbyggda [albumet Gömda](id:is-iphone-hidden-album-private). En separat PIN-kod, ett lösenord eller ett mönster är ett verkligt extra lager.

### 3. Vad säger integritetsetiketten?

Scrolla ned till **Appintegritet** på appens sida i App Store. Apple grupperar utvecklarens uppgifter i data som används för att spåra dig, data som är kopplade till dig och data som inte är kopplade till dig. För ett valv vill du helst se att inga data samlas in, eller en kort lista som går att förklara. Etiketterna är självrapporterade, men en lång lista med identifierare, användningsdata och plats i en integritetsapp bör få dig att stanna upp.

<!-- TODO verify iOS label -->

### 4. Kräver den ett konto?

Ett konto kopplat till e-post är inte osäkert i sig, och det möjliggör ofta säkerhetskopiering. Men det innebär att företaget vet vem du är och att du använder ett valv, och det lägger till ett konto som kan utsättas för intrång eller nätfiske. Behöver du inga molnfunktioner undviker ett [valv utan konto](id:photo-vault-without-account) det.

### 5. Skickas något till molnet?

Ta reda på om dina bilder någonsin lämnar telefonen. Om det finns en molnsäkerhetskopia, kontrollera om den är totalsträckskrypterad (bara du har nyckeln) eller bara krypterad på företagets servrar. Ett enkelt praktiskt test beskrivs i vår guide om valv utan konto: använd appen i flygplansläge och se vad som slutar fungera.

### 6. Finansieras den med annonser?

Annonsfinansierade appar bäddar oftast in reklam-SDK:er från tredje part, som samlar in data på enhetsnivå och gör nätverksanrop du inte styr över. Det betyder inte att dina bilder läcker, men det ökar antalet inblandade parter. Integritetsetiketten visar oftast detta under spårning.

### 7. Vad händer när du avinstallerar den?

Appar i iOS lagrar sina filer i en egen privat behållare. När du raderar en app raderar iOS behållaren, och med den allt valvinnehåll som bara finns på enheten. Det är bra för integriteten och farligt för dina data. Exportera det du vill behålla innan du avinstallerar ett valv, och kontrollera om appen har en kopia i molnet som du också behöver radera.

### 8. Hur fungerar återställning?

Fråga vad som händer om du glömmer hemligheten eller tappar bort telefonen. Möjliga svar:

- **Återställning via e-post eller konto:** bekvämt, men det innebär att någon annan än du kan ge åtkomst.
- **En återställningsnyckel eller säkerhetskopia som du kontrollerar:** starkt, om du förvarar den noggrant.
- **Ingen återställning:** det mest privata alternativet, och det minst förlåtande.

Inget av dem passar alla. Det viktiga är att appen berättar ärligt. Se [glömt mönstret till valvet?](id:forgot-vault-pattern) för hur vi hanterar det.

### 9. Vad gör den med originalen?

De flesta valv kopierar en bild när du importerar den. Originalet ligger kvar i Bilder, och kanske i iCloud, tills du raderar det, och ligger sedan i **Nyligen raderade** i ungefär 30 dagar. En bra app påminner dig om det; en slarvig låter dig tro att bilden har flyttats. Vår guide om att [radera originalen efter import](id:delete-original-photos-after-import) går igenom städningen.

## Varningssignaler i korthet

| Signal | Varför det spelar roll |
| --- | --- |
| Inget om hur filerna krypteras | Kan vara enbart en låsskärm |
| Öppnas med enhetens lösenkod som reserv | Alla som kan lösenkoden kommer in |
| Lång integritetsetikett med spårning | Tredje parter inblandade i en integritetsapp |
| Konto krävs för grundläggande användning | Din identitet kopplas till ditt valv |
| Molnsäkerhetskopia utan totalsträckskryptering | Företaget kan komma åt kopior |
| Löften om absolut, okrossbar säkerhet | Ingen ärlig säkerhetsprodukt lovar det |

## Det som inget valv kan skydda mot

Även ett välbyggt valv har gränser, och en ärlig app säger det. Det kan inte stoppa någon som ser dig ange din hemlighet, skadeprogram på en jailbreakad telefon, en person du lämnar telefonen till medan valvet är öppet eller någon som fotograferar din skärm. Och det når inte kopior som finns på andra ställen: i Bilder, i iCloud, i en chatt eller i telefonen hos någon du har skickat bilden till.

## Så svarar Velcrypt på checklistan

För öppenhetens skull, så här står sig vår egen app:

- **Kryptering:** AES-256-GCM via Apple CryptoKit. Nycklarna kommer från ditt mönster via PBKDF2-HMAC-SHA512 med minst 600 000 iterationer, varje valv har en egen slumpmässig huvudnyckel och iOS dataskydd läggs på ovanpå. Detaljer finns på vår [säkerhetssida](id:security) och [sidan om kryptering](id:encryption).
- **Hemlighet:** ett mönster på ett rutnät med 5×5 punkter, skilt från enhetens lösenkod; medvetet inget Face ID.
- **Konto och moln:** inget av dem. Ingen registrering, inga servrar, inga uppladdningar ([offline, utan konto](id:offline-no-account)).
- **Återställning:** ingen i den första versionen. Valvinnehållet undantas från säkerhetskopior till iCloud och dator, så om du tappar bort telefonen eller glömmer mönstret kan innehållet inte återställas. Ett alternativ för krypterad säkerhetskopiering är planerat.
- **Original:** import kopierar ett objekt; du tar själv bort originalet.

Om ett valv du överväger kan besvara de här punkterna lika tydligt är det ett gott tecken. En bredare jämförelse av alternativen finns i [bästa fotovalv-apparna för iPhone](id:best-private-photo-vault-apps-iphone).
