---
pageId: forgot-vault-pattern
title: "Wachtwoord of patroon van je fotokluis vergeten?"
description: "Wachtwoord of patroon van je fotokluis vergeten? Wat je eerst probeert, waarom Velcrypt geen reset heeft, hoe andere apps herstel regelen en preventie."
h1: "Wachtwoord of patroon van je fotokluis vergeten? Wat wel en niet kan"
navTitle: "Kluispatroon vergeten"
answer: "In Velcrypt kan een vergeten patroon niet worden gereset of hersteld, niet door jou en niet door Velcrypt, omdat de sleutel alleen in je geheugen bestaat en geen server een kopie bewaart. Wat je wel kunt doen, is rustig kleine varianten van het patroon opnieuw proberen, of de inhoud terugzetten uit een versleuteld back-upbestand als je dat eerder hebt gemaakt. Andere apps bieden soms herstel via e-mail."
keyFacts:
  - "Velcrypt heeft geen reset, geen herstel-e-mail en geen herstelzin: sleutels worden op het apparaat van je patroon afgeleid."
  - "Een verkeerd patroon in Velcrypt opent een lege kluis in plaats van een foutmelding, dus een lege kluis betekent vaak een net iets ander patroon."
  - "Kluisgegevens vallen buiten iCloud- en computerback-ups."
  - "Een eerder gemaakt versleuteld back-upbestand kun je met je back-upwachtwoord terugzetten in een kluis die je wel kunt openen."
  - "Zou je iets onmogelijk kunnen missen, maak dan een versleutelde back-up en bewaar die op een andere plek die je vertrouwt."
primaryKeyword: "fotokluis wachtwoord vergeten"
keywords: ["kluispatroon vergeten", "fotokluis herstellen", "fotokluis app pincode vergeten", "kluispatroon resetten", "buitengesloten van fotokluis"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Wat je eerst probeert, waarom Velcrypt een vergeten patroon niet kan resetten, hoe andere apps herstel regelen en gewoontes die buitensluiten voorkomen."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "Kan de support van Velcrypt mijn patroon resetten?"
    a: "Nee. Velcrypt heeft geen account en geen server, en je sleutels worden op je iPhone van het patroon afgeleid. Er is niets wat het team kan resetten of opzoeken, en daarom kan ook niemand anders erin."
  - q: "Mijn kluis ziet er ineens leeg uit. Zijn mijn gegevens weg?"
    a: "Waarschijnlijk niet. In Velcrypt opent een patroon dat de app niet kent een nieuwe, lege kluis, dus een lege kluis betekent meestal dat je een net iets ander patroon hebt getekend. Sluit de app, probeer het zorgvuldig opnieuw en voeg niets toe aan de lege kluis."
  - q: "Kan ik Velcrypt opnieuw installeren om opnieuw te beginnen en mijn foto's te houden?"
    a: "Nee. De app verwijderen verwijdert ook de versleutelde gegevens van het apparaat. Opnieuw installeren geeft je een schone app, geen toegang tot de oude kluizen. Verwijder hem alleen als je hebt geaccepteerd dat de inhoud weg is."
  - q: "Hoe gaan andere fotokluis-apps om met een vergeten pincode?"
    a: "Veel apps met een account laten je de pincode resetten via e-mail of een cloudaccount, wat betekent dat er een herstelroute buiten je geheugen bestaat. Bekijk de helppagina's van je app voordat je ze nodig hebt, en besef dat een herstelroute ook een ingang voor iemand anders kan zijn."
  - q: "Helpt een back-up van Velcrypt als ik mijn patroon vergeet?"
    a: "Ja, als je er eerder een hebt gemaakt. De oude kluis blijft dicht, maar via Instellingen → Back-up zet je het back-upbestand met je back-upwachtwoord terug in een kluis die je wel kunt openen. Alles wat je na die back-up hebt toegevoegd, ontbreekt. Ook een vergeten back-upwachtwoord is niet te herstellen."
---

Dat zinkende gevoel als de vorm die je honderd keer hebt getekend ineens niet werkt, is echt. Eerst dit: verwijder de app niet en installeer hem niet opnieuw. De meeste „vergeten” patronen blijken net iets verkeerd onthouden te zijn, en er zijn verstandige dingen die je eerst kunt proberen.

## Probeer eerst dit (in Velcrypt)

Velcrypt gedraagt zich anders dan de meeste apps als je het patroon verkeerd tekent. Er verschijnt geen foutmelding. Elk patroon dat de app nog niet kent, opent gewoon een nieuwe, lege kluis. Ziet je kluis er leeg uit, dan is de meest waarschijnlijke verklaring dat je een net iets ander patroon hebt getekend, niet dat je gegevens verdwenen zijn.

Loop deze stappen rustig door:

1. **Voeg niets toe aan de lege kluis.** Importeer je er items in, dan maak je een nieuwe kluis onder dat verkeerde patroon, wat later voor verwarring zorgt.
2. **Sluit de app en begin opnieuw.** Velcrypt vergrendelt als de app naar de achtergrond gaat (na de vertraging die je hebt ingesteld), waardoor je een nieuw ontgrendelscherm krijgt.
3. **Controleer de beginstip.** Een patroon is een reeks stippen, dus vanaf de andere kant van dezelfde vorm beginnen is meestal een ander patroon.
4. **Controleer of je stippen overslaat of extra stippen raakt.** Op een raster van 5×5 gaat een rechte lijn makkelijk door één stip meer of minder dan je bedoelde.
5. **Denk aan waar je meestal bent.** Spiergeheugen hangt samen met houding. Probeer te tekenen in de positie waarin je meestal ontgrendelt: met één hand, met twee handen, zittend.
6. **Schets het op papier.** Teken het raster van 5×5 en schets het patroon uit je hoofd, en vergelijk dan varianten. Vernietig het papier daarna.
7. **Neem een pauze.** Onder stress herinner je je slechter. Later, uitgerust, opnieuw proberen werkt vaak.

## Als het echt weg is

Werkt niets daarvan, dan is dit het eerlijke antwoord: de inhoud kan niet worden hersteld. Niet door jou, niet door Velcrypt, door niemand.

Dat is geen beleidskeuze die kan worden teruggedraaid. Zo werkt de versleuteling:

- Velcrypt heeft geen account, geen e-mail en geen server. Zie [offline, zonder account](id:offline-no-account).
- Je kluissleutels worden ontgrendeld met een sleutel die op het apparaat van je patroon wordt afgeleid, met PBKDF2 en een salt die in de iOS-sleutelhanger staat. Zonder het patroon kan die sleutel niet worden gemaakt.
- De gegevens in de kluis zijn versleuteld met AES-256-GCM, dat niet te kraken is door alles uit te proberen. De [uitleg over AES-256](id:aes-256-encryption-explained) legt uit waarom.
- Kluisgegevens vallen buiten iCloud- en Finder/iTunes-back-ups, dus de enige oudere kopie is een versleuteld back-upbestand dat je zelf hebt gemaakt.

Dezelfde eigenschappen die je kluis privé maken, maken een vergeten patroon definitief.

### Heb je een back-up gemaakt?

Heb je eerder via Instellingen → Back-up een versleuteld `.velcrypt`-bestand van die kluis gemaakt, dan is de inhoud niet verloren. De oude kluis blijft dicht, maar je kunt het bestand terugzetten in een kluis die je wel kunt openen: open die kluis, kies Instellingen → Back-up → Zet back-up terug, selecteer het bestand en voer het back-upwachtwoord in. De onderdelen uit de back-up worden toegevoegd; alles wat je na het maken van de back-up hebt toegevoegd, zit er niet in. Ben je het back-upwachtwoord ook vergeten, dan kan niemand de back-up openen. Een systeem met een knop „patroon vergeten?” houdt noodzakelijkerwijs een ingang open die niet alleen van jou afhangt.

### En de andere kluizen?

Omdat elk patroon een eigen kluis is, heeft het vergeten van één patroon geen invloed op de andere. Weet je het patroon van je [lokkluis](id:what-is-a-decoy-vault) nog, dan opent die kluis gewoon.

## Waarom „geen reset” een bewuste afweging is

Herstelmechanismen maken altijd een tweede sleutel. Een reset via e-mail kan worden gestart door iedereen met toegang tot je inbox. Cloudback-ups kunnen worden teruggezet door iedereen die in het account komt. Beveiligingsvragen zijn vaak te raden via sociale media.

Velcrypt koos ervoor geen tweede sleutel bij iemand anders te leggen. Dat sluit een hele categorie aanvallen uit en betekent dat er niets te vorderen, te lekken of te phishen valt. De enige reservekopie is een versleuteld back-upbestand dat jij zelf maakt en met een eigen wachtwoord beveiligt. De prijs is dat jij als enige verantwoordelijk bent voor het onthouden van het patroon en het back-upwachtwoord. Voor veel mensen is die afweging het waard; voor sommige inhoud niet. Bepaal welk soort inhoud je bewaart.

## Buitensluiten voorkomen

### Kies een patroon dat sterk én te onthouden is

Sterkte en onthoudbaarheid zijn geen tegenpolen. Een goed patroon op het raster van 5×5:

- gebruikt 8 tot 12 stippen en verandert meerdere keren van richting,
- begint niet in een hoek en tekent geen letter na,
- heeft een persoonlijke logica die alleen jij kent, zoals een vorm die bij een plek hoort of een gebaar dat voor jou natuurlijk voelt.

Test een vergelijkbare vorm (niet je echte) met de [patroonsterktechecker](id:pattern-strength-checker), en lees [patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id) over wat patronen zwak maakt.

### Oefen het

- Open de kluis de eerste weken regelmatig, zodat de beweging spiergeheugen wordt.
- Verander je patroon niet vlak voor een stressvolle periode, zoals een reis.
- Heb je meerdere kluizen, maak hun patronen dan duidelijk verschillend, zodat je ze niet door elkaar haalt.

### Bewaar originelen waar verlies pijn zou doen

Zou het verliezen van een foto of document echt ondraaglijk zijn, dan moet een kluis niet de enige plek zijn waar het staat. Maak van onvervangbare items een versleutelde back-up via Instellingen → Back-up, en bewaar het bestand ergens anders dan op de telefoon, bijvoorbeeld in iCloud Drive of op een computer. Kies een back-upwachtwoord dat je onthoudt, en maak de back-up opnieuw als je nieuwe items toevoegt. Dit is een bewuste afweging: elke extra kopie is een plek meer om te beschermen.

### Schrijf het patroon niet op in de buurt van de telefoon

Moet je een geheugensteun op papier bewaren, maak het dan iets wat alleen jij kunt interpreteren en bewaar het ver van het apparaat.

## Als je een andere kluisapp gebruikt

Herstel verschilt sterk per app. Controleer voordat je het nodig hebt:

- **Is er een account?** Apps met een inlog via e-mail laten je de pincode vaak via die e-mail resetten.
- **Is er een cloudback-up?** Sommige apps kunnen na opnieuw installeren inhoud terugzetten als die met hun servers was gesynchroniseerd.
- **Is er een herstelcode?** Sommige apps maken er een tijdens het instellen. Heb je hem niet bewaard, dan helpt hij niet.
- **Wat staat er op de helppagina?** Zoek de officiële herstelinstructies van de maker. Wees op je hoede voor „ontgrendel”-tools van derden; die werken zelden en kunnen oplichting zijn.

De [gids over fotokluizen zonder account](id:photo-vault-without-account) legt de afwegingen uit tussen apps met een account en apps die alleen op het apparaat werken.

## Waar Velcrypt past

Velcrypt is bewust een kluis die alleen op het apparaat werkt: geen account, geen server, geen herstelzin, nergens een kopie van je sleutels. Wel kun je gratis een versleuteld back-upbestand maken, dat je zelf bewaart en dat beveiligd is met een back-upwachtwoord dat je zelf kiest. Twijfel je, dan kan [support](id:support) uitleggen hoe de app zich gedraagt, maar niemand daar kan een kluis voor je openen.
