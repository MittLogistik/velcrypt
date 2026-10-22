---
pageId: set-up-decoy-vault-and-duress-pattern
title: "Een lokkluis en dwangpatroon instellen"
description: "Stap voor stap: maak een back-up van je echte kluis, bouw een geloofwaardige lokkluis en stel een dwangpatroon in. Plus testen, wijzigen en uitzetten."
h1: "Een lokkluis en dwangpatroon instellen in Velcrypt"
navTitle: "Lokkluis en dwangpatroon instellen"
answer: "Maak eerst een back-up van je echte kluis via Instellingen → Back-up. Teken daarna, met Premium, een nieuw patroon om een lokkluis te maken en vul die met onschuldige inhoud. Open vanuit de lokkluis Instellingen → Noodpatroon, teken twee keer een apart patroon en bevestig. Teken je dat patroon op het vergrendelscherm, dan opent het de lokkluis en verwijdert het definitief alle andere kluizen."
keyFacts:
  - "Begin met een versleutelde back-up van je echte kluis; die is de enige weg terug nadat het dwangpatroon is gebruikt."
  - "Een lokkluis is een tweede patroon met onschuldige, geloofwaardige inhoud; die vraagt om Premium."
  - "Stel het dwangpatroon in vanuit de lokkluis, via Instellingen → Noodpatroon."
  - "Het dwangpatroon moet nieuw zijn: het mag geen patroon zijn dat een kluis opent."
  - "Test het nooit op het vergrendelscherm; oefen in je hoofd."
  - "Eén dwangpatroon per iPhone; een nieuw vervangt het oude, en uitzetten verwijdert niets."
primaryKeyword: "lokkluis instellen"
keywords: ["dwangpatroon instellen", "velcrypt noodpatroon instellen", "lokkluis maken iphone", "nepkluis maken", "dwangpatroon hoe werkt het"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Eerst een back-up, dan een geloofwaardige lokkluis en daarna een dwangpatroon in Velcrypt, met tips om te oefenen, te wijzigen en uit te zetten."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Een lokkluis en dwangpatroon instellen in Velcrypt"
  steps:
    - name: "Maak een back-up van je echte kluis"
      text: "Open je echte kluis, ga naar Instellingen → Back-up → Maak een back-up van deze kluis, kies een back-upwachtwoord van minstens 8 tekens en bewaar het .velcrypt-bestand buiten de app, bijvoorbeeld in iCloud Drive of op een computer."
    - name: "Maak een lokkluis"
      text: "Vergrendel met Premium de app en teken een nieuw patroon dat je nog nooit hebt gebruikt. Velcrypt opent er een nieuwe, lege kluis voor."
    - name: "Maak de lokkluis geloofwaardig"
      text: "Importeer een paar dozijn onschuldige, alledaagse onderdelen, zoals bonnetjes, scans van je identiteitsbewijs of cadeau-ideeën, in een paar albums."
    - name: "Open Instellingen → Noodpatroon in de lokkluis"
      text: "Ga terwijl de lokkluis open is naar Instellingen → Noodpatroon en tik op Stel noodpatroon in."
    - name: "Teken het dwangpatroon twee keer en bevestig"
      text: "Teken een apart patroon dat geen kluis opent, teken het nog een keer ter bevestiging, lees de waarschuwing en tik op Schakel in."
    - name: "Oefen zonder het in gang te zetten"
      text: "Oefen het dwangpatroon in je hoofd of op papier dat je daarna vernietigt, nooit op het vergrendelscherm."
faq:
  - q: "Heb ik Premium nodig voor een lokkluis en dwangpatroon?"
    a: "Ja. De gratis versie heeft één kluis, en een lokkluis is een tweede kluis. Het dwangpatroon hoort ook bij Premium. Is het eenmaal ingesteld, dan blijft het werken, ook als Premium afloopt."
  - q: "Waarom heb ik eerst een back-up nodig?"
    a: "Omdat het dwangpatroon elke kluis behalve de lokkluis definitief verwijdert, en kluisgegevens niet in iCloud- of computerback-ups zitten. Een versleuteld back-upbestand dat je buiten de app hebt bewaard, is de enige manier om een verwijderde kluis terug te krijgen."
  - q: "Kan ik het dwangpatroon testen?"
    a: "Niet op het vergrendelscherm: daar tekenen verwijdert je andere kluizen echt. Oefen het in je hoofd. Je kunt nagaan of je het nog weet via Instellingen → Noodpatroon → Schakel noodpatroon uit, maar daar tekenen zet het uit, dus dan moet je het opnieuw instellen."
  - q: "Kan ik meer dan één dwangpatroon hebben?"
    a: "Nee. Er is één dwangpatroon per iPhone. Een nieuw instellen, vanuit welke lokkluis ook, vervangt het oude."
  - q: "Hoe krijg ik mijn echte kluis terug nadat het dwangpatroon is gebruikt?"
    a: "Teken je echte patroon; dat opent nu een nieuwe, lege kluis. Ga dan naar Instellingen → Back-up → Zet back-up terug, kies je .velcrypt-bestand en voer het back-upwachtwoord in."
---

Deze gids loopt de volledige instelling in Velcrypt door: een back-up van je echte kluis, een geloofwaardige lokkluis en een [dwangpatroon](id:duress-pattern) dat de lokkluis opent en ongemerkt alle andere kluizen op de iPhone verwijdert. Het kost ongeveer 15 minuten, en de meeste tijd gaat zitten in het echt laten lijken van de lokkluis.

In de app heet het dwangpatroon **Noodpatroon**; die naam zie je terug in de menu's hieronder.

Eerst een korte herinnering aan wat het dwangpatroon doet. Tekent iemand het op het vergrendelscherm, dan opent Velcrypt de lokkluis en **verwijdert het op hetzelfde moment definitief alle andere kluizen op die iPhone**. Het ontgrendelen ziet er hetzelfde uit en duurt even lang als normaal, en niets op het scherm laat zien wat er is gebeurd. Dat is precies de bedoeling, en daarom is de eerste stap een back-up.

## Wat je nodig hebt

- **Velcrypt Premium.** De gratis versie heeft één kluis met tot 50 onderdelen. Een lokkluis is een tweede kluis, en het dwangpatroon is een Premium-functie. Zie [prijzen](id:pricing).
- **Een veilige plek voor een back-upbestand**, buiten de app: iCloud Drive, Bestanden op een ander apparaat of een computer.
- **Drie patronen die je uit elkaar kunt houden:** je echte, de lokkluis en het dwangpatroon.

## Stap 1: Maak een back-up van je echte kluis

Kluisgegevens zitten niet in iCloud- of computerback-ups. Wordt het dwangpatroon ooit gebruikt, dan krijg je je echte kluis alleen terug met een versleuteld back-upbestand dat je vooraf hebt gemaakt.

1. Teken je echte patroon om je echte kluis te openen.
2. Ga naar **Instellingen → Back-up → Maak een back-up van deze kluis**.
3. Kies een back-upwachtwoord van minstens 8 tekens, voer het twee keer in en tik op **Maak back-up**.
4. Tik op **Bewaar back-up…** en bewaar het .velcrypt-bestand ergens anders dan op deze iPhone.

Goed om te weten:

- **Back-up is gratis** en geldt voor de kluis die open is. Heb je meerdere privékluizen, maak dan van elk een back-up.
- **Het dwangpatroon komt niet aan back-upbestanden** die buiten de app staan.
- **Bewaar het back-upwachtwoord goed.** Een vergeten back-upwachtwoord is niet te herstellen, niet door jou en niet door Velcrypt.
- **Denk na over wie bij het bestand kan.** Kan de persoon om wie je je zorgen maakt in je iCloud Drive of op je computer kijken, kies dan een andere plek. Het bestand is versleuteld, maar het bestaan ervan laat zien dat er een kluis is om terug te zetten.

Herhaal de back-up af en toe, want hij bevat alleen wat er in de kluis stond toen je hem maakte.

## Stap 2: Maak de lokkluis

In Velcrypt is elk patroon een eigen kluis, en een patroon dat de app nog nooit heeft gezien, opent een nieuwe, lege kluis. Een lokkluis maken is dus gewoon een nieuw patroon tekenen.

1. Vergrendel de app.
2. Teken een nieuw patroon: één doorlopende lijn door minstens 6 stippen op het raster van 5×5, met minstens één richtingsverandering. Maak het duidelijk anders dan je echte patroon, qua vorm en beginpunt.
3. Velcrypt opent een nieuwe, lege kluis. Dat is je lokkluis.

De pagina over het [patroonslot](id:pattern-lock) legt uit wat een patroon sterk maakt, en de gratis [patroonsterktetest](id:pattern-strength-checker) helpt je ideeën te vergelijken. Test je echte patronen nooit op een website.

## Stap 3: Maak de lokkluis geloofwaardig

Een lege kluis is verdacht. Een lokkluis werkt als iemand ernaar kijkt en denkt: ‘O, alleen dat.’

- **Geef hem een reden van bestaan:** kopieën van je identiteitsbewijs en verzekeringspasjes, bonnetjes en garantiebewijzen, screenshots van boekingen, cadeau-ideeën.
- **Importeer een paar dozijn echte onderdelen** in een paar albums.
- **Houd hem actueel.** Voeg om de paar weken iets toe, zodat het nieuwste onderdeel niet maanden oud is.

Velcrypt vraagt je ook iets toe te voegen voordat een kluis een dwangpatroon kan krijgen, omdat het dwangpatroon deze kluis opent. [Wat is een lokkluis?](id:what-is-a-decoy-vault) heeft meer ideeën en legt uit wat een lokkluis verraadt.

## Stap 4: Stel het dwangpatroon in

Doe dit vanuit de lokkluis. Het dwangpatroon opent altijd de kluis waarin het is ingesteld.

1. Ga met de lokkluis open naar **Instellingen → Noodpatroon**.
2. Lees de drie korte uitleggen en tik op **Stel noodpatroon in**.
3. **Teken een dwangpatroon.** Het moet een nieuw patroon zijn dat geen kluis opent; doet het dat wel, dan vraagt Velcrypt je een ander te kiezen.
4. **Teken het nog een keer ter bevestiging.**
5. Lees de waarschuwing dat het tekenen op het vergrendelscherm deze kluis opent en alle andere kluizen op deze iPhone definitief verwijdert, en tik op **Schakel in**.

Is de lokkluis de enige kluis op de iPhone, dan waarschuwt Velcrypt je dat het dwangpatroon niets zou verwijderen. Maak dan eerst de lokkluis met een ander patroon dan je echte kluis.

### Het dwangpatroon kiezen

- Maak het **makkelijk te tekenen onder stress**, vloeiend en zonder aarzelen.
- Maak het **onmogelijk te verwarren met je echte patroon**. Teken je het dwangpatroon per ongeluk, dan verwijder je je echte kluis.
- Overweeg het **ongeveer even veel moeite** te laten kosten als je echte, zodat het tekenen er voor een toeschouwer niet anders uitziet.

## Stap 5: Oefen, zonder het in gang te zetten

Test het dwangpatroon nooit op het vergrendelscherm. Dat is geen test; het verwijdert je andere kluizen echt.

Oefen het in plaats daarvan in je hoofd, trek het met je vinger na op een oppervlak, of schets het op papier dat je daarna vernietigt. Oefen tot je zowel de lokkluis als het dwangpatroon zonder nadenken kunt tekenen, ook als er iemand meekijkt.

## Leven met een dwangpatroon

- **Niets laat zien dat het is ingesteld.** Velcrypt toont nooit of er een dwangpatroon bestaat. Achter de schermen staat er altijd een versleuteld record van vaste grootte in de iOS-sleutelhanger, met willekeurige bytes als er geen is ingesteld.
- **Eén per iPhone.** Een nieuw dwangpatroon instellen vervangt het oude.
- **Uitzetten:** ga naar **Instellingen → Noodpatroon → Schakel noodpatroon uit** en teken het. Daar tekenen zet het alleen uit; er wordt niets verwijderd.
- **Loopt Premium af,** dan blijft het dwangpatroon werken. Alleen het instellen vraagt om Premium.

## Als het dwangpatroon ooit is gebruikt

Je andere kluizen zijn weg van die iPhone. Zo zet je er een terug:

1. Teken je echte patroon. Dat opent nu een nieuwe, lege kluis.
2. Ga naar **Instellingen → Back-up → Zet back-up terug**.
3. Kies je .velcrypt-bestand en voer het back-upwachtwoord in.

Doe dit alleen als het veilig is. Is de persoon die je dwong de telefoon te ontgrendelen nog in de buurt, dan kan het meteen terugzetten van de kluis de reden tenietdoen waarom je het dwangpatroon gebruikte.

## Grenzen om in gedachten te houden

- **Kopieën buiten Velcrypt blijven bestaan.** Verwijder originelen uit Foto's en Recent verwijderd na het importeren; zie [originelen verwijderen na het importeren](id:delete-original-photos-after-import).
- **Flashopslag garandeert geen fysiek wissen.** Kluisgegevens zijn versleuteld met AES-256-GCM en de sleutels worden met de kluismappen verwijderd, dus wat achterblijft is onleesbaar.
- **Het houdt niemand tegen die je je echte patroon heeft zien tekenen.**
- **Het is een hulpmiddel voor persoonlijke veiligheid.** Gebruik het nooit om bewijs te vernietigen of om een wettige eis van politie, grensambtenaren of een rechter te negeren. Wetten verschillen per land, en gegevens verwijderen na een wettelijke eis kan zelf strafbaar zijn; vraag juridisch advies als dat op jou van toepassing is.

Stel je dit in vanwege een bepaalde persoon, dan bespreekt [wat je doet als iemand je dwingt je telefoon te ontgrendelen](id:forced-to-unlock-phone) het bredere veiligheidsplaatje. Ben je bang een patroon te vergeten, lees dan eerst [patroon van je kluis vergeten](id:forgot-vault-pattern).
