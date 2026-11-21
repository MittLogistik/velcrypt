---
pageId: pattern-lock
title: "Patroonvergrendeling iPhone: kluis openen op een 5×5-raster"
description: "Velcrypt open je met een patroon op een raster van 5×5 stippen. Lees de regels, hoe je een sterk patroon tekent en hoe optioneel Face ID werkt."
h1: "Patroonvergrendeling: een 5×5-raster dat alleen jouw geheugen opent"
navTitle: "Patroonvergrendeling"
answer: "Velcrypt open je met een patroon dat je tekent op een raster van 5×5 stippen: één doorlopende lijn door minstens 6 stippen, met minstens één richtingsverandering. Patronen van 8–12 stippen worden aanbevolen. Face ID of Touch ID is optioneel en staat standaard uit; het patroon opent altijd elke kluis."
keyFacts:
  - "Ontgrendelen doe je met één doorlopende lijn op een raster van 25 stippen (5×5)."
  - "Minimumregels: minstens 6 stippen en minstens één richtingsverandering."
  - "Aanbevolen lengte: 8–12 stippen."
  - "Face ID en Touch ID zijn optioneel en staan standaard uit, per kluis, omdat biometrie kan worden afgedwongen."
  - "Je patroon is ook de basis voor de versleutelingssleutel van de kluis."
primaryKeyword: "app vergrendelen met patroon iphone"
keywords: ["patroonvergrendeling fotokluis", "5x5 patroon ontgrendelen", "fotokluis zonder face id", "patroon tekenen om app te openen", "sterk ontgrendelpatroon"]
datePublished: 2026-10-21
dateModified: 2026-11-21
summary: "Ontgrendel met een patroon op een 5×5-raster. Minstens 6 stippen en één bocht; 8–12 stippen aanbevolen. Face ID optioneel, standaard uit."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Hoeveel stippen moet een Velcrypt-patroon hebben?"
    a: "Minstens 6 stippen, getekend als één doorlopende lijn met minstens één richtingsverandering. Voor betere bescherming gebruik je 8–12 stippen met meerdere bochten."
  - q: "Kan ik een kluis met Face ID of Touch ID openen?"
    a: "Ja, als je het zelf aanzet. Face ID staat standaard uit en is gratis. Je zet het per kluis aan via Instellingen › Face ID in die kluis. Daarna verschijnt op het vergrendelscherm ‘Ontgrendel met Face ID’ en kies je uit de kluizen waarvoor je het hebt aangezet. Een gezicht kan zonder je toestemming worden gebruikt, dus houd je meest privékluis op alleen het patroon."
  - q: "Wat gebeurt er als ik mijn patroon vergeet?"
    a: "Dan kan de kluis niet meer worden geopend, niet door jou en niet door Velcrypt. Het patroon is onderdeel van hoe de versleutelingssleutel wordt afgeleid, en er is geen herstelzin of account om het te resetten. Kies een patroon dat je echt kunt onthouden."
  - q: "Is een 5×5-patroon veiliger dan een 3×3-patroon zoals op een telefoon?"
    a: "Dat kan. Een 5×5-raster heeft 25 stippen in plaats van 9, dus er zijn veel meer patronen mogelijk. Hoe veilig het jouwe is, hangt nog steeds af van de lengte, het aantal bochten en hoe voorspelbaar de vorm is."
  - q: "Kan ik mijn patroon ergens testen voordat ik het gebruik?"
    a: "Je kunt vergelijkbare patronen uitproberen in de patroonsterkte-checker van Velcrypt, die lokaal in je browser draait. Voer nooit je echte patroon in op een website; test een patroon dat erop lijkt."
---

De meeste apps vragen om een cijfercode. Velcrypt vraagt je om te tekenen. De patroonvergrendeling is de voordeur van elke kluis én het geheim waaruit de versleutelingssleutel van die kluis wordt afgeleid. Het is dus de moeite waard om er even over na te denken.

## Zo werkt de 5×5-patroonvergrendeling

Een patroonvergrendeling is een manier van ontgrendelen waarbij je een pad tussen stippen tekent in plaats van een code te typen. In Velcrypt heeft het raster 25 stippen, verdeeld over vijf rijen en vijf kolommen. Je zet je vinger neer, sleept door de stippen die je kiest en tilt je vinger op om af te ronden.

Voor elk patroon gelden twee regels:

1. **Minstens 6 stippen.** Kortere lijnen worden geweigerd.
2. **Minstens één richtingsverandering.** Eén rechte lijn is niet toegestaan.

Dat zijn de minimumeisen. Velcrypt raadt patronen van **8–12 stippen** aan, omdat elke extra stip het aantal mogelijke patronen dat iemand zou moeten proberen flink vergroot.

Elk patroon doet bovendien meer dan ontgrendelen: het bepaalt welke kluis er opengaat. Dat idee lees je op de pagina over [verborgen kluizen](id:hidden-vaults).

## Wat maakt een patroon sterk?

Een sterk patroon is lang, maakt veel bochten en lijkt nergens op. Het raster is groot, maar mensen vallen vaak terug op dezelfde gewoontes: beginnen linksboven, letters natekenen of nette vierkantjes trekken. Juist die gewoontes probeert een meekijker of iemand die gokt als eerste.

| Gewoonte | Waarom het zwak is | Beter alternatief |
| --- | --- | --- |
| Beginnen in een hoek | Hoeken zijn de meest gebruikte startpunten | Begin op een stip aan de rand of in het midden |
| Letters en vormen (L, Z, S, U, een vierkant) | Makkelijk te raden en over je schouder te herkennen | Gebruik een onregelmatig pad zonder duidelijke vorm |
| Lange rechte stukken | Weinig keuzes, weinig onzekerheid | Verander elke twee of drie stippen van richting |
| In één gebied blijven | Gebruikt maar een klein deel van het raster | Kruis meerdere rijen en kolommen |
| Heel korte patronen | Minder combinaties om te proberen | Mik op 8–12 stippen |

Een paar praktische tips:

- **Kruis je eigen pad.** Lijnen die over eerdere stukken heen gaan, zijn moeilijker af te lezen uit vingervegen of met een snelle blik.
- **Maak het ritmisch voor jezelf, niet voor anderen.** Een pad dat je op gevoel tekent, onthoud je makkelijker dan een willekeurig pad waar je over moet nadenken.
- **Teken het een paar keer voordat je erop vertrouwt.** Door herhaling wordt een nieuw patroon spiergeheugen.
- **Scherm het scherm af.** Geen enkel patroon helpt als iemand meekijkt terwijl je het tekent. Kantel je telefoon of dek het raster af in het openbaar.

Wil je een tweede mening? De [patroonsterkte-checker](id:pattern-strength-checker) geeft een ruwe beoordeling en een schatting in bits op basis van lengte, bochten, kruisingen en hoeveel van het raster je gebruikt. Het is een vuistregel, geen garantie, en je test beter een patroon dat op het jouwe lijkt dan het echte.

## Face ID en Touch ID: optioneel en standaard uit

Biometrie is handig omdat je het altijd bij je hebt, en precies dat is ook de zwakte: iemand kan een telefoon voor je gezicht houden of je vinger op de sensor drukken zonder dat je ermee instemt. Een patroon bestaat alleen in je hoofd. Daarom staat Face ID (of Touch ID) in Velcrypt standaard uit, voor elke kluis.

Wil je het toch, dan zet je het per kluis aan, vanuit die kluis: Instellingen › Face ID. Je geeft de kluis daarbij een naam voor de Face ID-lijst. Op het vergrendelscherm verschijnt de knop ‘Ontgrendel met Face ID’ pas zodra minstens één kluis Face ID aan heeft. Na een geslaagde scan kies je uit de kluizen waarvoor je Face ID hebt aangezet; is er maar één, dan gaat die direct open. Kluizen zonder Face ID staan nooit in die lijst, en het patroon blijft elke kluis openen.

Een paar dingen om te weten:

- **Geen terugval op de toegangscode.** De toegangscode van je iPhone kan Face ID in Velcrypt niet vervangen.
- **Alleen op dit apparaat.** De Face ID-kopie van de kluissleutel blijft in de sleutelhanger van deze iPhone, niet in iCloud en niet in back-ups.
- **Gekoppeld aan je huidige gezicht of vingers.** Voeg je een gezicht of vingerafdruk toe, of stel je Face ID opnieuw in, dan gaat Face ID uit voor die kluizen. Open ze met het patroon en zet het opnieuw aan.

De afweging blijft echt: wie je naar je telefoon kan laten kijken, kan elke kluis in de Face ID-lijst zien en openen. Houd je meest privékluis daarom op alleen het patroon, en gebruik Face ID hooguit voor kluizen waar gemak zwaarder weegt. Het [dwangpatroon](id:duress-pattern) werkt alleen met patronen; de Face ID-lijst activeert het niet. De afwegingen lees je uitgebreider in [patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Je patroon en de versleutelingssleutel

Het patroon wordt niet alleen gecontroleerd en daarna vergeten. Velcrypt haalt het door een bewust trage sleutelafleidingsfunctie. Daaruit ontstaat de sleutel die de hoofdsleutel van de kluis ontgrendelt, en die beschermt op zijn beurt elk bestand. De volledige keten staat op de pagina over [versleuteling](id:encryption).

Dat heeft een eerlijk gevolg. Omdat het patroon deel uitmaakt van de sleutel, is er geen link om je patroon te resetten en geen account om op terug te vallen. Vergeet je het, dan blijft de kluis voorgoed op slot. Lees [wat je kunt doen als je je kluispatroon vergeet](id:forgot-vault-pattern) voordat je er een kiest, en kies iets wat je over zes maanden nog weet.

## Waar een patroon niet tegen beschermt

Een sterk patroon legt de lat hoger, maar het is maar één laag. Het houdt niemand tegen die filmt of meekijkt terwijl je tekent, iemand aan wie je de telefoon geeft terwijl een kluis open is, of malware op een gejailbreakt toestel. De [beveiligingspagina](id:security#what-velcrypt-does-not-protect-against) noemt al deze grenzen. Combineer je patroon met [automatisch vergrendelen](id:auto-lock) om het meest voorkomende gat te dichten: een kluis die openstaat terwijl je je telefoon even neerlegt.
