---
pageId: self-destruct-photo-vault
title: "Zelfvernietigende fotokluis voor iPhone: zo werkt het"
description: "Hoe een fotokluis die zichzelf wist werkt op de iPhone: wissen na foute pogingen vs een dwangpatroon, de prijs van onomkeerbaar wissen, en back-ups."
h1: "Zelfvernietigende fotokluizen op de iPhone: hoe ze werken en wat ze je kosten"
navTitle: "Zelfvernietigende fotokluizen"
answer: "Een zelfvernietigende fotokluis wist zijn inhoud zodra aan een voorwaarde is voldaan. De twee gangbare triggers zijn te veel foute pogingen en een speciale dwangcode. Wissen na foute pogingen kan iedereen veroorzaken; een dwangcode alleen jij. Velcrypt gebruikt een dwangpatroon dat een lokkluis opent en alle andere kluizen definitief verwijdert. Wissen is niet terug te draaien, dus houd een back-up."
keyFacts:
  - "Zelfvernietigingsfuncties wissen kluisinhoud zodra aan een voorwaarde is voldaan; dat is niet terug te draaien."
  - "Wissen na foute pogingen kan iedereen veroorzaken die slecht raadt, ook een kind of een aanvaller."
  - "Een dwangcode zet alleen jij bewust in gang, en die kan stil werken."
  - "De iPhone zelf kan alle gegevens wissen na 10 mislukte toegangscodepogingen, als je dat aanzet."
  - "Het dwangpatroon van Velcrypt opent een lokkluis en verwijdert definitief alle andere kluizen (Premium)."
  - "Een eerder gemaakt versleuteld back-upbestand is de enige weg terug na zelfvernietiging."
primaryKeyword: "zelfvernietigende fotokluis iphone"
keywords: ["fotokluis die zichzelf wist", "zelfvernietigende kluis app", "fotokluis wissen na foute pogingen", "fotokluis automatisch wissen", "paniekknop foto's wissen iphone"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Wissen na foute pogingen tegenover dwangpatronen, de echte prijs van onomkeerbaar wissen en hoe je eerst een veilige back-up maakt."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "Bestaat er een fotokluis voor de iPhone die zichzelf wist?"
    a: "Ja. Sommige kluis-apps wissen hun inhoud na een aantal foute pogingen, en sommige bieden een dwang- of paniekcode. Velcrypt heeft een dwangpatroon (Premium) dat een lokkluis opent en alle andere kluizen op de iPhone definitief verwijdert."
  - q: "Verwijdert Velcrypt kluizen na te veel foute patronen?"
    a: "Nee. In Velcrypt opent een patroon dat de app nog niet kent gewoon een nieuwe, lege kluis, dus er is geen ‘foute poging’ om te tellen. Er wordt alleen iets verwijderd als iemand het dwangpatroon tekent dat jij hebt ingesteld."
  - q: "Kan ik foto's terughalen nadat een kluis zichzelf heeft vernietigd?"
    a: "Niet vanaf de telefoon. In Velcrypt is de enige weg terug een versleuteld back-upbestand dat je eerder via Instellingen → Back-up hebt gemaakt en buiten de app hebt bewaard. Het dwangpatroon komt niet aan back-upbestanden die ergens anders staan."
  - q: "Is een zelfvernietigingsfunctie hetzelfde als veilig wissen?"
    a: "Niet helemaal. Flashopslag garandeert niet dat verwijderde bytes fysiek worden gewist. De kluisgegevens van Velcrypt zijn versleuteld met AES-256-GCM en de sleutels worden met de kluizen verwijderd, dus wat achterblijft is onleesbare versleutelde data."
  - q: "Mag ik een zelfvernietigende kluis gebruiken als de politie mijn telefoon wil zien?"
    a: "Nee. Gebruik geen enkele wisfunctie om bewijs te vernietigen of een wettige eis te negeren. Wetten verschillen per land, en gegevens verwijderen na een wettelijke eis kan zelf strafbaar zijn. Vraag in plaats daarvan juridisch advies."
---

‘Een kluis die zichzelf wist’ klinkt als de ultieme bescherming. Soms is dat ook zo. Maar een zelfvernietigingsfunctie is ook de enige functie in een kluis-app die je in één seconde alles kan kosten. Deze gids legt uit hoe de gangbare aanpakken werken, waar elk goed en slecht in is, en hoe je er een gebruikt zonder bestanden kwijt te raken die je wilde houden.

## Wat ‘zelfvernietiging’ betekent in een fotokluis

Een zelfvernietigingsfunctie wist een deel of alles van de inhoud van een kluis zodra aan een voorwaarde is voldaan. Op de iPhone kom je vooral drie soorten tegen:

1. **Wissen na foute pogingen:** na een ingesteld aantal foute pincodes of wachtwoorden wist de app zijn inhoud.
2. **Dwang- of paniekcode:** een speciale code die onschuldige inhoud opent en de rest wist. [Noodwachtwoorden uitgelegd](id:duress-password-explained) geeft de achtergrond.
3. **Wissen op toestelniveau:** iOS kan de hele iPhone wissen na 10 mislukte toegangscodepogingen (Instellingen › Face ID en toegangscode › Wis gegevens), en met Zoek mijn kun je een verloren telefoon op afstand wissen.

Ze lossen verschillende problemen op, en ze falen op verschillende manieren.

## Wissen na foute pogingen

Het idee is simpel: blijft iemand raden, wis dan alles voordat hij geluk heeft.

**Waar het goed in is**

- Het werkt ook als jij er niet bij bent, bijvoorbeeld als je telefoon is gestolen.
- Het legt een harde grens op het raden van korte pincodes.

**Waar het tekortschiet**

- **Iedereen kan het veroorzaken.** Een kind dat met je telefoon speelt, een vriend die grappig wil doen of een aanvaller die je bestanden liever vernietigt dan opgeeft: allemaal kunnen ze het met opzet of per ongeluk in gang zetten.
- **Het is zichtbaar.** Na het wissen is de kluis overduidelijk leeg of gereset, en dat vertelt de ander dat er iets is gebeurd.
- **Het beschermt tegen raden, niet tegen dwang.** Dwingt iemand je de juiste code in te voeren, dan komt een teller voor foute pogingen nooit in actie.

Het is ook de moeite waard na te gaan hoe de app pogingen telt: of de teller het herstarten van de app overleeft, en of hij echt gegevens verwijdert of je alleen buitensluit.

## Dwangcodes en dwangpatronen

Een dwangcode zet jij bewust in gang, meestal als iemand je dwingt de app te ontgrendelen. De beste uitvoeringen openen een geloofwaardige lokruimte en wissen ongemerkt de gevoelige inhoud erachter.

**Waar het goed in is**

- **Alleen jij kunt het in gang zetten.** Niemand veroorzaakt het door te raden.
- **Het kan stil werken.** Is het goed gedaan, dan laat niets op het scherm zien dat er iets is verwijderd.
- **Het is gemaakt voor dwang,** precies de situatie die een teller voor foute pogingen niet aankan.

**Waar het tekortschiet**

- **Je moet het kunnen gebruiken.** Pakt iemand de telefoon af terwijl die al ontgrendeld is, of ziet hij je je echte geheim invoeren, dan helpt het niet.
- **Je moet het onder stress onthouden,** en het niet verwarren met je echte geheim.
- **Het is net zo onomkeerbaar** als elke andere wisfunctie.

## Hoe Velcrypt het doet

Velcrypt heeft bewust **geen wissen na foute pogingen**. Elk patroon dat je op het raster van 5×5 tekent, opent een eigen kluis, en een patroon dat de app nog niet kent, opent gewoon een nieuwe, lege kluis zonder foutmelding. Er is geen ‘fout patroon’ om te tellen. Dat maakt [verborgen kluizen](id:hidden-vaults) ontkenbaar, en het betekent ook dat niemand je kluizen kan wissen door slecht te raden.

In plaats daarvan heeft Velcrypt een [dwangpatroon](id:duress-pattern), onderdeel van Premium (in de app: Noodpatroon):

- Je stelt het in via Instellingen → Noodpatroon, vanuit een [lokkluis](id:what-is-a-decoy-vault) met onschuldige inhoud.
- Je tekent twee keer een apart patroon en bevestigt. Het mag geen patroon zijn dat al een kluis opent.
- Op het vergrendelscherm opent het de lokkluis en verwijdert het ongemerkt en definitief alle andere kluizen op die iPhone. Het ontgrendelen ziet er hetzelfde uit en duurt even lang als normaal.
- De app laat nooit zien of er een dwangpatroon is ingesteld. Er is er één per iPhone; een nieuw vervangt het oude. Uitzetten doe je door het te tekenen, en dat verwijdert niets.
- Het blijft werken als Premium afloopt; alleen het instellen vraagt om Premium.
- Stel je het in de enige kluis op de telefoon in, dan valt er niets anders te verwijderen, en de app waarschuwt je.

## De aanpakken vergeleken

| | Wissen na foute pogingen | Dwangcode of dwangpatroon | ‘Wis gegevens’ op de iPhone |
|---|---|---|---|
| Wie het kan veroorzaken | Iedereen die vaak genoeg fout raadt | Alleen wie het dwanggeheim kent | Iedereen die 10 keer de verkeerde toegangscode invoert |
| Gemaakt voor | Raden, diefstal | Gedwongen ontgrendelen | Raden, diefstal |
| Zichtbaar achteraf | Meestal | Kan stil zijn | Ja, de telefoon is gereset |
| Wat het wist | De inhoud van de app | Hangt van de app af; in Velcrypt elke kluis behalve de lokkluis | Alles op de iPhone |
| Terug te draaien | Alleen uit een back-up | Alleen uit een back-up | Alleen uit een back-up |

## De afweging die je niet kunt ontlopen: het is definitief

Elke zelfvernietigingsfunctie ruilt herstelbaarheid in voor bescherming. Wees eerlijk tegen jezelf over drie dingen voordat je er een aanzet.

### Je hebt ergens anders een back-up nodig

Velcrypt-kluizen zitten niet in iCloud- of computerback-ups, dus een verwijderde kluis is weg van de telefoon. De enige weg terug is een **versleuteld back-upbestand dat je eerder hebt gemaakt**. In Velcrypt maakt Instellingen → Back-up een .velcrypt-bestand van de geopende kluis, beveiligd met een back-upwachtwoord dat je zelf kiest. Dat is gratis. Bewaar het buiten de app, bijvoorbeeld in Bestanden, iCloud Drive of op een computer, dan raakt het dwangpatroon het niet aan. Bewaar ook het back-upwachtwoord goed: een vergeten back-upwachtwoord is niet te herstellen. Zie de [beveiligingspagina](id:security#encrypted-backup) voor hoe back-ups beschermd zijn.

### Verwijderd is niet altijd fysiek gewist

Flashopslag garandeert niet dat verwijderde bytes meteen fysiek worden gewist. Wat je beschermt, is versleuteling: de kluisgegevens van Velcrypt zijn versleuteld met AES-256-GCM, en de sleutels worden samen met de kluismappen verwijderd, zodat wat achterblijft versleutelde data zonder sleutel is. Wees op je hoede voor apps die meer beloven dan dat.

### Het wist alleen wat in de app staat

Originelen die nog in Foto's, Recent verwijderd, iCloud, chats of op een ander toestel staan, blijven onaangeroerd. [Verwijder originelen na het importeren](id:delete-original-photos-after-import).

## Gebruik het verantwoord

Een zelfvernietigingsfunctie is een hulpmiddel voor persoonlijke veiligheid en privacy. Gebruik het nooit om bewijs te vernietigen of om een wettige eis van politie, grensambtenaren of een rechter te omzeilen. Wetten verschillen per land, en gegevens verwijderen na een wettelijke eis kan zelf strafbaar zijn. Zit je in die situatie, of verwacht je dat, vraag dan juridisch advies.

## Moet je voor een zelfvernietigende kluis kiezen?

Kies er een als gedwongen worden je kluis te openen voor jou een reëel risico is en je de bestanden liever kwijt bent dan dat iemand ze ziet. Sla het over, of wacht tot je een back-up hebt, als de bestanden onvervangbaar zijn.

Welke app je ook kiest, ga na hoe de zelfvernietigingsfunctie wordt geactiveerd, of die zichtbaar is en wat hij echt wist. Onze [checklist voor veilige fotokluizen](id:are-photo-vault-apps-safe) helpt daarbij. Kies je Velcrypt, dan loopt [een lokkluis en dwangpatroon instellen](id:set-up-decoy-vault-and-duress-pattern) de instelling door met eerst een back-up, en staan de Premium-abonnementen bij [prijzen](id:pricing).
