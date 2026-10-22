---
pageId: faq
title: "Veelgestelde vragen over Velcrypt: kluizen en patronen"
description: "Antwoorden op veelgestelde vragen over Velcrypt: patroonkluizen, versleuteling, back-ups, privacy, prijzen en op welke iPhones de app werkt."
h1: "Veelgestelde vragen over Velcrypt"
navTitle: "Veelgestelde vragen"
answer: "Velcrypt is een iPhone-app (iOS 17 of nieuwer) die foto’s, video’s en documenten in versleutelde kluizen op je apparaat bewaart. Elke kluis opent met een eigen patroon, er is geen account en er wordt niets geüpload — wat ook betekent dat een vergeten patroon niet kan worden hersteld. Een versleuteld back-upbestand beschermt je tegen een verloren telefoon."
keyFacts:
  - "iPhone-app, iOS 17 of nieuwer."
  - "Elk patroon opent een eigen kluis; onbekende patronen openen een lege."
  - "AES-256-GCM-versleuteling, alleen op het apparaat, geen account."
  - "Geen herstel bij een vergeten patroon; gratis versleutelde back-up tegen een verloren telefoon."
  - "Gratis: 1 kluis, tot 50 onderdelen. Premium vanaf $ 1,99 per week (USD)."
primaryKeyword: "velcrypt veelgestelde vragen"
keywords: ["velcrypt vragen", "hoe werkt velcrypt", "fotokluis app vragen", "velcrypt patroon hulp", "velcrypt back-up"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "De basis"
    items:
      - q: "Wat is Velcrypt?"
        a: "Velcrypt is een iPhone-app die privéfoto’s, video’s en documenten in versleutelde kluizen op je apparaat bewaart. Je opent een kluis door een patroon te tekenen op een raster van 5×5 stippen."
      - q: "Wat kan ik in Velcrypt bewaren?"
        a: "Foto’s en video’s uit je fotobibliotheek of van de camera in de kluis, documenten uit de app Bestanden en beveiligde tekstnotities. In een kluis kun je items in albums ordenen, foto’s en video’s bekijken met zoomen en vegen, en items veilig verplaatsen of exporteren."
      - q: "Verdwijnt een foto uit mijn fotobibliotheek als ik hem in Velcrypt importeer?"
        a: "Nee. Importeren maakt een versleutelde kopie, en het origineel blijft in Foto’s tot je het verwijdert. Leeg na het verwijderen ook Recent verwijderd, waar items anders nog ongeveer 30 dagen blijven staan."
      - q: "Heeft Velcrypt een ingebouwde camera?"
        a: "Ja. De camera in de kluis bewaart foto’s en video’s rechtstreeks en versleuteld in de geopende kluis. Ze komen nooit in je fotobibliotheek terecht."
      - q: "Is Velcrypt hetzelfde als het album Verborgen op de iPhone?"
        a: "Nee. Het album Verborgen haalt foto’s alleen uit het hoofdoverzicht van je bibliotheek en opent met Face ID of je toegangscode. Velcrypt versleutelt bestanden met een sleutel die is afgeleid van een apart patroon, niet van de toegangscode van je toestel."
  - title: "Patroon en kluizen"
    items:
      - q: "Wanneer is een patroon in Velcrypt geldig?"
        a: "Eén doorlopende lijn door minstens 6 stippen op het raster van 5×5, met minstens één richtingsverandering. Langere patronen van 8–12 stippen worden aanbevolen."
      - q: "Hoe maak ik een tweede kluis?"
        a: "Met Premium teken je een nieuw patroon dat je nog niet eerder hebt gebruikt. Elk patroon is een eigen kluis, dus een nieuw patroon opent een nieuwe, lege kluis die je kunt gaan vullen. De gratis versie heeft één kluis."
      - q: "Waarom opende mijn patroon een lege kluis?"
        a: "Waarschijnlijk heb je een net iets ander patroon getekend, en dat ziet Velcrypt als een andere kluis. Probeer het rustig opnieuw; de app toont bewust nooit een melding ‘verkeerd patroon’."
      - q: "Kan ik een lijst van mijn kluizen zien?"
        a: "Nee. Velcrypt houdt geen lijst van kluizen bij, dus niets in de app verraadt hoeveel er zijn. Je moet elk patroon zelf onthouden."
      - q: "Wat is een lokkluis?"
        a: "Een lokkluis is een gewoon ogende kluis met onschuldige inhoud die je kunt openen als iemand je onder druk zet, terwijl je privékluis achter een ander patroon blijft. Niets in Velcrypt bewijst dat de tweede kluis bestaat. Voor een tweede kluis heb je Premium nodig."
      - q: "Wat is het dwangpatroon?"
        a: "Een Premium-functie die je vanuit een lokkluis instelt via Instellingen → Noodpatroon. Teken je het op het vergrendelscherm, dan opent het die lokkluis en verwijdert het ongemerkt en definitief alle andere kluizen op de iPhone. Verwijderde kluizen zijn alleen terug te zetten uit een versleuteld back-upbestand dat je eerder hebt gemaakt."
      - q: "Kan ik items in een kluis ordenen?"
        a: "Ja. Elke kluis kan albums bevatten, en je kunt meerdere items selecteren en ze binnen die kluis tussen albums verplaatsen."
      - q: "Waarom gebruikt Velcrypt geen Face ID of Touch ID?"
        a: "Bewust. Een gezicht of vinger kan zonder je toestemming worden gebruikt, bijvoorbeeld terwijl je slaapt of onder druk, terwijl een patroon alleen in je geheugen bestaat."
  - title: "Beveiliging en versleuteling"
    items:
      - q: "Hoe versleutelt Velcrypt mijn bestanden?"
        a: "Met AES-256-GCM via Apple CryptoKit. Elke kluis heeft een eigen willekeurige 256-bits hoofdsleutel, en elk bestand krijgt een eigen sleutel die met HKDF wordt afgeleid."
      - q: "Hoe wordt mijn patroon een sleutel?"
        a: "Velcrypt haalt het patroon door PBKDF2-HMAC-SHA512 met minstens 600.000 iteraties en een willekeurige salt die uniek is voor je apparaat en in de iOS-sleutelhanger staat. Het patroon zelf wordt nooit opgeslagen."
      - q: "Gebruikt Velcrypt iOS-gegevensbescherming?"
        a: "Ja. Kluisbestanden gebruiken de klasse ‘volledige bescherming’, zodat iOS ze versleuteld houdt zodra de iPhone vergrendeld is, bovenop de eigen versleuteling van Velcrypt."
      - q: "Vergrendelt Velcrypt automatisch?"
        a: "Ja. De app vergrendelt wanneer hij naar de achtergrond gaat, na een vertraging die je kunt instellen, en kluisinhoud is verborgen in de appkiezer."
      - q: "Is Velcrypt geaudit op beveiliging?"
        a: "Er heeft nog geen onafhankelijke audit plaatsgevonden. Velcrypt gebruikt standaardalgoritmen en Apple CryptoKit, en we zouden een externe review toejuichen."
      - q: "Waartegen kan Velcrypt niet beschermen?"
        a: "Iemand die meekijkt terwijl je je patroon tekent, gedwongen ontgrendelen, een telefoon die met open kluis wordt doorgegeven, malware op een gecompromitteerd of gejailbreakt apparaat, foto’s van je scherm en kopieën die nog elders bestaan. De beveiligingspagina noemt al deze grenzen."
  - title: "Back-up en herstel"
    items:
      - q: "Wat gebeurt er als ik mijn Velcrypt-patroon vergeet?"
        a: "Dan kan de kluis niet meer worden geopend. Velcrypt slaat je patroon en sleutels nooit op, dus jij noch Velcrypt kan hem herstellen."
      - q: "Zit mijn kluis in mijn iCloud-back-up?"
        a: "Nee. Kluisgegevens zijn uitgesloten van iCloud-back-ups, zodat versleutelde bestanden je apparaat niet vanzelf verlaten. Maak via Instellingen → Back-up een versleuteld back-upbestand om je te beschermen tegen een verloren telefoon."
      - q: "Zit mijn kluis in een back-up via Finder of iTunes?"
        a: "Nee. Kluisgegevens zijn ook uitgesloten van computerback-ups. Het eigen versleutelde back-upbestand van Velcrypt is de manier om een kopie van een kluis te bewaren."
      - q: "Wat gebeurt er met mijn kluizen als ik een nieuwe iPhone neem?"
        a: "Kluizen gaan niet vanzelf mee. Maak via Instellingen → Back-up een versleutelde back-up van elke kluis, bewaar het .velcrypt-bestand in Bestanden, iCloud Drive of op een computer, en zet het met je back-upwachtwoord terug op de nieuwe iPhone."
      - q: "Heeft Velcrypt een versleutelde back-up?"
        a: "Ja, en die is gratis. Via Instellingen → Back-up maak je een versleuteld .velcrypt-bestand van de geopende kluis, beveiligd met een back-upwachtwoord dat je zelf kiest. Je bewaart het bestand waar je wilt en zet het terug op elke iPhone."
      - q: "Wat als ik mijn back-upwachtwoord vergeet?"
        a: "Dan kan de back-up niet worden teruggezet. Net als je patroon wordt het back-upwachtwoord nergens opgeslagen of heen gestuurd, dus jij noch Velcrypt kan het herstellen."
      - q: "Kan de support van Velcrypt mijn patroon resetten?"
        a: "Nee. Support heeft geen toegang tot je kluizen, patronen of sleutels, dus aan onze kant valt er niets te resetten."
  - title: "Privacy"
    items:
      - q: "Heb ik een account nodig voor Velcrypt?"
        a: "Nee. Er is geen registratie, geen e-mailadres en geen login. Je installeert de app en tekent een patroon."
      - q: "Uploadt Velcrypt mijn foto’s?"
        a: "Nee. Velcrypt heeft geen servers voor je inhoud, en kluisbestanden verlaten je iPhone niet, tenzij je ze zelf exporteert of een back-upbestand bewaart."
      - q: "Verzamelt Velcrypt analysegegevens?"
        a: "Velcrypt verzamelt geen analysegegevens over kluisinhoud. Als je in de iOS-instellingen hebt gekozen om analysegegevens met app-ontwikkelaars te delen, kan Apple crash- en diagnosegegevens met ons delen."
      - q: "Kunnen anderen zien dat ik Velcrypt gebruik?"
        a: "Het app-symbool is zichtbaar op je beginscherm, en forensische tools kunnen mogelijk zien dat Velcrypt versleutelde gegevens bevat en ongeveer hoeveel. Velcrypt verbergt het aantal kluizen en hun inhoud, niet zijn eigen bestaan."
      - q: "Toont Velcrypt advertenties of verkoopt het gegevens?"
        a: "Nee. Velcrypt heeft geen advertenties en verkoopt geen gegevens. Het verzamelt je inhoud om te beginnen al niet."
  - title: "Prijzen en beschikbaarheid"
    items:
      - q: "Is Velcrypt gratis?"
        a: "Ja. De gratis versie heeft één kluis met tot 50 onderdelen, volledige versleuteling en versleutelde back-up. Premium is optioneel: $ 1,99 per week, $ 19,99 per jaar met 3 dagen gratis proberen, of eenmalig $ 39,99 voor altijd (USD; prijzen verschillen per land)."
      - q: "Wat zit er in Premium?"
        a: "Onbeperkt onderdelen, meer kluizen (elk extra patroon opent een eigen kluis), het dwangpatroon en alternatieve appsymbolen. Abonnementen worden automatisch verlengd tot je ze opzegt in de instellingen van je Apple Account."
      - q: "Waar kan ik Velcrypt krijgen?"
        a: "Velcrypt is een iPhone-app die via de App Store wordt verspreid. Kijk bij de App Store-knop op deze site voor de actuele beschikbaarheid."
      - q: "Wie handelt betalingen af?"
        a: "Apple handelt alle aankopen af via de App Store. Velcrypt ziet je betaalgegevens nooit."
  - title: "Compatibiliteit"
    items:
      - q: "Welke iOS-versie heeft Velcrypt nodig?"
        a: "Velcrypt vereist iOS 17 of nieuwer op de iPhone."
      - q: "Is er een Velcrypt-app voor iPad, Mac of Android?"
        a: "Nee. Velcrypt is alleen een iPhone-app, en er is geen webversie."
      - q: "Synchroniseert Velcrypt tussen apparaten?"
        a: "Nee. Er is geen cloudsynchronisatie; elke kluis staat op de iPhone waarop hij is gemaakt. Je kunt een kluis naar een andere iPhone verhuizen door een versleuteld back-upbestand terug te zetten."
      - q: "Kan ik documenten importeren uit de app Bestanden?"
        a: "Ja. Je kunt documenten uit de app Bestanden in elke kluis importeren, naast foto’s en video’s."
---

Dit zijn de vragen die mensen het vaakst over Velcrypt stellen, gegroepeerd per onderwerp. Elk antwoord staat op zichzelf, dus je kunt meteen naar het deel springen dat je nodig hebt.

Wil je het volledige technische plaatje, dan legt de pagina over het [beveiligingsmodel](id:security) uit hoe je patroon een sleutel wordt en hoe bestanden worden versleuteld, samen met de dingen waartegen Velcrypt niet kan beschermen. Wat er in elke versie zit, zie je bij [prijzen](id:pricing). Denk je dat je geen toegang meer hebt tot een kluis, lees dan eerst [kluispatroon vergeten](id:forgot-vault-pattern) voordat je iets anders probeert — en onthoud dat een onbekend patroon gewoon een nieuwe, lege kluis opent in plaats van een foutmelding.

Staat je vraag er niet bij? [Neem contact op met support](id:support) en we helpen waar we kunnen. We beantwoorden vragen over hoe de app werkt, maar we kunnen nooit een kluis voor je openen, resetten of herstellen.
