---
pageId: pattern-strength-checker
title: "Patroonsterkte testen: hoe veilig is je 5×5-patroon?"
description: "Teken een testpatroon op een 5×5-raster en krijg een ruwe sterkte-inschatting in bits. Werkt lokaal. Voer nooit je echte patroon in op een website."
h1: "Test de sterkte van een ontgrendelpatroon"
navTitle: "Patroonsterktetest"
answer: "Teken een patroon op het raster van 5×5 om te zien of het voldoet aan de minimumregels van Velcrypt, en krijg een ruwe beoordeling van Te kort tot Heel sterk, plus een schatting in bits. Het is een vuistregel, geen garantie. Voer nooit je echte patroon in op een website; test een vergelijkbaar patroon."
keyFacts:
  - "Controleert de minimumregels van Velcrypt: minstens 6 stippen en minstens één richtingsverandering."
  - "Beoordeelt patronen als Te kort, Zwak, Redelijk, Sterk of Heel sterk, met een ruwe schatting in bits."
  - "Beloont meer stippen, richtingsveranderingen, kruisingen met de eigen lijn en een groter deel van het raster."
  - "Trekt punten af voor een start in een hoek, lange rechte lijnen en simpele lettervormen zoals L, Z, S en U."
  - "Werkt lokaal; er wordt niets opgeslagen of verstuurd. Test een lookalike, nooit je echte patroon."
primaryKeyword: "patroon sterkte test"
keywords: ["sterkte ontgrendelpatroon", "hoe sterk is mijn patroon", "veiligheid patroonvergrendeling", "5x5 patroonvergrendeling", "ideeën voor een veilig patroon", "patroon wachtwoord sterkte"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Teken een testpatroon op een raster van 5×5 en zie een ruwe sterkte-inschatting. Werkt lokaal. Gebruik nooit je echte patroon."
toolName: "Patroonsterktetest"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "De sterkte van een testpatroon controleren"
  steps:
    - name: "Teken een vergelijkbaar patroon"
      text: "Tik of sleep over het raster van 5×5 om een patroon te tekenen dat qua stijl lijkt op het patroon dat je in gedachten hebt, niet je echte."
    - name: "Controleer de minimumregels"
      text: "Kijk of het patroon minstens 6 stippen gebruikt en minstens één keer van richting verandert."
    - name: "Lees de beoordeling"
      text: "Bekijk de beoordeling van Te kort tot Heel sterk en de ruwe schatting in bits."
    - name: "Pas aan en probeer opnieuw"
      text: "Voeg stippen, bochten of een kruising toe, vermijd een start in een hoek en simpele lettervormen, en kijk hoe de beoordeling verandert."
faq:
  - q: "Is het veilig om hier mijn echte patroon in te voeren?"
    a: "Doe het niet. De test werkt lokaal en slaat niets op, maar het is een goede gewoonte om nooit een echt geheim op een website in te voeren. Teken in plaats daarvan een patroon in een vergelijkbare stijl en pas toe wat je leert."
  - q: "Hoe wordt de sterkte berekend?"
    a: "Het is een vuistregel. De test telt stippen en richtingsveranderingen, merkt op wanneer de lijn zichzelf kruist, meet hoeveel rijen en kolommen hij beslaat, en verlaagt de score voor een start in een hoek, lange rechte lijnen en vormen die op simpele letters lijken."
  - q: "Wat betekenen de bits?"
    a: "Bits zijn een ruwe maat voor hoeveel pogingen een aanvaller misschien nodig heeft; elke extra bit verdubbelt dat ongeveer. De schatting hier is bij benadering en gaat uit van iemand die gangbare gewoonten kent, niet van puur willekeurig raden."
  - q: "Hoe lang moet een patroon in Velcrypt zijn?"
    a: "Het minimum is 6 stippen met minstens één richtingsverandering. Velcrypt raadt 8 tot 12 stippen aan voor een sterker patroon dat je nog steeds betrouwbaar onthoudt."
  - q: "Beschermt een sterk patroon tegen iemand die meekijkt?"
    a: "Nee. Als iemand ziet hoe je het tekent, maakt de sterkte niet uit. Scherm het scherm af en teken het waar je niet bekeken of gefilmd kunt worden."
  - q: "Wat als ik een ingewikkeld patroon vergeet?"
    a: "In Velcrypt kan een vergeten patroon niet worden hersteld, niet door jou en niet door Velcrypt. Kies iets wat complex maar te onthouden is, en oefen het voordat je erop vertrouwt."
---

## Zo werkt het

Tik of sleep over het raster van 5×5 om een testpatroon te tekenen. Terwijl je tekent, controleert de test eerst de minimumregels van Velcrypt: één doorlopende lijn door minstens zes stippen, met minstens één richtingsverandering. Voldoet het patroon daar niet aan, dan krijgt het de beoordeling **Te kort**.

Komt het erdoor, dan geeft de test een ruwe beoordeling van **Zwak**, **Redelijk**, **Sterk** of **Heel sterk**, plus een geschatte sterkte in bits. Alles draait in je browser. Er wordt niets bewaard en niets verstuurd.

## Waar de test naar kijkt

De sterkte van een patroon is grofweg hoe moeilijk het voor iemand zou zijn om het te raden, gezien wat mensen meestal tekenen. De test combineert verschillende signalen:

- **Aantal stippen.** Meer stippen betekent meer mogelijke patronen.
- **Richtingsveranderingen.** Elke bocht voegt onvoorspelbaarheid toe vergeleken met een rechte lijn.
- **Kruisingen met de eigen lijn.** Een lijn die zijn eigen pad kruist, komt minder vaak voor en is moeilijker te raden.
- **Dekking van het raster.** Patronen die over meerdere rijen en kolommen lopen, scoren hoger dan patronen die in één hoekje zijn geperst.
- **Start in een hoek.** Beginnen in een hoek is heel gebruikelijk, dus dat verlaagt de score iets.
- **Lange rechte lijnen.** Een hele rij of kolom afvegen is makkelijk te raden en makkelijk over je schouder te zien.
- **Simpele vormen.** Patronen die lijken op een L, Z, S, U of vierkant horen bij het eerste wat iemand zou proberen.

Het aantal bits is een schatting, geen meting. Het is een vuistregel die je weg wil sturen van gangbare gewoonten, geen garantie voor hoe lang een patroon een vastberaden aanvaller zou weerstaan.

## Waarom menselijke patronen voorspelbaar zijn

Op papier biedt een raster van 5×5 een enorm aantal mogelijke lijnen. In de praktijk kiezen mensen niet willekeurig. Onderzoek naar het klassieke telefoonpatroon van 3×3 heeft steeds weer sterke voorkeuren gevonden: linksboven beginnen, van links naar rechts en van boven naar beneden bewegen, weinig bochten maken en bekende letters tekenen. Die gewoonten verkleinen de ruimte die een aanvaller realistisch gezien moet doorzoeken.

Een sterk patroon vermijdt die gewoonten en blijft toch voor jou te onthouden. Een bredere vergelijking van ontgrendelmethoden lees je in [patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Tips voor een sterker patroon

1. **Mik op 8–12 stippen.** Dat raadt Velcrypt aan: lang genoeg om moeilijk te raden te zijn, kort genoeg om te onthouden.
2. **Voeg twee of meer bochten toe.** Wissel horizontale, verticale en diagonale bewegingen af.
3. **Kruis één keer je eigen lijn.** Dat maakt het complexer zonder dat het veel moeite kost om te onthouden.
4. **Begin ergens anders dan in een hoek.** Stippen in het midden of aan de rand zijn minder voor de hand liggend.
5. **Gebruik het hele raster.** Raak minstens drie rijen en drie kolommen.
6. **Vermijd letters en vormen.** Initialen, L, Z, S, U en vierkanten worden vroeg geprobeerd.
7. **Oefen voordat je erop vertrouwt.** Teken het een paar keer, zodat je spiergeheugen het overneemt.

## Voer nooit je echte patroon in

Deze test bewaart en verstuurt niets, maar de gewoonte is belangrijker dan deze ene pagina. Typ of teken nooit een echt wachtwoord, een echte pincode of een echt patroon op een website. Teken in plaats daarvan een patroon in een vergelijkbare stijl (vergelijkbare lengte, aantal bochten, startgebied) en gebruik het resultaat als richtlijn.

## Sterkte is maar een deel van het verhaal

In Velcrypt is je patroon de sleutel: versleutelingssleutels worden eruit afgeleid met PBKDF2-HMAC-SHA512 en minstens 600.000 iteraties, waardoor elke poging traag is. Zie [versleuteling](id:encryption). Elk patroon opent ook een eigen kluis, zoals uitgelegd bij [verborgen kluizen](id:hidden-vaults) en [patroonslot](id:pattern-lock).

Een sterk patroon beschermt niet tegen iemand die meekijkt terwijl je het tekent, een telefoon die met open kluis wordt doorgegeven, of een vergeten patroon. Een vergeten patroon is niet te herstellen, dus lees [kluispatroon vergeten](id:forgot-vault-pattern) voordat je iets kiest wat je misschien niet onthoudt.
