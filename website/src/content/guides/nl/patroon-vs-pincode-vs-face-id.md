---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Patroon vs pincode vs Face ID: wat is veiliger?"
description: "Patroon, pincode, wachtwoord of Face ID? Vergelijk combinaties, meekijken, vegen op het scherm en gedwongen ontgrendelen om je privédata af te sluiten."
h1: "Patroonslot vs pincode vs wachtwoord vs Face ID: wat is veiliger?"
navTitle: "Patroon vs pincode vs Face ID"
answer: "Geen enkel slot wint op alle fronten. Een lang, willekeurig wachtwoord is het moeilijkst te raden; Face ID en Touch ID zijn het best bestand tegen meekijken, maar kunnen zonder je toestemming worden gebruikt; een pincode van 6 cijfers verslaat er een van 4 met een factor 100; en een patroon is zo sterk als de vorm die een mens echt kiest: lange, onregelmatige patronen zijn prima, simpele letters en hoeken niet."
keyFacts:
  - "Een pincode van 4 cijfers heeft 10.000 combinaties; een van 6 cijfers heeft er 1.000.000."
  - "Door mensen gekozen patronen zijn veel zwakker dan het theoretische maximum: mensen kiezen hoeken, letters en korte vormen."
  - "Biometrie is handig en moeilijk af te kijken, maar een gezicht of vinger kan worden gebruikt terwijl je slaapt, wordt vastgehouden of wordt gedwongen."
  - "Vegen op het scherm verraden patronen makkelijker dan pincodes."
  - "Velcrypt gebruikt een patroon op een raster van 5×5 (minstens 6 stippen) en heeft bewust geen Face ID of Touch ID."
primaryKeyword: "patroonslot vs pincode"
keywords: ["pincode vs face id veiligheid", "is een patroonslot veilig", "patroon vs wachtwoord", "face id vs toegangscode", "veiligste telefoonslot", "gedwongen biometrie"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Rekenwerk aan combinaties, meekijken, vegen op het scherm en gedwongen biometrie: een eerlijke vergelijking van vier manieren om privédata af te sluiten."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Is een patroonslot veiliger dan een pincode?"
    a: "Dat hangt af van het specifieke patroon en de pincode. Een lang, onregelmatig patroon op een groot raster kan een pincode van 6 cijfers verslaan, maar een kort patroon in de vorm van een letter is makkelijker te raden dan een willekeurige pincode van 6 cijfers. Lengte en onvoorspelbaarheid tellen zwaarder dan het type slot."
  - q: "Is Face ID veiliger dan een toegangscode?"
    a: "Face ID is heel moeilijk te misleiden met een foto en onmogelijk af te kijken, dus het beschermt goed tegen toevallig rondsnuffelen. De zwakte is toestemming: iemand kan de telefoon voor je gezicht houden. Een toegangscode werkt alleen als jij hem invoert."
  - q: "Hoeveel combinaties heeft een pincode van 6 cijfers?"
    a: "Een pincode van 6 cijfers heeft 1.000.000 mogelijke combinaties (000000 tot 999999), tegenover 10.000 voor een pincode van 4 cijfers. Veelgebruikte keuzes als 123456 of geboortedatums maken het echte aantal veel kleiner."
  - q: "Kan iemand mijn patroon raden aan de hand van vegen op het scherm?"
    a: "Soms. In het juiste licht kunnen vingersporen op een glazen scherm het pad van een patroon verraden. Het scherm schoonvegen, een matte screenprotector gebruiken en een patroon kiezen dat zichzelf kruist, maken zulke aanvallen allemaal moeilijker."
  - q: "Waarom biedt Velcrypt geen Face ID?"
    a: "Bewust. Een gezicht of vingerafdruk kan worden gebruikt om een apparaat te ontgrendelen zonder dat je ermee instemt, terwijl een patroon alleen in je geheugen bestaat. Velcrypt koos voor een patroon zodat het openen van een kluis altijd vraagt dat jij besluit hem te openen."
---

Elk slot is een afweging tussen hoe moeilijk het te raden is, hoe makkelijk het af te kijken is en hoe makkelijk iemand je kan dwingen het te openen. De meeste vergelijkingen kijken alleen naar het eerste. Deze gids kijkt naar alle drie, met echte getallen waar die bestaan en eerlijke kanttekeningen waar niet.

## De vier kandidaten

- **Pincode** is een korte reeks cijfers, op een iPhone meestal 4 of 6.
- **Alfanumeriek wachtwoord** is een reeks letters, cijfers en symbolen van willekeurige lengte.
- **Patroon** is een pad dat je door een raster van stippen tekent. Android maakte een raster van 3×3 populair; het [patroonslot van Velcrypt](id:pattern-lock) gebruikt een raster van 5×5.
- **Biometrie** (Face ID, Touch ID) ontgrendelt met je gezicht of vingerafdruk, met een toegangscode als achtervang.

## Zoekruimte: hoeveel pogingen zijn er nodig?

De zoekruimte is het aantal mogelijke geheimen dat een aanvaller in het slechtste geval moet proberen. Het is het duidelijkste getal om sloten te vergelijken, maar alleen als je onthoudt dat mensen geheimen niet willekeurig kiezen.

### Pincodes

Een pincode van 4 cijfers heeft 10 × 10 × 10 × 10 = **10.000** mogelijkheden. Een pincode van 6 cijfers heeft er **1.000.000**. Die sprong van 100× is de eenvoudigste beveiligingsverbetering die de meeste mensen kunnen maken.

Het addertje is de verdeling. Analyses van gelekte pincodes laten steeds zien dat een handvol codes (1234, 0000, 1111, geboortejaren, 123456) een groot deel van de echte keuzes dekt. Een aanvaller probeert die eerst.

### Alfanumerieke wachtwoorden

Met ongeveer 70 mogelijke tekens per positie voegt elk teken ongeveer 6 bits toe. Een echt willekeurig wachtwoord van 10 tekens heeft meer combinaties dan welke pincode of praktisch patroon ook. Het probleem is onthouden: mensen kiezen woorden, namen en voorspelbare vervangingen, en lange wachtwoorden zijn vervelend om vele keren per dag op een telefoon te typen.

### Patronen: theorie versus mensen

Hier telt eerlijkheid. Het theoretische aantal patronen kan enorm klinken. Op het klassieke Android-raster van 3×3 (4 tot 9 stippen, geen stip hergebruikt) zijn er 389.112 geldige patronen, meer dan een pincode van 5 cijfers. Op een raster van 5×5 met 25 stippen is het theoretische aantal vele malen groter.

Echte patronen zijn veel zwakker dan die getallen doen vermoeden. Onderzoek naar Android-patronen heeft herhaaldelijk laten zien dat mensen:

- veel vaker in de linkerbovenhoek beginnen dan toeval zou voorspellen,
- korte patronen tekenen, dicht bij de minimale lengte,
- letters (L, Z, S, C, U, N) of eenvoudige vierkanten natekenen,
- van links naar rechts en van boven naar beneden bewegen, zoals ze lezen.

Daardoor ligt de werkelijke sterkte van een typisch, door een mens gekozen patroon van 3×3 dichter bij die van een korte pincode dan bij het theoretische maximum. Een groter raster helpt alleen als je het ook echt gebruikt: een „L” van 6 stippen op een raster van 5×5 is nog steeds makkelijk te raden.

Wat een patroon sterk maakt, is hetzelfde wat elk geheim sterk maakt: lengte en onvoorspelbaarheid. Op een raster van 5×5 is een patroon van 8 tot 12 stippen dat meerdere keren van richting verandert, niet in een hoek begint, geen letter vormt en bij voorkeur zijn eigen pad kruist, echt moeilijk te raden. Je kunt een vergelijkbare vorm (nooit je echte) testen met de [patroonsterktechecker](id:pattern-strength-checker).

### Snelheid van raden telt even zwaar als het aantal pogingen

Het aantal combinaties is maar de helft van het verhaal. De andere helft is hoe snel een aanvaller ze kan proberen. Op een iPhone dwingt de Secure Enclave oplopende wachttijden af voor de toegangscode. In een app is de verdediging meestal sleutelafleiding: Velcrypt haalt elk patroon door PBKDF2 met minstens 600.000 iteraties, wat elke poging bewust traag maakt. De [uitleg over AES-256](id:aes-256-encryption-explained) laat zien waarom die stap belangrijker is dan het versleutelingsalgoritme zelf.

## Meekijken en vegen

**Meekijken** (shoulder surfing) betekent dat iemand toekijkt terwijl je ontgrendelt. Het is in de praktijk de meest voorkomende aanval op telefoonsloten, omdat de mensen die het meest gemotiveerd zijn om in je telefoon te komen vaak naast je zitten.

- **Patronen** zijn het makkelijkst af te kijken. Een vorm onthoud je in één oogopslag, zelfs vanaf de andere kant van de tafel.
- **Pincodes** zijn redelijk makkelijk af te kijken, vooral die van 4 cijfers die je met één duim typt.
- **Wachtwoorden** zijn moeilijker in één keer op te vangen, omdat ze langer zijn en het toetsenbord tussen indelingen wisselt.
- **Biometrie** kan helemaal niet worden afgekeken.

**Vegenaanvallen** lezen het vettige spoor dat je vinger op glas achterlaat. Patronen zijn hier kwetsbaarder dan pincodes, omdat een doorlopende lijn een doorlopend spoor achterlaat. Patronen die zichzelf kruisen, teruggaan of stippen in een dubbelzinnige volgorde passeren, zijn veel moeilijker uit een spoor te reconstrueren.

Praktische verdediging: houd het scherm schuin weg, scherm het af met je andere hand, veeg het scherm af en toe schoon en ontgrendel gevoelige apps als je alleen bent.

## Gedwongen ontgrendelen: de vraag die de meeste vergelijkingen overslaan

Biometrie heeft een zwakte die geen enkele techniek wegneemt: er is geen medewerking van jou voor nodig. Iemand kan je telefoon voor je gezicht houden terwijl je slaapt, je vinger op de sensor drukken of je fysiek dwingen. In huiselijke situaties, op feestjes of bij een beroving is dat een realistisch risico.

Op sommige plekken kunnen autoriteiten je ook wettelijk verplichten een vingerafdruk of gezicht te geven, terwijl een code in je geheugen anders wordt behandeld. Het juridische beeld verschilt sterk per land en is in de loop der tijd veranderd, dus deze gids geeft geen juridisch advies. Het technische punt is eenvoudig: een geheim in je geheugen vraagt een beslissing van jou; een lichaamsdeel niet.

Vertrouw je op Face ID, ken dan de nooduitgang. Op de iPhone 8 en later schakel je Face ID en Touch ID tijdelijk uit tot de toegangscode is ingevoerd door de zijknop en een van de volumeknoppen ingedrukt te houden tot het scherm voor uitzetten/SOS verschijnt (en dat daarna te annuleren). Zie [privacy aan de grens](id:phone-privacy-border-crossing) voor wanneer dat ertoe doet.

## Naast elkaar

| | Pincode 4 cijfers | Pincode 6 cijfers | Lang wachtwoord | Patroon (5×5, 8+ stippen) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Mogelijke combinaties | 10.000 | 1.000.000 | Heel groot als willekeurig | Heel groot in theorie; veel lager bij voorspelbare vormen | Niet van toepassing |
| Te raden in de praktijk | Hoog (veelgebruikte codes) | Gemiddeld | Laag als willekeurig | Laag als onregelmatig, hoog als letter | Heel laag |
| Meekijken | Makkelijk | Gemiddeld | Moeilijk | Makkelijk | Niet mogelijk |
| Lekken via vegen | Enigszins | Enigszins | Laag | Hoog, tenzij het pad zichzelf kruist | Geen |
| Te gebruiken zonder je toestemming | Nee | Nee | Nee | Nee | Ja |
| Snelheid en gemak | Snel | Snel | Traag op een telefoon | Snel | Snelst |

## Het juiste slot kiezen voor elke laag

Je hoeft niet één slot voor alles te kiezen. Een verstandige opzet voor de meeste mensen:

1. **Apparaat:** een toegangscode van 6 cijfers (of langer), met Face ID of Touch ID voor het gemak als je situatie dat toelaat.
2. **Privé-inhoud:** een apart geheim dat niet je toegangscode is, zodat iemand die je toegangscode leert of afkijkt niet automatisch alles krijgt.
3. **Weet hoe je biometrie snel uitzet** als je ergens bent waar je onder druk gezet kunt worden.

## Waar Velcrypt past

Velcrypt maakt een bewuste keuze: de enige weg naar een kluis is een patroon op een raster van 5×5 stippen, één doorlopende lijn door minstens 6 stippen met minstens één richtingsverandering. Langere patronen van 8 tot 12 stippen worden aangeraden. Er is geen Face ID of Touch ID, omdat een patroon niet van je lichaam kan worden afgenomen.

Het ontwerp verandert ook wat „raden” betekent. Elk patroon is een eigen kluis, en een patroon dat Velcrypt nooit heeft gezien, opent gewoon een lege kluis, zonder foutmelding. Een verkeerde gok kondigt zichzelf dus niet als fout aan, en je kunt een [lokkluis](id:what-is-a-decoy-vault) onder een tweede patroon bewaren. De pagina over [verborgen kluizen](id:hidden-vaults) legt het model uit, en het [beveiligingsoverzicht](id:security) noemt waar het niet tegen beschermt, zoals iemand die toekijkt terwijl je tekent.
