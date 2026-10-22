---
pageId: encryption
title: "Velcrypt-versleuteling: AES-256-GCM, sleutels uit je patroon"
description: "Zo versleutelt Velcrypt je fotokluis: PBKDF2-HMAC-SHA512 uit je patroon, een willekeurige 256-bits hoofdsleutel, HKDF per bestand en AES-256-GCM."
h1: "Zo versleutelt Velcrypt je kluis"
navTitle: "Versleuteling"
answer: "Velcrypt versleutelt elk bestand met AES-256-GCM. Je patroon wordt met PBKDF2-HMAC-SHA512 (minstens 600.000 iteraties, salt per toestel) omgezet in een sleutel die de willekeurige 256-bits hoofdsleutel van de kluis ontgrendelt. Daaruit leidt HKDF per bestand een eigen sleutel af. iOS-gegevensbescherming voegt een tweede laag toe."
keyFacts:
  - "Algoritme: AES-256-GCM, geauthenticeerde versleuteling via Apple CryptoKit."
  - "Patroon oprekken: PBKDF2-HMAC-SHA512, minstens 600.000 iteraties."
  - "Een willekeurige salt per toestel wordt bewaard in de iOS-sleutelhanger."
  - "Elke kluis heeft een eigen willekeurige 256-bits hoofdsleutel; elk bestand krijgt via HKDF een eigen sleutel."
  - "iOS-gegevensbescherming (klasse ‘complete protection’) komt daar nog bovenop."
primaryKeyword: "versleutelde fotokluis iphone"
keywords: ["aes-256-gcm fotokluis", "foto's versleutelen iphone", "pbkdf2 kluis app", "hoe wordt mijn kluis versleuteld", "geauthenticeerde versleuteling uitgelegd"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM per bestand, sleutels uit je patroon via PBKDF2-HMAC-SHA512 en HKDF, plus iOS-gegevensbescherming."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "Welke versleuteling gebruikt Velcrypt?"
    a: "AES-256-GCM, een vorm van geauthenticeerde versleuteling, via het CryptoKit-framework van Apple. Elk bestand wordt versleuteld met een eigen sleutel die is afgeleid van de willekeurige 256-bits hoofdsleutel van de kluis."
  - q: "Wordt mijn patroon op de telefoon opgeslagen?"
    a: "Je patroon wordt niet rechtstreeks als sleutel gebruikt. Het wordt opgerekt met PBKDF2-HMAC-SHA512 met minstens 600.000 iteraties en een salt per toestel, en het resultaat ontgrendelt de hoofdsleutel van de kluis."
  - q: "Kan Velcrypt mijn versleutelde foto's ontsleutelen?"
    a: "Nee. Velcrypt heeft geen servers en geen kopie van je sleutels. De sleutels kunnen alleen op je telefoon uit je patroon worden herbouwd. Daarom kan een vergeten patroon ook niet worden gereset."
  - q: "Waarom wordt ook iOS-gegevensbescherming gebruikt?"
    a: "Het voegt een onafhankelijke laag toe. Bestanden gebruiken de strengste beschermingsklasse (‘complete protection’), dus iOS houdt ze versleuteld met sleutels die aan je toegangscode zijn gekoppeld zolang de telefoon vergrendeld is, bovenop de eigen versleuteling van Velcrypt."
---

Versleuteling is wat een kluis meer maakt dan een verborgen map. In Velcrypt wordt elke foto, video en elk document op je iPhone versleuteld voordat het wordt opgeslagen, met sleutels die alleen uit jouw patroon kunnen worden herbouwd. Op deze pagina zie je hoe die sleutels worden gemaakt en gebruikt.

## De sleutelketen, stap voor stap

Velcrypt gebruikt een gelaagd sleutelmodel. Elke laag heeft één taak.

1. **Je patroon.** Je tekent het op het [5×5-raster](id:pattern-lock). Het is het enige geheim dat je hoeft te onthouden.
2. **Oprekken met PBKDF2-HMAC-SHA512.** Het patroon gaat samen met een willekeurige salt **minstens 600.000 keer** door PBKDF2 met SHA-512. Key stretching (sleutels oprekken) is een techniek die elke afzonderlijke gok bewust traag maakt, zodat patronen één voor één proberen duur wordt.
3. **Een salt per toestel in de sleutelhanger.** De salt is willekeurig, wordt op je toestel aangemaakt en bewaard in de iOS-sleutelhanger. Zo levert hetzelfde patroon op een andere telefoon een andere sleutel op, en zijn vooraf berekende gok-tabellen nutteloos.
4. **De hoofdsleutel van de kluis.** Elke kluis heeft een eigen **willekeurige 256-bits hoofdsleutel**. De opgerekte patroonsleutel versleutelt je bestanden niet direct, maar ontgrendelt deze hoofdsleutel.
5. **Sleutels per bestand met HKDF.** Uit de hoofdsleutel leidt HKDF (een standaard sleutelafleidingsfunctie) voor elk bestand een aparte sleutel af. Geen twee bestanden delen een sleutel.
6. **AES-256-GCM.** Elk bestand wordt met zijn eigen sleutel versleuteld via AES-256 in GCM-modus, met Apple CryptoKit.

| Laag | Wat ze doet |
| --- | --- |
| Patroon | Het geheim dat alleen jij kent |
| PBKDF2-HMAC-SHA512, 600.000+ iteraties | Maakt elke gok traag |
| Salt per toestel (sleutelhanger) | Maakt sleutels uniek voor het toestel |
| Willekeurige 256-bits hoofdsleutel | Eén per kluis, houdt kluizen gescheiden |
| HKDF | Een unieke sleutel voor elk bestand |
| AES-256-GCM | Versleutelt en authenticeert het bestand |
| iOS-gegevensbescherming | Tweede laag op systeemniveau |

Omdat elke kluis een eigen hoofdsleutel heeft, zijn kluizen cryptografisch van elkaar gescheiden. Daardoor zijn [verborgen kluizen](id:hidden-vaults) meer dan een visueel trucje.

## Wat geauthenticeerde versleuteling betekent

Geauthenticeerde versleuteling is versleuteling die zowel de geheimhouding als de integriteit beschermt. AES-256-GCM doet twee dingen tegelijk: het maakt het bestand onleesbaar zonder de sleutel, en het voegt een authenticatielabel toe dat bewijst dat het bestand niet is gewijzigd.

Opent Velcrypt een bestand, dan controleert het dat label. Is er ook maar één byte veranderd, door beschadiging of door manipulatie, dan mislukt het ontsleutelen in plaats van dat er stilletjes beschadigde of gemanipuleerde gegevens terugkomen. Oudere modi die zonder authenticatie versleutelen, kunnen dat niet opmerken. Een begrijpelijke uitleg van het algoritme zelf vind je in [AES-256-versleuteling uitgelegd](id:aes-256-encryption-explained).

## iOS-gegevensbescherming als tweede laag

Bovenop de eigen versleuteling bewaart Velcrypt kluisbestanden met iOS Data Protection (gegevensbescherming) in de klasse **complete protection**. In die klasse houdt iOS de bestanden versleuteld met sleutels die aan je toegangscode zijn gekoppeld, zolang je telefoon vergrendeld is.

De twee lagen zijn onafhankelijk. Zelfs als de ene op de een of andere manier zou worden omzeild, staat de andere nog tussen een vergrendelde telefoon en je bestanden.

## Waarom je sleutels nergens anders staan

Velcrypt werkt [volledig offline, zonder account](id:offline-no-account). Er zijn geen servers, geen uploads en geen kopie van je sleutels buiten je telefoon. Dat ontwerp schrapt een hele categorie risico's: er is geen database om te hacken en geen medewerker die je bestanden zou kunnen ontsleutelen.

Het heeft ook een prijs. Omdat de sleutels alleen op het toestel en alleen via je patroon bestaan, kan niemand een kluis herstellen als het patroon vergeten is. Raak je de telefoon kwijt, dan helpt alleen een versleuteld back-upbestand dat je zelf hebt gemaakt. Dat bestand is beveiligd met een eigen back-upwachtwoord, dat evenmin te herstellen is.

## Wat versleuteling niet afdekt

Sterke versleuteling beschermt opgeslagen bestanden. Ze helpt niet als iemand meekijkt terwijl je je patroon tekent, als de kluis openstaat wanneer je je telefoon afgeeft, of als er malware draait op een gejailbreakt toestel. Ook kopieën buiten Velcrypt, zoals originelen die nog in Foto's staan, vallen erbuiten. Het [beveiligingsoverzicht](id:security) beschrijft het volledige dreigingsmodel, inclusief [waar Velcrypt niet tegen beschermt](id:security#what-velcrypt-does-not-protect-against).
