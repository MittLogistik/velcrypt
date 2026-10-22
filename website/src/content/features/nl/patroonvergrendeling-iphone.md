---
pageId: pattern-lock
title: "Patroonvergrendeling iPhone: kluis openen op een 5×5-raster"
description: "Velcrypt open je met een patroon op een raster van 5×5 stippen. Lees de regels, hoe je een sterk patroon tekent en waarom er geen Face ID is."
h1: "Patroonvergrendeling: een 5×5-raster dat alleen jouw geheugen opent"
navTitle: "Patroonvergrendeling"
answer: "Velcrypt open je met een patroon dat je tekent op een raster van 5×5 stippen: één doorlopende lijn door minstens 6 stippen, met minstens één richtingsverandering. Patronen van 8–12 stippen worden aanbevolen, en er is bewust geen Face ID of Touch ID."
keyFacts:
  - "Ontgrendelen doe je met één doorlopende lijn op een raster van 25 stippen (5×5)."
  - "Minimumregels: minstens 6 stippen en minstens één richtingsverandering."
  - "Aanbevolen lengte: 8–12 stippen."
  - "Bewust geen Face ID of Touch ID, omdat biometrie kan worden afgedwongen."
  - "Je patroon is ook de basis voor de versleutelingssleutel van de kluis."
primaryKeyword: "app vergrendelen met patroon iphone"
keywords: ["patroonvergrendeling fotokluis", "5x5 patroon ontgrendelen", "fotokluis zonder face id", "patroon tekenen om app te openen", "sterk ontgrendelpatroon"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Ontgrendel met een patroon op een 5×5-raster. Minstens 6 stippen en één bocht; 8–12 stippen aanbevolen. Bewust geen Face ID."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Hoeveel stippen moet een Velcrypt-patroon hebben?"
    a: "Minstens 6 stippen, getekend als één doorlopende lijn met minstens één richtingsverandering. Voor betere bescherming gebruik je 8–12 stippen met meerdere bochten."
  - q: "Waarom kan ik mijn app niet met Face ID of Touch ID vergrendelen?"
    a: "Een gezicht of vingerafdruk kan zonder jouw toestemming worden gebruikt, bijvoorbeeld terwijl je slaapt of wordt vastgehouden. Een patroon bestaat alleen in je geheugen, dus niemand kan het fysiek van je afpakken. Velcrypt laat biometrie daarom bewust weg."
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

## Waarom er geen Face ID of Touch ID is

Velcrypt heeft geen biometrische ontgrendeling, en dat is een bewuste keuze. Biometrie is handig omdat je het altijd bij je hebt, en precies dat is ook de zwakte: iemand kan een telefoon voor je gezicht houden of je vinger op de sensor drukken zonder dat je ermee instemt.

Een patroon bestaat alleen in je hoofd. Niemand kan het van je hand halen of je telefoon op je gezicht richten om het te krijgen. Voor een kluis die je meest privébestanden moet beschermen, weegt dat verschil zwaarder dan een seconde sneller ontgrendelen. De afwegingen lees je uitgebreider in [patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Je patroon en de versleutelingssleutel

Het patroon wordt niet alleen gecontroleerd en daarna vergeten. Velcrypt haalt het door een bewust trage sleutelafleidingsfunctie. Daaruit ontstaat de sleutel die de hoofdsleutel van de kluis ontgrendelt, en die beschermt op zijn beurt elk bestand. De volledige keten staat op de pagina over [versleuteling](id:encryption).

Dat heeft een eerlijk gevolg. Omdat het patroon deel uitmaakt van de sleutel, is er geen link om je patroon te resetten en geen account om op terug te vallen. Vergeet je het, dan blijft de kluis voorgoed op slot. Lees [wat je kunt doen als je je kluispatroon vergeet](id:forgot-vault-pattern) voordat je er een kiest, en kies iets wat je over zes maanden nog weet.

## Waar een patroon niet tegen beschermt

Een sterk patroon legt de lat hoger, maar het is maar één laag. Het houdt niemand tegen die filmt of meekijkt terwijl je tekent, iemand aan wie je de telefoon geeft terwijl een kluis open is, of malware op een gejailbreakt toestel. De [beveiligingspagina](id:security#what-velcrypt-does-not-protect-against) noemt al deze grenzen. Combineer je patroon met [automatisch vergrendelen](id:auto-lock) om het meest voorkomende gat te dichten: een kluis die openstaat terwijl je je telefoon even neerlegt.
