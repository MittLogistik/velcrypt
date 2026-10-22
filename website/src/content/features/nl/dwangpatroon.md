---
pageId: duress-pattern
title: "Dwangpatroon: open een lokkluis, wis alle andere"
description: "Het dwangpatroon van Velcrypt opent je lokkluis en wist ongemerkt en definitief alle andere kluizen op de iPhone. Zo werkt het, instellen en grenzen."
h1: "Dwangpatroon"
navTitle: "Dwangpatroon"
answer: "Het dwangpatroon is een Premium-functie in Velcrypt 1.0. Je stelt het in vanuit een lokkluis. Teken je het ooit op het vergrendelscherm, dan opent Velcrypt die lokkluis en verwijdert het ongemerkt en definitief alle andere kluizen op de iPhone. Niets op het scherm laat zien dat dat is gebeurd."
keyFacts:
  - "Nu beschikbaar in Velcrypt 1.0, als onderdeel van Premium."
  - "Instellen via Instellingen → Noodpatroon, vanuit een lokkluis."
  - "Tekenen opent de lokkluis en verwijdert definitief alle andere kluizen op die iPhone."
  - "Het ontgrendelen ziet er hetzelfde uit en duurt even lang als normaal."
  - "De app laat nooit zien of er een dwangpatroon is ingesteld."
  - "Verwijderde kluizen zijn alleen terug te zetten uit een versleutelde back-up die je eerder hebt gemaakt."
  - "Het is een hulpmiddel voor je persoonlijke veiligheid, geen juridisch advies of manier om wettige bevelen te omzeilen."
primaryKeyword: "dwangpatroon kluis app"
keywords: ["noodwachtwoord iphone", "paniekpatroon fotokluis", "dwangcode app", "bescherming bij gedwongen ontgrendelen", "kluis wissen met patroon"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Een apart patroon dat je lokkluis opent en ongemerkt en definitief alle andere kluizen op de iPhone verwijdert. Premium."
status: available
schemaType: WebPage
order: 3
related: [set-up-decoy-vault-and-duress-pattern, duress-password-explained, forced-to-unlock-phone, self-destruct-photo-vault, hidden-vaults, what-is-a-decoy-vault, plausible-deniability-explained]
howTo:
  name: "Een dwangpatroon instellen in Velcrypt"
  steps:
    - name: "Maak een versleutelde back-up van je echte kluis"
      text: "Open je echte kluis, ga naar Instellingen → Back-up en bewaar een met een wachtwoord beveiligd .velcrypt-bestand buiten de app, bijvoorbeeld in Bestanden of op een computer."
    - name: "Open je lokkluis"
      text: "Teken het patroon van een tweede kluis met onschuldige, geloofwaardige inhoud. Kluizen na de eerste vragen om Premium."
    - name: "Open Instellingen → Noodpatroon"
      text: "Open vanuit de lokkluis Instellingen en kies Noodpatroon, zoals het dwangpatroon in de app heet."
    - name: "Teken twee keer een nieuw dwangpatroon"
      text: "Teken een apart patroon dat geen enkele kluis opent en teken het nog een keer ter bevestiging."
    - name: "Bevestig"
      text: "Lees de waarschuwing en bevestig. Vanaf nu opent dat patroon op het vergrendelscherm deze lokkluis en verwijdert het alle andere kluizen op de iPhone."
faq:
  - q: "Is het dwangpatroon nu al beschikbaar in Velcrypt?"
    a: "Ja. Het zit in Velcrypt 1.0, als onderdeel van Premium. Je stelt het in via Instellingen → Noodpatroon terwijl er een lokkluis open is."
  - q: "Wat gebeurt er als iemand het dwangpatroon tekent?"
    a: "Velcrypt opent de lokkluis waarin het is ingesteld en verwijdert tegelijk ongemerkt en definitief alle andere kluizen op die iPhone. Er is geen melding, animatie of vertraging die het verraadt."
  - q: "Kan iemand zien of ik een dwangpatroon heb?"
    a: "Niet via de app. Velcrypt laat nooit zien of er een is ingesteld. In de sleutelhanger staat altijd een versleuteld record van vaste grootte, gevuld met willekeurige bytes als er geen dwangpatroon is. Het record ziet er dus in beide gevallen hetzelfde uit."
  - q: "Kan ik de verwijderde kluizen terugkrijgen?"
    a: "Niet vanaf de telefoon. De enige weg terug is een versleuteld back-upbestand dat je eerder via Instellingen → Back-up hebt gemaakt en buiten de app hebt bewaard. Het dwangpatroon komt niet aan back-upbestanden die ergens anders staan."
  - q: "Moet ik Premium blijven betalen om het te laten werken?"
    a: "Nee. Instellen vraagt om Premium, maar een dwangpatroon dat al is ingesteld, blijft werken als Premium afloopt."
  - q: "Hoe zet ik het dwangpatroon uit?"
    a: "Tik in Instellingen → Noodpatroon op Schakel noodpatroon uit en teken het dwangpatroon. Daar tekenen zet het alleen uit; er wordt niets verwijderd."
  - q: "Kan het dwangpatroon foto's verwijderen die ik al heb gedeeld?"
    a: "Nee. Het verwijdert alleen de eigen kluizen van Velcrypt op die telefoon. Kopieën in je fotobibliotheek, iCloud, chats, e-mail, een back-upbestand of op het toestel van iemand anders liggen buiten zijn bereik."
  - q: "Is het legaal om een dwangpatroon te gebruiken?"
    a: "Dat hangt af van waar je bent en van de situatie. Gegevens verwijderen terwijl politie, grensambtenaren of een rechter rechtmatig toegang eisen, kan zelf strafbaar zijn. Het dwangpatroon is bedoeld voor situaties waarin je persoonlijke veiligheid op het spel staat, niet om bewijs te vernietigen. Speelt er een wettelijke eis, vraag dan juridisch advies."
---

Soms is het risico geen gestolen telefoon, maar iemand die voor je staat en eist dat je de app opent. Een [lokkluis](id:what-is-a-decoy-vault) helpt in veel van die momenten. Het dwangpatroon gaat verder: het opent de lokkluis **en** verwijdert definitief alle andere kluizen op de iPhone, zodat je privékluizen daar niet meer te openen zijn, ook later niet.

Het hoort bij Premium in Velcrypt 1.0. In de app heet de functie **Noodpatroon**.

## Wat het dwangpatroon doet

Een dwangpatroon is een apart ontgrendelpatroon dat je alleen onder druk gebruikt. In Velcrypt werkt het zo:

1. Je stelt het vooraf in, vanuit een lokkluis: een tweede kluis vol onschuldige, geloofwaardige inhoud.
2. Word je ooit gedwongen de app te ontgrendelen, dan teken je het dwangpatroon in plaats van je echte patroon.
3. Velcrypt opent de lokkluis, precies zoals bij een gewone ontgrendeling.
4. Op hetzelfde moment verwijdert het ongemerkt en definitief alle andere kluizen op die iPhone.

Niets op het scherm vertelt de ander wat er is gebeurd. Er is geen waarschuwing, geen animatie en geen extra vertraging: het ontgrendelen ziet er hetzelfde uit en duurt even lang als altijd.

## Zo stel je het in

Je hebt Premium nodig, omdat het dwangpatroon in een tweede kluis woont en kluizen na de eerste een Premium-functie zijn.

1. **Maak eerst een back-up van je echte kluis.** Open die, ga naar **Instellingen → Back-up** en bewaar het met een wachtwoord beveiligde .velcrypt-bestand buiten de app, bijvoorbeeld in Bestanden, iCloud Drive of op een computer. Dit is de enige manier om de kluis terug te krijgen als het dwangpatroon ooit wordt gebruikt.
2. **Open je lokkluis.** Heb je er nog geen, teken dan een nieuw patroon om er een te maken en zet er wat gewone inhoud in; Velcrypt vraagt je iets toe te voegen voordat een kluis een dwangpatroon kan krijgen. De [gids over lokkluizen](id:what-is-a-decoy-vault) legt uit hoe je hem geloofwaardig maakt.
3. **Ga naar Instellingen → Noodpatroon** terwijl de lokkluis open is.
4. **Teken het dwangpatroon twee keer.** Het moet een nieuw patroon zijn dat geen bestaande kluis opent.
5. **Lees de waarschuwing en bevestig.** Oefen het patroon daarna in je hoofd, niet op het vergrendelscherm: daar tekenen verwijdert je andere kluizen.

De volledige uitleg, met tips om te oefenen, staat in [een lokkluis en dwangpatroon instellen](id:set-up-decoy-vault-and-duress-pattern).

### Regels om te kennen

- **Eén per iPhone.** Er is maar één dwangpatroon per toestel. Stel je een nieuw in, dan vervangt dat het oude.
- **Uitzetten** doe je door het dwangpatroon te tekenen in Instellingen → Noodpatroon. Daar tekenen zet het alleen uit; er wordt niets verwijderd.
- **Het blijft werken als Premium afloopt.** Alleen het instellen vraagt om Premium.
- **Stel het in een lokkluis in, niet in je enige kluis.** Is de lokkluis de enige kluis op de telefoon, dan valt er voor het dwangpatroon niets te verwijderen. Velcrypt waarschuwt je als dat zo is.

## Niets verraadt dat het bestaat

Een dwangpatroon is alleen nuttig als niemand kan zien dat het er is. Velcrypt laat nooit zien of er een is ingesteld, niet in de interface en niet in de instellingen. Achter de schermen staat er altijd een versleuteld record van vaste grootte in de iOS-sleutelhanger; is er geen dwangpatroon, dan bevat het willekeurige bytes. Het record ziet er dus hetzelfde uit, of je de functie nu gebruikt of niet.

Dit bouwt voort op [verborgen kluizen](id:hidden-vaults): elk patroon opent een eigen kluis, er is geen lijst van kluizen en een onbekend patroon opent zonder foutmelding een lege kluis. Het idee achter beide lees je in [plausibele ontkenning uitgelegd](id:plausible-deniability-explained).

## Wanneer het kan helpen

Het dwangpatroon is bedoeld voor situaties waarin je persoonlijke veiligheid op het spel staat, bijvoorbeeld:

- **Een controlerende of gewelddadige partner** die eist alles op je telefoon te zien.
- **Een beroving of bedreiging**, waarbij iemand je dwingt ter plekke dingen te ontgrendelen.
- **Aanhoudend snuffelen** door iemand die de lokkluis niet gelooft en blijft aandringen.

Zit je in zo'n situatie, dan bespreekt de gids [wat je doet als iemand je dwingt je telefoon te ontgrendelen](id:forced-to-unlock-phone) het bredere plaatje, ook wanneer je hulpdiensten kunt inschakelen.

## Eerlijke beperkingen

**Het is definitief.** Verwijderde kluizen zijn niet vanaf de telefoon te herstellen. Kluisgegevens zitten niet in iCloud- of computerback-ups, dus de enige weg terug is een versleuteld back-upbestand dat je eerder hebt gemaakt. Back-upbestanden die buiten de app staan, blijven onaangeroerd.

**Flashopslag heeft grenzen.** Zoals geen enkele app kan Velcrypt garanderen dat verwijderde bytes fysiek van flashopslag worden gewist. Wat het wel garandeert: kluisgegevens zijn versleuteld met AES-256-GCM en de sleutels worden samen met de kluismappen verwijderd, dus wat achterblijft is onleesbare versleutelde data.

**Het kan kopieën niet ongedaan maken.** Staat een foto nog in je fotobibliotheek, in Recent verwijderd, in iCloud-foto's, in een chat of op de telefoon van iemand anders, dan blijft die daar. [Verwijder originelen na het importeren](id:delete-original-photos-after-import).

**Het houdt meekijken niet tegen.** Heeft iemand je je echte patroon zien tekenen of het scherm gefilmd, dan verandert het dwangpatroon niets aan wat diegene heeft gezien. Teken het buiten het zicht van anderen.

**Je veiligheid gaat voor.** Sommige mensen reageren slecht als ze vermoeden dat er iets is verborgen of verwijderd. Een dwangpatroon is een mogelijkheid, nooit een verplichting. Jij kunt het best inschatten of het veilig is om het te gebruiken.

**Het is geen manier om de wet te omzeilen.** Gebruik het nooit om bewijs te vernietigen of om een wettige eis van politie, grensambtenaren of een rechter te negeren. Wetten over het doorzoeken van toestellen en het verwijderen van gegevens verschillen per land, en gegevens verwijderen terwijl er een wettelijke eis ligt, kan zelf strafbaar zijn. Speelt er een wettelijke eis, vraag dan juridisch advies. De [gids over grensovergangen](id:phone-privacy-border-crossing) gaat over reizen.

## Prijzen

Het dwangpatroon hoort bij Premium, samen met onbeperkt onderdelen, meer kluizen en alternatieve appsymbolen. Versleutelde back-up blijft voor iedereen gratis. Zie [prijzen](id:pricing) voor de abonnementen.
