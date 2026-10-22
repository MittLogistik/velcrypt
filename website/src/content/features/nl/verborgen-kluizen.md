---
pageId: hidden-vaults
title: "Verborgen kluizen: elk patroon opent een eigen kluis"
description: "In Velcrypt is elk patroon een aparte kluis. Er is geen kluizenlijst en een onbekend patroon opent zonder foutmelding een lege kluis. Zo werkt het."
h1: "Verborgen kluizen: één patroon, één kluis, geen lijst"
navTitle: "Verborgen kluizen"
answer: "In Velcrypt opent elk patroon een eigen versleutelde kluis. Er is geen lijst met kluizen, en een patroon dat de app nog nooit heeft gezien opent zonder foutmelding gewoon een lege kluis. Niets op het scherm bewijst dus dat er andere kluizen bestaan."
keyFacts:
  - "Elk patroon is een eigen kluis met een eigen versleutelingssleutel."
  - "Velcrypt toont nooit een lijst met kluizen."
  - "Een onbekend patroon opent een lege kluis, zonder foutmelding."
  - "Je kunt een lokkluis met gewone inhoud bijhouden."
  - "Meer kluizen zijn gepland als onderdeel van de optionele Premium-upgrade."
primaryKeyword: "verborgen kluis app iphone"
keywords: ["meerdere kluizen foto app", "lokkluis iphone", "geheime kluis app", "plausibele ontkenning fotokluis", "tweede verborgen kluis"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Elk patroon is een eigen kluis. Geen kluizenlijst, geen foutmelding bij onbekende patronen en ruimte voor een geloofwaardige lokkluis."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "Hoe zie ik al mijn kluizen in Velcrypt?"
    a: "Dat kan niet, en dat is bewust zo. Velcrypt heeft geen kluizenlijst. Een kluis open je alleen door het bijbehorende patroon te tekenen, dus houd je patronen zelf goed bij."
  - q: "Wat gebeurt er als ik een verkeerd patroon teken?"
    a: "Velcrypt opent dan een lege kluis voor dat patroon in plaats van een foutmelding te tonen. Voeg je daar bestanden aan toe, dan wordt dat patroon een nieuwe kluis. Verwachtte je je foto's en zie je niets, dan heb je waarschijnlijk een net iets ander patroon getekend."
  - q: "Kan iemand zien dat ik meer dan één verborgen kluis heb?"
    a: "Niet via de interface van de app. Er is geen lijst, teller of foutmelding die andere kluizen verraadt. Velcrypt kan niet verbergen dat de app zelf is geïnstalleerd, en kan niet voorkomen dat iemand meekijkt terwijl je een patroon tekent."
  - q: "Wat is een lokkluis?"
    a: "Een lokkluis is een kluis met gewone, geloofwaardige inhoud die je kunt openen als je onder druk wordt gezet om te laten zien wat er in de app staat. Je echte kluis blijft achter een ander patroon."
howTo:
  name: "Een tweede verborgen kluis maken in Velcrypt"
  steps:
    - name: "Vergrendel Velcrypt"
      text: "Verlaat de kluis waarin je zit, zodat het patroonraster verschijnt."
    - name: "Teken een nieuw patroon"
      text: "Teken een patroon dat je nog niet eerder hebt gebruikt, met minstens 6 stippen en minstens één richtingsverandering. Er opent een lege kluis."
    - name: "Voeg inhoud toe"
      text: "Importeer een foto, video of document in de lege kluis om hem in gebruik te nemen."
    - name: "Oefen het patroon"
      text: "Vergrendel en ontgrendel een paar keer, zodat je onthoudt welk patroon bij welke kluis hoort."
---

De meeste kluis-apps hebben één wachtwoord en één afgeschermd deel. Wie vraagt „wat is het wachtwoord?”, krijgt dus alles te zien. Velcrypt werkt anders: het patroon dat je tekent ontgrendelt niet alleen de app, maar bepaalt ook welke kluis verschijnt. Dat eenvoudige idee maakt verborgen kluizen mogelijk.

## Elk patroon is een eigen kluis

Een verborgen kluis is een kluis waarvan het bestaan van buitenaf niet kan worden bevestigd. In Velcrypt hoort elk geldig patroon op het [5×5-raster](id:pattern-lock) bij een aparte kluis, met een eigen willekeurige hoofdsleutel en eigen bestanden. Patroon A toont de foto's die je achter patroon A hebt opgeslagen. Patroon B toont een heel andere verzameling.

Er is geen instellingenscherm dat ze opsomt, geen menu om van kluis te wisselen en geen getal dat zegt hoeveel er zijn. Van binnenuit lijkt elke kluis de enige.

## Geen foutmelding bij een onbekend patroon

Teken je een patroon dat Velcrypt nog nooit heeft gezien, dan zegt de app niet „verkeerd patroon”. Er opent een lege kluis. Dat gedrag is de kern van de functie:

- **Niets om te tellen.** Er is geen pogingenteller of foutmelding die bevestigt dat het „echte” patroon nog ergens bestaat.
- **Niets om te vergelijken.** Een lege kluis ziet er precies zo uit als een kluis die je net hebt aangemaakt.
- **Niets om te bewijzen.** Iemand die naar de app kijkt, kan niet zien of je één kluis hebt of meerdere.

Dit is een vorm van [plausibele ontkenning](id:plausible-deniability-explained): het vermogen om geloofwaardig te zeggen dat wat je hebt laten zien alles is, omdat de software geen bewijs van het tegendeel geeft.

Het heeft ook een praktisch bijeffect. Teken je je patroon net verkeerd, dan kom je in een lege kluis terecht in plaats van een foutmelding te zien. Lijken je foto's verdwenen, vergrendel de app dan en teken je patroon opnieuw, rustig en precies.

## Zo maak je een tweede kluis

1. **Vergrendel Velcrypt.** Verlaat de kluis waarin je zit, zodat het patroonraster verschijnt.
2. **Teken een nieuw patroon.** Gebruik er een dat je nog niet eerder hebt gebruikt, volgens de gewone regels: minstens 6 stippen en minstens één richtingsverandering.
3. **Voeg iets toe.** Er opent een lege kluis. Importeer een foto, video of document om hem in gebruik te nemen.
4. **Oefen het patroon.** Vergrendel en ontgrendel een paar keer, zodat je precies onthoudt welk patroon bij welke kluis hoort.

## Een lokkluis gebruiken

Een lokkluis is een kluis met onschuldige maar geloofwaardige inhoud, bijvoorbeeld wat bewaarde bonnetjes, screenshots of vakantiefoto's. Staat iemand erop te zien wat er in Velcrypt staat, dan kun je de lokkluis openen. Die gedraagt zich als elke andere kluis.

Een lokkluis werkt het best als hij er gebruikt uitziet. Een lege kluis roept de vraag op „waarom installeer je een kluis-app voor niks?”, terwijl een kluis met een paar dozijn gewone items die vraag zelden oproept. De gids over [wat een lokkluis is](id:what-is-a-decoy-vault) legt uit hoe je er een overtuigend maakt.

Velcrypt plant ook een [dwangpatroon](id:duress-pattern) voor de optionele Premium-upgrade (binnenkort). Dat gaat een stap verder dan een lokkluis: het opent een gekozen kluis en ontneemt ongemerkt de toegang tot de andere.

## Zo blijft elke kluis gescheiden

Scheiding is meer dan mappen verstoppen. Elke kluis heeft een eigen willekeurige 256-bits hoofdsleutel, die wordt ontgrendeld met een sleutel die van het patroon van die kluis is afgeleid. Bestanden in de ene kluis zijn versleuteld met sleutels die alleen bij die kluis horen, dus de ene kluis openen geeft geen toegang tot een andere. De pagina over [versleuteling](id:encryption) legt de volledige sleutelketen uit.

## Wat verborgen kluizen wel en niet kunnen

Verborgen kluizen maken het moeilijk om te bewijzen dat er meer inhoud bestaat. Ze maken je niet onzichtbaar:

- Het Velcrypt-symbool is zichtbaar op je beginscherm. Vanaf iOS 18 kun je apps verbergen in een verborgen map die met Face ID is beveiligd, maar dat is een functie van iOS, niet van Velcrypt.
- Wie je je echte patroon ziet tekenen, kan de echte kluis openen.
- Kopieën van een bestand die nog ergens anders staan, zoals in Foto's, Recent verwijderd, iCloud of een chat, vallen buiten de bescherming van de kluis.
- Ontkenbaarheid hangt af van de context. Het is een technische eigenschap van de app, geen juridische garantie.

Ga je bijvoorbeeld een grens over of moet je je telefoon afgeven, lees dan [privacy op je telefoon bij grensovergangen](id:phone-privacy-border-crossing) voordat je op één enkele functie vertrouwt.
