---
pageId: plausible-deniability-explained
title: "Plausibele ontkenning bij versleuteling, uitgelegd"
description: "Wat plausibele ontkenning bij versleuteling betekent, hoe verborgen volumes het idee bedachten, hoe Velcrypt het toepast en wat de eerlijke grenzen zijn."
h1: "Plausibele ontkenning bij versleuteling, uitgelegd"
navTitle: "Plausibele ontkenning uitgelegd"
answer: "Plausibele ontkenning bij versleuteling betekent dat niemand, ook nadat je iets hebt ontgrendeld, kan bewijzen of er nog meer verborgen gegevens bestaan. Velcrypt past het toe door elk patroon een eigen kluis te laten openen en bij onbekende patronen een lege kluis te tonen in plaats van een foutmelding. De app verbergt niet dat er versleutelde gegevens op het apparaat staan."
keyFacts:
  - "Plausibele ontkenning gaat over wat bewezen kan worden, niet over verbergen dat een app of versleutelde gegevens bestaan."
  - "Programma's voor schijfversleuteling bedachten het idee met verborgen volumes binnen gewone versleutelde volumes."
  - "In Velcrypt opent elk onbekend patroon een lege kluis, zonder foutmelding en zonder kluizenlijst."
  - "Opslaggrootte en forensisch onderzoek kunnen laten zien dat versleutelde gegevens bestaan, ook als ze niet te lezen zijn."
  - "Ontkenbaarheid beschermt tegen rondsnuffelen en informele druk; het is geen juridisch schild."
primaryKeyword: "plausibele ontkenning versleuteling"
keywords: ["wat is plausibele ontkenning", "ontkenbare versleuteling", "verborgen volume uitgelegd", "plausibele ontkenning fotokluis", "ontkenbare kluis iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Het concept achter verborgen volumes en lokkluizen, hoe Velcrypts ontwerp met onbekende patronen het gebruikt en wat het eerlijk gezegd niet kan."
category: security
order: 42
related: [what-is-a-decoy-vault, hidden-vaults, duress-pattern, aes-256-encryption-explained, phone-privacy-border-crossing, security]
faq:
  - q: "Wat betekent plausibele ontkenning in gewone taal?"
    a: "Dat je geloofwaardig kunt zeggen „dit is alles” en niemand het tegendeel kan bewijzen. Bij versleuteling bereik je dat met ontwerpen waarin verborgen gegevens niet te onderscheiden zijn van lege ruimte of van gegevens die niet bestaan."
  - q: "Verbergt Velcrypt dat ik een kluisapp gebruik?"
    a: "Nee. De app is zichtbaar op je beginscherm, tenzij je de eigen optie van iOS gebruikt om apps te verbergen, en het opslaggebruik staat in de iPhone-instellingen. De ontkenbaarheid van Velcrypt gaat over hoeveel kluizen er zijn en wat erin staat, niet over of er versleutelde gegevens op het apparaat staan."
  - q: "Kunnen forensische tools verborgen kluizen opsporen?"
    a: "Ze kunnen mogelijk laten zien dat de app meer versleutelde gegevens bewaart dan een geopende kluis verklaart. Zonder het juiste patroon blijven de gegevens zelf versleuteld met AES-256-GCM, maar hun bestaan is voor een expert misschien niet te ontkennen."
  - q: "Is plausibele ontkenning legaal?"
    a: "Versleuteling gebruiken is in de meeste landen legaal, maar wetten over het afgeven van sleutels en over het misleiden van ambtenaren verschillen sterk. Deze gids is geen juridisch advies; kom je in een juridische situatie terecht, praat dan met een advocaat."
  - q: "Wat is een verborgen volume?"
    a: "Een verborgen volume is een tweede versleuteld volume dat in de vrije ruimte van een gewoon versleuteld volume staat. Eén wachtwoord opent het buitenste volume, een ander het verborgen volume, en de verborgen gegevens zien eruit als willekeurige vrije ruimte."
---

Versleuteling beantwoordt één vraag heel goed: kan iemand dit lezen zonder de sleutel? Plausibele ontkenning beantwoordt een moeilijkere, menselijkere vraag: wat gebeurt er als iemand de sleutel eist? Deze gids legt het concept uit, waar het vandaan komt, hoe Velcrypt het gebruikt en waar het ophoudt te werken.

## Wat plausibele ontkenning betekent

Plausibele ontkenning is de eigenschap dat niemand, ook nadat je onder druk iets hebt geopend, kan bewijzen dat je iets achterhoudt. Je kunt zeggen „dat is alles”, en het systeem geeft de ander geen enkel bewijs om je tegen te spreken.

Het doet ertoe omdat sterke versleuteling het zwakke punt verschuift van de wiskunde naar de mens. Is een bestand beschermd met AES-256, dan gaat niemand het algoritme kraken. Ze gaan het je vragen, aandringen of dreigen. Ontkenbare ontwerpen proberen gedeeltelijk toegeven tot een veilige optie te maken.

## Een korte geschiedenis: verborgen volumes

Het idee werd breed bekend via software voor schijfversleuteling. Programma's uit de familie van TrueCrypt en VeraCrypt introduceerden het **verborgen volume**: een tweede versleutelde container, weggestopt in de ongebruikte ruimte van een gewone versleutelde container.

De truc werkt omdat de uitvoer van goede versleuteling eruitziet als willekeurige ruis, net als de vrije ruimte van een versleuteld volume dat met willekeurige gegevens is gevuld. Eén wachtwoord opent het buitenste volume, met geloofwaardige lokbestanden. Een ander wachtwoord opent het verborgen volume. Zonder dat tweede wachtwoord is het verborgen deel niet te onderscheiden van lege ruimte.

Onderzoekers hebben „ontkenbare versleuteling” ook formeler onderzocht, waarbij dezelfde versleutelde tekst met verschillende sleutels tot verschillende leesbare teksten kan worden ontsleuteld. Verborgen volumes waren de praktische, veelgebruikte versie.

Door de jaren heen hebben dezelfde onderzoekers en vakmensen ook de grenzen beschreven: besturingssystemen laten sporen achter (lijsten met recente bestanden, miniaturen, logboeken), mensen gedragen zich inconsistent, en een tegenstander die weet dat de software verborgen volumes ondersteunt, kan er gewoon van uitgaan dat er een bestaat.

## Hoe Velcrypt het idee toepast

Velcrypt past het principe toe op een kluis voor foto's en documenten op de iPhone. Er is geen buitenste en binnenste volume; in plaats daarvan:

- **Elk patroon is een eigen kluis.** Elke kluis heeft een eigen willekeurige hoofdsleutel van 256 bits, ontgrendeld met een sleutel die van dat patroon is afgeleid.
- **Er is geen kluizenlijst.** De app bewaart niets wat opsomt hoeveel kluizen er zijn.
- **Onbekende patronen openen een lege kluis.** Teken een patroon dat Velcrypt nooit heeft gezien en je komt in een nieuwe, lege kluis. Er is geen melding „verkeerd patroon”.

Het gevolg is dat een verkeerd patroon en een geldige maar lege kluis er precies hetzelfde uitzien. Open je een kluis voor iemand, dan toont niets in de interface dat er andere kluizen bestaan. Daardoor is een [lokkluis](id:what-is-a-decoy-vault) een natuurlijke manier van gebruiken in plaats van een speciale modus. De functiepagina over [verborgen kluizen](id:hidden-vaults) laat zien hoe het in de praktijk werkt.

Een geplande Premium-functie, het [dwangpatroon](id:duress-pattern) (binnenkort beschikbaar), breidt dit uit: een speciaal patroon zou een gekozen kluis openen en stilletjes de toegang tot de andere wegnemen.

## De eerlijke grenzen

Ontkenbaarheid is makkelijk te overdrijven. Dit is wat Velcrypt **niet** beweert.

### Het verbergt niet dat de app bestaat

Velcrypt staat op je beginscherm zoals elke andere app. In iOS 18 en later kun je apps verbergen in een verborgen map die met Face ID is vergrendeld, maar dat is een functie van iOS, en wie je toegangscode kent, kan nog steeds kijken. Een kluisapp zien vertelt mensen dat je privacy belangrijk vindt; het vertelt ze niet wat je bewaart.

### Het verbergt niet dat er versleutelde gegevens zijn

Velcrypt beweert niet te verbergen dat er versleutelde gegevens op het apparaat staan. Versleutelde bestanden nemen ruimte in, en de iPhone-instellingen tonen hoeveel opslag elke app gebruikt. Forensisch onderzoek van een apparaat kan laten zien dat de app meer versleutelde gegevens bevat dan de kluis die je opende. Zonder het patroon zijn die gegevens niet te ontsleutelen, maar „hier is meer” kan voor een expert zichtbaar zijn.

### Het kan kopieën elders niet ongedaan maken

Staat een foto nog in je fotobibliotheek, Recent verwijderd, iCloud of een chatgesprek, dan doet de ontkenbaarheid van de kluis er niet toe. [Verwijder de originelen](id:delete-original-photos-after-import) na het importeren.

### Het kan meekijken niet tegenhouden

Heeft iemand gezien hoe je je echte patroon tekende, of het scherm gefilmd, dan is de ontkenbaarheid weg. Teken in privé en scherm het scherm af.

### Het is geen juridische strategie

In sommige landen kan weigeren sleutels af te geven, of ambtenaren misleiden, tot straffen leiden. Ontkenbaarheid is vooral nuttig tegen informele druk: een jaloerse partner, een dief, een nieuwsgierig familielid. Voor alles waar autoriteiten bij betrokken zijn, lees je de [gids over grensovergangen](id:phone-privacy-border-crossing) en win je goed juridisch advies in.

## Ontkenbaarheid vs geheimhouding: twee verschillende beloftes

Het helpt de twee ideeën te scheiden, omdat ze in marketing vaak door elkaar lopen.

| | Geheimhouding (versleuteling) | Ontkenbaarheid |
|---|---|---|
| De vraag die het beantwoordt | Kan iemand dit lezen zonder de sleutel? | Kan iemand bewijzen dat er meer is dan je liet zien? |
| Waar het op leunt | Wiskunde en sleutelbeheer | Niet te onderscheiden ontwerp en geloofwaardig gedrag |
| Hoe sterk het is | Heel sterk met AES-256 en goede sleutelafleiding | Situationeel; hangt af van de waarnemer en de context |
| Wat het breekt | Zwakke geheimen, gelekte sleutels, kopieën elders | Opslaggrootte, forensische sporen, aarzeling, meekijken |

Versleuteling houdt je inhoud in bijna elk scenario onleesbaar. Ontkenbaarheid is een zachtere, sociale laag daarbovenop: waardevol op het moment zelf, maar nooit iets om alles op in te zetten.

## Ontkenbaarheid geloofwaardig maken

Technologie levert de mogelijkheid; jouw gedrag levert de geloofwaardigheid.

1. **Houd de kluis die je zou openen geleefd.** Echte albums, recente items, een geloofwaardig doel.
2. **Laat het verhaal passen bij de opslag.** Een lokkluis met een handvol documenten past slecht bij vele gigabytes aan app-opslag.
3. **Aarzel niet.** Oefen het patroon dat je zou openen tot het automatisch gaat.
4. **Vermijd sporen.** Noem albums elders niet naar wat je verbergt, en laat geen originelen in andere apps staan.

## Waar Velcrypt past

Velcrypt combineert een ontkenbare structuur met sterke versleuteling: AES-256-GCM via Apple CryptoKit, sleutels die met PBKDF2-HMAC-SHA512 (minstens 600.000 iteraties) van je patroon worden afgeleid, en sleutels per bestand die met HKDF worden afgeleid. Alles blijft op het apparaat, zonder account en zonder server die zou kunnen verraden hoeveel kluizen je hebt. De [pagina over versleuteling](id:encryption) geeft de details, en het [beveiligingsoverzicht](id:security) noemt de dreigingen die het niet is ontworpen tegen te houden.
