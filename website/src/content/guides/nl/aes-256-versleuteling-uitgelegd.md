---
pageId: aes-256-encryption-explained
title: "AES-256-versleuteling uitgelegd (GCM, PBKDF2, quantum)"
description: "Wat AES-256 is, waarom GCM ertoe doet, waarom sleutelafleiding bij een patroon zwaarder weegt dan het algoritme, en wat quantumcomputers veranderen."
h1: "AES-256-versleuteling uitgelegd, zonder hype"
navTitle: "AES-256-versleuteling uitgelegd"
answer: "AES-256 is een symmetrisch versleutelingsalgoritme dat gegevens versleutelt met een sleutel van 256 bits; niemand kan het praktisch kraken door sleutels uit te proberen. Bij gegevens die met een patroon of wachtwoord zijn beveiligd, hangt de echte sterkte af van sleutelafleiding: hoe traag en zorgvuldig dat korte geheim in de sleutel wordt omgezet. De GCM-modus voegt naast geheimhouding detectie van manipulatie toe."
keyFacts:
  - "AES is een blokcijfer dat NIST in 2001 standaardiseerde; AES-256 gebruikt een sleutel van 256 bits en 14 rondes."
  - "GCM is een geauthenticeerde modus: hij versleutelt en detecteert ook elke wijziging in de versleutelde tekst."
  - "Een zwak patroon of wachtwoord ondermijnt AES-256, omdat aanvallers het geheim raden, niet de sleutel."
  - "Trage sleutelafleiding zoals PBKDF2 met veel iteraties maakt elke poging duur."
  - "Het algoritme van Grover zou AES-256 tegen een quantumaanvaller terugbrengen tot ongeveer 128 bits beveiliging, wat nog steeds als sterk geldt."
primaryKeyword: "aes-256 versleuteling uitgelegd"
keywords: ["wat is aes 256", "aes-256-gcm", "pbkdf2 uitgelegd", "is aes 256 quantumveilig", "aes 256 vs aes 128", "geauthenticeerde versleuteling"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, sleutellengtes, geauthenticeerde versleuteling met GCM, waarom PBKDF2 zwaarder weegt dan het algoritme, en de quantumvraag, in gewone taal."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "Kan AES-256 worden gekraakt?"
    a: "Er is geen bekende praktische aanval die een AES-256-sleutel sneller achterhaalt dan alle sleutels uitproberen, en een sleutel van 256 bits uitproberen ligt ver buiten het bereik van elke denkbare computer. Echte inbraken komen door zwakke wachtwoorden, gestolen sleutels of fouten rond het algoritme, niet door AES zelf."
  - q: "Wat is het verschil tussen AES-128 en AES-256?"
    a: "Beide gebruiken hetzelfde algoritme met andere sleutellengtes en aantallen rondes: sleutels van 128 bits met 10 rondes tegenover sleutels van 256 bits met 14 rondes. AES-128 geldt al als veilig; AES-256 voegt een grote marge toe, ook tegen toekomstige quantumaanvallen."
  - q: "Wat betekent GCM in AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) is een werkingsmodus die gegevens versleutelt én een authenticatietag maakt. Wordt ook maar één bit van het versleutelde bestand gewijzigd, dan mislukt het ontsleutelen in plaats van beschadigde of gemanipuleerde gegevens terug te geven."
  - q: "Is AES-256 quantumveilig?"
    a: "Het geldt over het algemeen als bestand tegen quantumcomputers. Het algoritme van Grover zou in theorie de effectieve sleutelsterkte halveren tot ongeveer 128 bits, wat nog steeds als veilig wordt gezien. Quantumcomputers zijn een grotere bedreiging voor publieke-sleutelalgoritmen zoals RSA dan voor AES."
  - q: "Waarom heeft een app met AES-256 nog een sterk wachtwoord of patroon nodig?"
    a: "Omdat aanvallers de sleutel van 256 bits niet raden; ze raden het korte geheim waarvan hij is afgeleid. Hoort jouw geheim bij een paar duizend veelgebruikte keuzes, dan levert zelfs trage sleutelafleiding maar beperkt tijd op."
---

„AES-256-versleuteling” staat in de functielijst van bijna elke privacyapp. Het is een echte en betekenisvolle bewering, maar het is ook het onderdeel van een systeem dat het minst waarschijnlijk faalt. Deze gids legt uit wat AES-256 doet, wat extra letters zoals GCM betekenen en waarom de stap die je patroon of wachtwoord in een sleutel omzet meer aandacht verdient.

## Wat AES is

AES (Advanced Encryption Standard) is een symmetrisch blokcijfer: dezelfde geheime sleutel versleutelt en ontsleutelt, en gegevens worden verwerkt in blokken van 128 bits. Het werd in 2001 gekozen door het Amerikaanse National Institute of Standards and Technology (NIST), na een open, meerjarige openbare competitie, en het winnende ontwerp, Rijndael, kwam van twee Belgische cryptografen.

Tegenwoordig zit AES overal: in HTTPS-verbindingen, wifi, schijfversleuteling en de hardware van elke moderne iPhone. Die alomtegenwoordigheid is een pluspunt. Cryptografen bestuderen het al ruim twintig jaar, en veel processors versnellen het in hardware.

### Sleutellengtes

AES bestaat in drie sleutellengtes:

| Variant | Sleutellengte | Rondes | Mogelijke sleutels |
|---|---|---|---|
| AES-128 | 128 bits | 10 | ongeveer 3,4 × 10³⁸ |
| AES-192 | 192 bits | 12 | ongeveer 6,3 × 10⁵⁷ |
| AES-256 | 256 bits | 14 | ongeveer 1,2 × 10⁷⁷ |

Om het getal van AES-256 in perspectief te plaatsen: het ligt niet ver van gangbare schattingen van het aantal atomen in het waarneembare heelal. Elke sleutel uitproberen is geen kwestie van snellere computers; het is fysiek onhaalbaar.

## Modi: waarom „GCM” ertoe doet

Een blokcijfer op zichzelf versleutelt maar één blok van 16 bytes. Een **werkingsmodus** bepaalt hoe je hele bestanden veilig versleutelt. Oudere modi boden alleen geheimhouding, waardoor een aanvaller soms bits in de versleutelde tekst kon omdraaien en voorspelbare veranderingen in de ontsleutelde gegevens kon veroorzaken.

**GCM (Galois/Counter Mode) is een geauthenticeerde versleutelingsmodus.** Hij versleutelt de gegevens en berekent er ook een authenticatietag over. Bij het ontsleutelen wordt eerst de tag gecontroleerd. Is er met het bestand geknoeid of is het beschadigd, dan mislukt het ontsleutelen netjes in plaats van gewijzigde inhoud terug te geven.

GCM heeft één strikte regel: een nonce (een getal dat één keer wordt gebruikt) mag onder dezelfde sleutel nooit herhaald worden. Goed ontworpen systemen vermijden dat risico in hun structuur, bijvoorbeeld door elk bestand een eigen sleutel te geven.

## Het deel dat je beveiliging echt bepaalt: sleutelafleiding

Dit is de ongemakkelijke waarheid over „AES-256” in een app met een slot. Niemand valt de sleutel van 256 bits direct aan. Ze vallen aan wat jij onthoudt.

Een patroon, pincode of wachtwoord is kort. Een **sleutelafleidingsfunctie (KDF)** is het proces dat dat korte geheim omzet in een sleutel van volledige lengte. Is de KDF snel, dan kan een aanvaller die de versleutelde gegevens heeft gekopieerd miljarden pogingen testen. Is hij bewust traag, dan kost elke poging echte tijd en rekenkracht.

### Hoe PBKDF2 aanvallers afremt

**PBKDF2** (Password-Based Key Derivation Function 2) is een veelgebruikte, gestandaardiseerde KDF. Hij haalt je geheim vele duizenden keren door een hashfunctie met sleutel (HMAC) en mengt er een **salt** doorheen, een willekeurige waarde die je afgeleide sleutel uniek maakt, ook als iemand anders hetzelfde geheim koos.

- **Iteraties** vermenigvuldigen de kosten van elke poging. Bij honderdduizenden iteraties duurt een poging die een microseconde zou kosten een merkbaar deel van een seconde.
- **De salt** maakt vooraf berekende tabellen nutteloos. Een aanvaller kan niet één reusachtige lijst „patroon → sleutel” bouwen en die op andere apparaten hergebruiken.

Toch kan geen enkele KDF een geheim redden dat bij de eerste paar duizend hoort die een aanvaller zou proberen. Daarom is advies over het kiezen van een sterk geheim, in de [gids patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id), net zo belangrijk als het algoritme. Test een vergelijkbare vorm (nooit je echte) met de [patroonsterktechecker](id:pattern-strength-checker).

## De quantumvraag

Quantumcomputers bedreigen sommige cryptografie ernstig en andere maar licht.

- **Publieke-sleutelalgoritmen** zoals RSA en elliptische-curvecryptografie zouden met het algoritme van Shor op een voldoende grote quantumcomputer gebroken kunnen worden. Daarom wordt post-quantum sleuteluitwisseling in de hele sector uitgerold.
- **Symmetrische algoritmen** zoals AES krijgen te maken met het algoritme van Grover, dat een kwadratische versnelling biedt bij uitproberen. In de praktijk halveert dat ruwweg de effectieve sleutellengte: AES-256 zou tegen een quantumaanvaller ongeveer 128 bits beveiliging bieden.

128 bits beveiliging geldt nog steeds als sterk. Dat is een van de redenen waarom AES-256 wordt aangeraden voor gegevens die lang vertrouwelijk moeten blijven.

## Veelvoorkomende misverstanden

- **Overtreffende trappen in een functielijst betekenen iets.** Nee. AES is een openbare standaard die banken, browsers en berichtenapps allemaal gebruiken; dramatische bijvoeglijke naamwoorden ervoor zijn marketing.
- **AES-256 maakt een app veilig.** Het maakt de versleutelde bytes veilig. Sleutelbeheer, de KDF, het ontgrendelontwerp, back-ups en kopieën die elders achterblijven, bepalen of het hele systeem veilig is.
- **Langere sleutels repareren zwakke wachtwoorden.** Nee. Een sleutel van 256 bits die is afgeleid van „1234” is zo sterk als „1234”.

## Hoe Velcrypt AES-256 gebruikt

Het ontwerp van Velcrypt volgt het principe hierboven: sterk algoritme, zorgvuldig sleutelbeheer, trage afleiding.

- **Algoritme:** AES-256-GCM via Apple CryptoKit, zodat elk bestand wordt versleuteld en geauthenticeerd.
- **Sleutelafleiding:** je patroon wordt verwerkt met PBKDF2-HMAC-SHA512 met minstens 600.000 iteraties en een willekeurige salt per apparaat die in de iOS-sleutelhanger wordt bewaard.
- **Sleutelhiërarchie:** elke kluis heeft een eigen willekeurige hoofdsleutel van 256 bits, en sleutels per bestand worden daaruit afgeleid met HKDF. Aparte sleutels per bestand maken het ook makkelijk om de nonceregel van GCM te respecteren.
- **Extra laag:** iOS-gegevensbescherming (de klasse voor volledige bescherming) wordt bovenop de eigen versleuteling van Velcrypt op de bestanden toegepast.
- **Alleen op het apparaat:** geen account en geen servers, dus er staat nergens anders een kopie van je sleutels.

De [functiepagina over versleuteling](id:encryption) vat dit samen, en het [beveiligingsoverzicht](id:security) zegt expliciet waar versleuteling niet tegen beschermt, zoals iemand die toekijkt terwijl je je patroon tekent of een telefoon die wordt doorgegeven met de kluis open.
