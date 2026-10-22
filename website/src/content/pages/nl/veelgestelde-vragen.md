---
pageId: faq
title: "Veelgestelde vragen over Velcrypt: kluizen en patronen"
description: "Antwoorden op veelgestelde vragen over Velcrypt: patroonkluizen, versleuteling, back-ups, privacy, prijzen en op welke iPhones de app werkt."
h1: "Veelgestelde vragen over Velcrypt"
navTitle: "Veelgestelde vragen"
answer: "Velcrypt is een iPhone-app (iOS 17 of nieuwer) die foto’s, video’s en documenten in versleutelde kluizen op je apparaat bewaart. Elke kluis opent met een eigen patroon, er is geen account en er wordt niets geüpload — wat ook betekent dat een vergeten patroon niet kan worden hersteld."
keyFacts:
  - "iPhone-app, iOS 17 of nieuwer."
  - "Elk patroon opent een eigen kluis; onbekende patronen openen een lege."
  - "AES-256-GCM-versleuteling, alleen op het apparaat, geen account."
  - "Geen herstel als je het patroon vergeet of de telefoon kwijtraakt."
  - "Gratis versie plus optioneel Premium; prijzen volgen nog."
primaryKeyword: "velcrypt veelgestelde vragen"
keywords: ["velcrypt vragen", "hoe werkt velcrypt", "fotokluis app vragen", "velcrypt patroon hulp", "velcrypt back-up"]
datePublished: 2026-10-21
dateModified: 2026-10-21
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
        a: "Foto’s en video’s uit je fotobibliotheek en documenten uit de app Bestanden. In een kluis kun je items in albums ordenen, foto’s en video’s bekijken met zoomen en vegen, en items veilig verplaatsen of exporteren."
      - q: "Verdwijnt een foto uit mijn fotobibliotheek als ik hem in Velcrypt importeer?"
        a: "Nee. Importeren maakt een versleutelde kopie, en het origineel blijft in Foto’s tot je het verwijdert. Leeg na het verwijderen ook Recent verwijderd, waar items anders nog ongeveer 30 dagen blijven staan."
      - q: "Heeft Velcrypt een ingebouwde camera?"
        a: "Nee. Velcrypt heeft geen camera. Je maakt foto’s met de Camera-app van de iPhone en importeert ze daarna in een kluis."
      - q: "Is Velcrypt hetzelfde als het album Verborgen op de iPhone?"
        a: "Nee. Het album Verborgen haalt foto’s alleen uit het hoofdoverzicht van je bibliotheek en opent met Face ID of je toegangscode. Velcrypt versleutelt bestanden met een sleutel die is afgeleid van een apart patroon, niet van de toegangscode van je toestel."
  - title: "Patroon en kluizen"
    items:
      - q: "Wanneer is een patroon in Velcrypt geldig?"
        a: "Eén doorlopende lijn door minstens 6 stippen op het raster van 5×5, met minstens één richtingsverandering. Langere patronen van 8–12 stippen worden aanbevolen."
      - q: "Hoe maak ik een tweede kluis?"
        a: "Teken een nieuw patroon dat je nog niet eerder hebt gebruikt. Elk patroon is een eigen kluis, dus een nieuw patroon opent een nieuwe, lege kluis die je kunt gaan vullen."
      - q: "Waarom opende mijn patroon een lege kluis?"
        a: "Waarschijnlijk heb je een net iets ander patroon getekend, en dat ziet Velcrypt als een andere kluis. Probeer het rustig opnieuw; de app toont bewust nooit een melding ‘verkeerd patroon’."
      - q: "Kan ik een lijst van mijn kluizen zien?"
        a: "Nee. Velcrypt houdt geen lijst van kluizen bij, dus niets in de app verraadt hoeveel er zijn. Je moet elk patroon zelf onthouden."
      - q: "Wat is een lokkluis?"
        a: "Een lokkluis is een gewoon ogende kluis met onschuldige inhoud die je kunt openen als iemand je onder druk zet, terwijl je privékluis achter een ander patroon blijft. Niets in Velcrypt bewijst dat de tweede kluis bestaat."
      - q: "Wat is het dwangpatroon?"
        a: "Het dwangpatroon is een geplande Premium-functie die binnenkort komt. Als je het tekent, opent het een kluis naar keuze en verwijdert het stilletjes de toegang tot de andere."
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
        a: "Nee. In de eerste versie zijn kluisgegevens uitgesloten van iCloud-back-ups, zodat versleutelde bestanden je apparaat nooit verlaten."
      - q: "Zit mijn kluis in een back-up via Finder of iTunes?"
        a: "Nee. Kluisgegevens zijn in de eerste versie ook uitgesloten van computerback-ups."
      - q: "Wat gebeurt er met mijn kluizen als ik een nieuwe iPhone neem?"
        a: "In de eerste versie gaan kluizen niet mee naar een nieuw apparaat. Exporteer alles wat je wilt houden voordat je overstapt, en bewaar het op een plek die je vertrouwt."
      - q: "Komt er een versleutelde back-up in Velcrypt?"
        a: "Een versleutelde back-upoptie is gepland als onderdeel van Premium. We hebben nog geen datum en beloven er ook geen tot het klaar is."
      - q: "Kan de support van Velcrypt mijn patroon resetten?"
        a: "Nee. Support heeft geen toegang tot je kluizen, patronen of sleutels, dus aan onze kant valt er niets te resetten."
  - title: "Privacy"
    items:
      - q: "Heb ik een account nodig voor Velcrypt?"
        a: "Nee. Er is geen registratie, geen e-mailadres en geen login. Je installeert de app en tekent een patroon."
      - q: "Uploadt Velcrypt mijn foto’s?"
        a: "Nee. Velcrypt heeft geen servers voor je inhoud, en kluisbestanden verlaten je iPhone nooit."
      - q: "Verzamelt Velcrypt analysegegevens?"
        a: "Velcrypt verzamelt geen analysegegevens over kluisinhoud. Als je in de iOS-instellingen hebt gekozen om analysegegevens met app-ontwikkelaars te delen, kan Apple crash- en diagnosegegevens met ons delen."
      - q: "Kunnen anderen zien dat ik Velcrypt gebruik?"
        a: "Het app-symbool is zichtbaar op je beginscherm, en forensische tools kunnen mogelijk zien dat Velcrypt versleutelde gegevens bevat en ongeveer hoeveel. Velcrypt verbergt het aantal kluizen en hun inhoud, niet zijn eigen bestaan."
      - q: "Toont Velcrypt advertenties of verkoopt het gegevens?"
        a: "Nee. Velcrypt heeft geen advertenties en verkoopt geen gegevens. Het verzamelt je inhoud om te beginnen al niet."
  - title: "Prijzen en beschikbaarheid"
    items:
      - q: "Is Velcrypt gratis?"
        a: "Er is een gratis versie, plus een optionele Premium-upgrade. De prijs van Premium wordt nog bekendgemaakt."
      - q: "Wat zit er in Premium?"
        a: "Gepland voor Premium zijn een onbeperkt aantal items, meer kluizen, het dwangpatroon (binnenkort) en later een versleutelde back-up."
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
        a: "Nee. Er is geen cloudsynchronisatie; elke kluis staat alleen op de iPhone waarop hij is gemaakt."
      - q: "Kan ik documenten importeren uit de app Bestanden?"
        a: "Ja. Je kunt documenten uit de app Bestanden in elke kluis importeren, naast foto’s en video’s."
---

Dit zijn de vragen die mensen het vaakst over Velcrypt stellen, gegroepeerd per onderwerp. Elk antwoord staat op zichzelf, dus je kunt meteen naar het deel springen dat je nodig hebt.

Wil je het volledige technische plaatje, dan legt de pagina over het [beveiligingsmodel](id:security) uit hoe je patroon een sleutel wordt en hoe bestanden worden versleuteld, samen met de dingen waartegen Velcrypt niet kan beschermen. Wat er in elke versie zit, zie je bij [prijzen](id:pricing). Denk je dat je geen toegang meer hebt tot een kluis, lees dan eerst [kluispatroon vergeten](id:forgot-vault-pattern) voordat je iets anders probeert — en onthoud dat een onbekend patroon gewoon een nieuwe, lege kluis opent in plaats van een foutmelding.

Staat je vraag er niet bij? [Neem contact op met support](id:support) en we helpen waar we kunnen. We beantwoorden vragen over hoe de app werkt, maar we kunnen nooit een kluis voor je openen, resetten of herstellen.
