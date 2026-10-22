---
pageId: security
title: "Beveiliging van Velcrypt: zo werkt de versleuteling"
description: "Zo beschermt Velcrypt je kluizen: PBKDF2-sleutelafleiding, een hoofdsleutel per kluis, AES-256-GCM, iOS-gegevensbescherming — en waar het ophoudt."
h1: "Zo werkt Velcrypt: het beveiligingsmodel"
navTitle: "Beveiligingsmodel"
answer: "Velcrypt zet het patroon dat je tekent met PBKDF2-HMAC-SHA512 (minstens 600.000 iteraties) om in een sleutel, beschermt daarmee een willekeurige 256-bits hoofdsleutel voor die kluis en versleutelt elk bestand met AES-256-GCM op je iPhone. Er wordt niets geüpload, en er is geen account en geen herstelkopie van je sleutels."
keyFacts:
  - "Patroon → PBKDF2-HMAC-SHA512, minstens 600.000 iteraties, willekeurige salt per apparaat in de iOS-sleutelhanger."
  - "Elke kluis heeft een eigen willekeurige 256-bits hoofdsleutel; sleutels per bestand worden afgeleid met HKDF."
  - "Bestanden worden versleuteld met AES-256-GCM via Apple CryptoKit, plus iOS-gegevensbescherming (klasse ‘volledige bescherming’)."
  - "Een onbekend patroon opent een lege kluis — geen kluizenlijst, geen melding ‘verkeerd patroon’."
  - "Geen netwerk, geen account, geen analyse van kluisinhoud; kluisgegevens zijn uitgesloten van iCloud- en computerback-ups."
  - "Optionele versleutelde back-up: een .velcrypt-bestand, beveiligd met een back-upwachtwoord dat je zelf kiest."
  - "Velcrypt is nog niet onafhankelijk op beveiliging gecontroleerd (geen audit)."
primaryKeyword: "velcrypt beveiliging"
keywords: ["fotokluis versleuteling iphone", "hoe werkt velcrypt versleuteling", "aes-256-gcm fotokluis", "pbkdf2 patroonvergrendeling", "dreigingsmodel fotokluis", "plausibele ontkenning kluis-app"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "Kan Velcrypt mijn foto’s zien of herstellen?"
    a: "Nee. Velcrypt heeft geen servers, geen accountsysteem en geen kopie van je sleutels. Je patroon wordt nooit opgeslagen, dus niemand bij Velcrypt kan een kluis openen, resetten of herstellen."
  - q: "Wat gebeurt er als iemand een verkeerd patroon tekent in Velcrypt?"
    a: "Een patroon dat Velcrypt nog nooit heeft gezien, opent gewoon een nieuwe, lege kluis. Er verschijnt geen foutmelding en niets vertelt diegene of er andere kluizen bestaan."
  - q: "Is de versleuteling van Velcrypt hetzelfde als de ingebouwde versleuteling van de iPhone?"
    a: "Nee, het komt er bovenop. iOS versleutelt het apparaat al, en Velcrypt past de strengste klasse van iOS-gegevensbescherming toe op zijn bestanden, maar versleutelt daarnaast elk bestand met een eigen AES-256-GCM-sleutel die uit je kluispatroon is afgeleid. Een ontgrendelde telefoon alleen opent dus geen kluis."
  - q: "Is Velcrypt onafhankelijk gecontroleerd?"
    a: "Nog niet. Velcrypt is gebouwd op Apple CryptoKit en standaard, goed bestudeerde algoritmen. Een onafhankelijke beveiligingsreview zouden we toejuichen, maar die heeft tot nu toe niet plaatsgevonden."
  - q: "Verbergt Velcrypt dat ik een versleutelde kluis gebruik?"
    a: "Niet helemaal. De app is zichtbaar op je beginscherm, en iemand met forensische tools kan mogelijk zien dat Velcrypt versleutelde gegevens bewaart en ongeveer hoeveel. Wat Velcrypt verbergt, is hoeveel kluizen je hebt en wat erin zit."
---

Deze pagina legt in gewone taal uit wat er met je foto’s, video’s en documenten gebeurt als je ze in Velcrypt zet — en waar de bescherming ophoudt. Ze is geschreven voor mensen die het ontwerp willen begrijpen voordat ze er iets persoonlijks aan toevertrouwen.

## De korte versie

Velcrypt is een iPhone-app die privébestanden in versleutelde kluizen op je apparaat bewaart. Je opent een kluis door een patroon te tekenen op een raster van 5×5 stippen. Dat patroon wordt nergens opgeslagen. In plaats daarvan gaat het door een trage sleutelafleidingsfunctie die er een sleutel van maakt, en die sleutel beschermt de inhoud van de kluis.

Alles gebeurt op de iPhone zelf. Velcrypt heeft geen account, geen servers en geen uploadstap, dus er bestaat nergens anders een kopie van je kluis of van je sleutels. Dat is de bron van de kracht en tegelijk de belangrijkste beperking: als je het patroon vergeet, kan de kluis niet worden hersteld, en als je de telefoon kwijtraakt, kan alleen een versleuteld back-upbestand dat je zelf hebt gemaakt de kluis terugbrengen.

## Van patroon naar sleutel

### Het patroon

Een patroon is één doorlopende lijn door minstens 6 van de 25 stippen, met minstens één richtingsverandering. Langere patronen van 8–12 stippen worden aanbevolen, omdat elke extra stip het aantal mogelijke patronen dat een aanvaller moet proberen vermenigvuldigt. Meer over de afwegingen lees je in [patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id), en hoe het slot zelf werkt zie je op de [functiepagina over het patroonslot](id:pattern-lock).

### PBKDF2 met een salt per apparaat

Zodra je klaar bent met tekenen, zet Velcrypt de reeks stippen om in een sleutel met **PBKDF2-HMAC-SHA512** en minstens **600.000 iteraties**. PBKDF2 is een sleutelafleidingsfunctie: een bewust traag, herhaalbaar recept dat een geheim (je patroon) omzet in een cryptografische sleutel. Die traagheid is precies de bedoeling. Eén sleutel afleiden kost jou een fractie van een seconde, maar wie miljoenen patronen probeert, betaalt die prijs miljoenen keren.

Bij de afleiding wordt ook een **salt** gebruikt — een willekeurige waarde die één keer op je apparaat wordt gemaakt en in de iOS-sleutelhanger wordt bewaard. Omdat de salt uniek is voor jouw iPhone, krijgen twee mensen die toevallig hetzelfde patroon tekenen totaal verschillende sleutels, en zijn vooraf berekende tabellen van ‘veelgebruikte patronen → sleutels’ nutteloos.

### Een hoofdsleutel per kluis

Elke kluis heeft een eigen **hoofdsleutel**: 256 willekeurige bits, gemaakt door de veilige toevalsgenerator van het systeem wanneer de kluis wordt aangemaakt. De hoofdsleutel is de sleutel die de bestanden van de kluis daadwerkelijk beschermt. Hij wordt alleen in beschermde (ingepakte) vorm opgeslagen, verzegeld met de sleutel die uit je patroon is afgeleid. Zonder het juiste patroon kan de hoofdsleutel niet worden ontzegeld.

Die scheiding is belangrijk. De hoofdsleutel is echt willekeurig, dus zijn sterkte hangt niet af van hoe makkelijk te onthouden je patroon is, en elke kluis blijft cryptografisch onafhankelijk van alle andere kluizen op dezelfde telefoon.

### Een sleutel per bestand

Uit de hoofdsleutel leidt Velcrypt voor elk bestand een aparte sleutel af met **HKDF**, een standaardfunctie om meerdere onafhankelijke sleutels uit één sterk geheim af te leiden. Mocht de sleutel van één bestand ooit uitlekken, dan verraadt die niet de hoofdsleutel of de sleutels van andere bestanden.

## Zo worden bestanden versleuteld

### AES-256-GCM via Apple CryptoKit

Elke foto, video en elk document wordt versleuteld met **AES-256-GCM**, via het CryptoKit-framework van Apple in plaats van zelfgeschreven cryptografische code. AES-256-GCM is geauthenticeerde versleuteling: het houdt de inhoud vertrouwelijk *en* ontdekt manipulatie. Als ook maar één bit van een versleuteld bestand is veranderd, mislukt het ontsleutelen in plaats van beschadigde of gemanipuleerde gegevens op te leveren. Een uitgebreidere uitleg vind je in [AES-256-versleuteling uitgelegd](id:aes-256-encryption-explained) en op de [functiepagina over versleuteling](id:encryption).

### iOS-gegevensbescherming als tweede laag

Bovenop de eigen versleuteling van Velcrypt worden kluisbestanden weggeschreven met iOS-gegevensbescherming in de klasse **volledige bescherming**. Met die klasse houdt iOS de bestanden versleuteld met een sleutel die alleen beschikbaar is zolang de iPhone ontgrendeld is. Is de telefoon vergrendeld, dan kan het besturingssysteem ze zelf niet lezen. Deze laag komt van Apple en staat los van de sleutels van Velcrypt, dus een aanvaller moet langs allebei.

## Waarom een onbekend patroon een lege kluis opent

De meeste apps vergelijken je wachtwoord met iets wat is opgeslagen — een hash, een verificatiewaarde, een ‘goed antwoord’ — en melden dan *verkeerd wachtwoord*. Velcrypt doet dat bewust niet.

Er is geen lijst van kluizen en geen opgeslagen waarde die bevestigt of een patroon ‘klopt’. Als je een patroon tekent, leidt Velcrypt een sleutel af en probeert het de kluis te openen die erbij hoort. Past er geen kluis bij, dan opent de app gewoon een nieuwe, lege kluis voor dat patroon. Voor wie de telefoon vasthoudt, zien een nooit gebruikt patroon en een echte maar lege kluis er hetzelfde uit.

Dat geeft je **plausibele ontkenning**: je kunt geloofwaardig zeggen dat er niets meer te zien is, omdat niets in de app het tegendeel bewijst. Je kunt een lokkluis met gewone foto’s aanhouden en een aparte kluis voor wat echt privé is. De pagina over [verborgen kluizen](id:hidden-vaults) en onze gidsen over [lokkluizen](id:what-is-a-decoy-vault) en [plausibele ontkenning](id:plausible-deniability-explained) gaan er dieper op in.

Een praktisch gevolg: als je je patroon één stip verkeerd onthoudt, kom je in een lege kluis terecht in plaats van een foutmelding te zien. Dat is zo bedoeld, geen bug.

## Vergrendelen en de appkiezer

Velcrypt vergrendelt automatisch wanneer het naar de achtergrond gaat, na een vertraging die je zelf instelt. Bij het vergrendelen worden de kluissleutels uit het geheugen gewist en moet je het patroon opnieuw tekenen. Kluisinhoud is ook verborgen in de appkiezer van iOS, dus een blik op je recente apps toont geen miniatuur van een privéfoto. Zie [automatisch vergrendelen](id:auto-lock) voor de instellingen.

Ontgrendelen met Face ID of Touch ID kan bewust niet. Een gezicht of vinger kan zonder je toestemming worden gebruikt — terwijl je slaapt of onder druk. Een patroon bestaat alleen in je geheugen.

## Geen netwerk, geen account, geen automatische back-ups

Velcrypt werkt volledig offline. Er is geen registratie, geen e-mailadres, geen server en geen upload van kluisinhoud, en er worden geen analysegegevens verzameld over wat je bewaart. Op de pagina [offline, zonder account](id:offline-no-account) lees je wat dat in de praktijk betekent.

Kluisgegevens zijn ook **uitgesloten van iCloud- en computerback-ups (Finder)**. Zo blijven je versleutelde bestanden van de servers van Apple en van elke computer waarmee je synchroniseert, maar dat heeft een echt gevolg: als je iPhone kwijtraakt, kapotgaat of wordt gewist, gaan de kluizen mee — tenzij je zelf een back-up hebt gemaakt.

<a id="encrypted-backup"></a>

### Versleutelde back-up

Via Instellingen → Back-up maak je een versleuteld `.velcrypt`-bestand van de kluis die open is, beveiligd met een **back-upwachtwoord** dat je zelf kiest. Jij bepaalt waar het bestand komt — in Bestanden, iCloud Drive of op een computer — en je kunt het op elke iPhone terugzetten. De back-up is een apart bestand dat je handmatig maakt: Velcrypt uploadt het nooit en ontvangt het nooit. Kies een sterk back-upwachtwoord, want wie zowel het bestand als het wachtwoord heeft, kan de kluis terugzetten, en een vergeten back-upwachtwoord kan niet worden hersteld.

## Het dreigingsmodel in één oogopslag

| Dreiging | Beschermd? | Toelichting |
|---|---|---|
| Iemand scrolt door je fotobibliotheek | Ja | Items die je importeert en daarna uit Foto’s verwijdert (ook uit Recent verwijderd), staan alleen nog in Velcrypt. |
| Iemand pakt je ontgrendelde telefoon en opent Velcrypt | Ja | Diegene heeft je patroon nodig; een verkeerd patroon toont een lege kluis. |
| Iemand probeert te bewijzen dat je meer kluizen hebt | Grotendeels | Geen kluizenlijst, geen melding ‘verkeerd patroon’; het aantal kluizen staat nergens in de app. |
| Diefstal van een vergrendelde iPhone | Ja | iOS-gegevensbescherming plus de eigen AES-256-GCM-versleuteling van Velcrypt. |
| Het patroon kraken vanuit uitgelezen bestanden | Vertraagd | PBKDF2 met 600.000+ iteraties en een salt per apparaat; een lang patroon maakt verschil. |
| Inbraak in een cloudaccount | Ja | Kluisgegevens worden niet geüpload en zijn uitgesloten van iCloud-back-ups. Een back-upbestand dat je in de cloud bewaart, blijft versleuteld met je back-upwachtwoord. |
| Knoeien met versleutelde bestanden | Gedetecteerd | De authenticatie van AES-256-GCM weigert gewijzigde gegevens. |
| Iemand kijkt mee terwijl je het patroon tekent | Nee | Zie hieronder. |
| Malware of een gejailbreakt apparaat | Nee | Zie hieronder. |
| Vergeten patroon of back-upwachtwoord | Nee | Herstel is niet mogelijk. |
| Verloren of kapotte telefoon | Alleen met een back-up | Zet een versleuteld back-upbestand terug dat je eerder hebt gemaakt. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Waartegen Velcrypt niet beschermt

Elk beveiligingsmiddel heeft grenzen, en je hoort die van Velcrypt te kennen voordat je erop vertrouwt.

- **Meekijken.** Als iemand ziet hoe je je patroon tekent, live of via een camera, kan diegene die kluis openen. Teken het uit het zicht en kies een patroon dat niet op een simpele letter of vorm lijkt.
- **Gedwongen ontgrendelen.** Velcrypt kan niet voorkomen dat iemand je dwingt een patroon te tekenen. Een lokkluis kan helpen, en met Premium opent een [dwangpatroon](id:duress-pattern) een lokkluis terwijl het de andere kluizen definitief verwijdert. Geen van beide houdt iemand tegen die je echte patroon al kent, en verwijderde kluizen zijn alleen terug te zetten uit een back-upbestand dat je eerder hebt gemaakt.
- **Een telefoon die met open kluis wordt doorgegeven.** Zolang een kluis ontgrendeld is, ziet iedereen die de telefoon vasthoudt wat jij ziet. Vergrendel hem voordat je je telefoon aan iemand geeft.
- **Gecompromitteerde of gejailbreakte apparaten en malware.** Software die op een gecompromitteerd apparaat het scherm kan lezen, aanrakingen kan registreren of het geheugen van apps kan inspecteren, kan elke versleuteling op app-niveau omzeilen.
- **Schermafbeeldingen of foto’s van het scherm.** Velcrypt kan niet voorkomen dat een andere camera je scherm fotografeert.
- **Kopieën elders.** Importeren kopieert een foto; het origineel blijft in Foto’s tot je het verwijdert, en staat daarna nog ongeveer 30 dagen in Recent verwijderd. Kopieën kunnen ook bestaan in iCloud-foto’s, chatapps, e-mail of op de telefoon van iemand anders. Volg [originelen verwijderen na het importeren](id:delete-original-photos-after-import).
- **Een vergeten patroon, of een verloren telefoon zonder back-up.** In beide gevallen zijn de gegevens weg. Er is geen herstelzin en geen reset, en ook een vergeten back-upwachtwoord kan niet worden hersteld. Zie [kluispatroon vergeten](id:forgot-vault-pattern).
- **Ontdekken dat je Velcrypt gebruikt.** Het app-symbool is zichtbaar, en forensische tools kunnen mogelijk zien dat Velcrypt versleutelde gegevens bevat en ongeveer hoeveel. Velcrypt beweert niet dat te verbergen — alleen het aantal kluizen en wat erin zit.
- **Zwakke of raadbare patronen.** Een kort patroon, of een in de vorm van een L, Z of vierkant, is veel makkelijker te raden. Test een vergelijkbare vorm met de [patroonsterktetest](id:pattern-strength-checker) — nooit je echte patroon.

## Onafhankelijke controle

Velcrypt leunt op standaard, breed bestudeerde bouwstenen en op Apples eigen cryptografische bibliotheken in plaats van zelfbedachte algoritmen. Toch is een goed ontwerp niet hetzelfde als een gecontroleerd ontwerp. Velcrypt is **niet** onafhankelijk geaudit. Een externe beveiligingsreview zouden we toejuichen, en als die er komt, publiceren we de uitkomst hier.

## Begrippenlijst

- **AES-256-GCM** is een symmetrische versleutelingsmodus die een sleutel van 256 bits gebruikt en de gegevens authenticeert, zodat elke manipulatie bij het ontsleutelen wordt ontdekt.
- **PBKDF2** (Password-Based Key Derivation Function 2) is een standaard die een geheim zoals een wachtwoord of patroon omzet in een sleutel door een hashfunctie heel vaak te herhalen, waardoor raden traag wordt.
- **Salt** is een willekeurige waarde die vóór de sleutelafleiding met je geheim wordt gecombineerd, zodat hetzelfde patroon op verschillende apparaten verschillende sleutels oplevert.
- **HKDF** (HMAC-based Key Derivation Function) is een standaardmanier om meerdere onafhankelijke sleutels uit één sterke sleutel af te leiden.
- **Hoofdsleutel** is de willekeurige 256-bits sleutel die bij één kluis hoort en alle bestandssleutels van die kluis beschermt.
- **Plausibele ontkenning** is de eigenschap dat niets in de app kan bewijzen dat er nog meer kluizen bestaan, zodat je geloofwaardig één kluis kunt laten zien zonder andere te onthullen.
