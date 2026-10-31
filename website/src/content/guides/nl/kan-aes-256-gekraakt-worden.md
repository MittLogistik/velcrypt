---
pageId: can-aes-256-be-cracked
title: "Kan AES-256 gekraakt worden? Brute force, quantum, GCM"
description: "Hoe lang het kraken van een 256-bits sleutel met brute force zou duren, wat quantumcomputers en GCM veranderen en waar echte aanvallen op mikken."
h1: "Kan AES-256 gekraakt worden? De rekensom, de aanvallen en de quantumvraag"
navTitle: "Kan AES-256 gekraakt worden?"
answer: "Niet door sleutels uit te proberen: zelfs een miljard machines die elk een triljoen sleutels per seconde testen, zouden gemiddeld zo’n 10⁴² jaar nodig hebben. De beste bekende aanvallen schaven er maar een paar bits af, en een quantumcomputer met het algoritme van Grover staat nog steeds voor ongeveer 2¹²⁸ stappen. Echte aanvallen richten zich op het wachtwoord of patroon, het apparaat of de implementatie."
keyFacts:
  - "Een 256-bits sleutel heeft ongeveer 1,2 × 10⁷⁷ mogelijke waarden; brute force is onder elke realistische aanname onhaalbaar."
  - "De beste bekende aanval op volledige AES-256 zonder verwante sleutels (biclique, 2011) kost ongeveer 2²⁵⁴·⁴ bewerkingen in plaats van 2²⁵⁶."
  - "Het algoritme van Grover zou AES-256 ongeveer 128 bits beveiliging laten; NIST, het Duitse BSI en het Britse NCSC achten AES geschikt voor het quantumtijdperk."
  - "Het algoritme van Shor bedreigt RSA en elliptische-curvecryptografie, niet AES."
  - "Bij een kluis met een patroon zit het zwakke punt in de entropie van het patroon en de sleutelafleiding, niet in het algoritme."
primaryKeyword: "kan aes 256 gekraakt worden"
keywords: ["hoe lang duurt het om aes 256 te kraken", "is aes 256 quantumveilig", "aes 256 versleuteling", "aes-256-gcm", "rijndael 256", "is aes ooit gekraakt"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "De brute-force-rekensom voor een 256-bits sleutel, bekende aanvallen, Grover tegenover Shor, wat GCM toevoegt en waarom het patroon het echte doelwit is."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "Hoe lang duurt het om AES-256 met brute force te kraken?"
    a: "Stel dat een miljard machines elk 10¹⁸ sleutels per seconde testen: dan duurt het vinden van een 256-bits sleutel gemiddeld ongeveer 1,8 × 10⁴² jaar, zo’n 10³² keer de leeftijd van het heelal. Die aannames zijn absurd ruim; echte hardware is veel trager."
  - q: "Is AES-256 quantumveilig?"
    a: "Het geldt als bestand tegen quantumcomputers. Het algoritme van Grover zou de effectieve sterkte terugbrengen tot ongeveer 128 bits, wat nog steeds als veilig wordt gezien. NIST zegt dat huidige toepassingen AES kunnen blijven gebruiken, en het Duitse BSI raadt 256-bits sleutels aan voor bescherming op lange termijn."
  - q: "Is AES ooit gekraakt?"
    a: "In de praktijk niet. Er bestaan academische aanvallen, zoals biclique-aanvallen die AES-256 van 2²⁵⁶ naar ongeveer 2²⁵⁴·⁴ bewerkingen brengen en aanvallen met verwante sleutels die een onrealistisch scenario vereisen. Geen daarvan ontsleutelt echte AES-256-gegevens."
  - q: "Is Rijndael 256 hetzelfde als AES-256?"
    a: "Niet helemaal. Rijndael is het ontwerp dat AES werd en ondersteunt blokgroottes van 128, 192 of 256 bits. AES legt het blok vast op 128 bits; AES-256 betekent een sleutel van 256 bits. Een Rijndael-variant met een blok van 256 bits is geen AES."
  - q: "Wat voegt AES-256-GCM toe ten opzichte van gewoon AES-256?"
    a: "GCM maakt van AES geauthenticeerde versleuteling. Naast geheimhouding voegt het een authenticatietag toe, zodat elke wijziging in het versleutelde bestand de ontsleuteling laat mislukken. Het vereist dat een nonce nooit opnieuw wordt gebruikt met dezelfde sleutel."
  - q: "Kan een kluis met AES-256 dan gekraakt worden?"
    a: "Niet via het algoritme. Wie de versleutelde gegevens kopieert, probeert in plaats daarvan je patroon of wachtwoord te raden, en trage sleutelafleiding beperkt alleen hoeveel pogingen per seconde dat oplevert. Een lang, onregelmatig geheim houdt de kluis dicht."
---

‘Kan AES-256 gekraakt worden?’ is een terechte vraag, en het eerlijke antwoord bestaat uit twee helften. Het algoritme zelf wordt volgens elke serieuze inschatting niet gebroken door sleutels uit te proberen, niet door de beste bekende cryptanalyse en niet door quantumcomputers binnen enige zichtbare horizon. Toch kunnen gegevens die met AES-256 zijn beveiligd uitlekken, omdat aanvallers op de zwakste schakel mikken. Deze gids maakt de rekensom en volgt de aanvaller daarna naar waar die echt naartoe gaat. Voor de basis van hoe AES werkt, begin je bij [AES-256-versleuteling uitgelegd](id:aes-256-encryption-explained).

## Hoe lang zou brute force duren?

Brute force betekent: elke mogelijke sleutel proberen tot er een past. Een 256-bits sleutel heeft 2²⁵⁶ mogelijke waarden, ongeveer 1,16 × 10⁷⁷. Gemiddeld vind je de juiste halverwege, dus na zo’n 5,8 × 10⁷⁶ pogingen.

Geef de aanvaller absurd ruime middelen:

- **Snelheid per machine:** 10¹⁸ sleutels per seconde (een triljoen), ver voorbij alle echte hardware om AES te kraken.
- **Aantal machines:** een miljard, allemaal tegelijk.
- **Totaal:** 10²⁷ sleutels per seconde.

De uitkomst: 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ seconden, ongeveer **1,8 × 10⁴² jaar**. Het heelal is ongeveer 1,38 × 10¹⁰ jaar oud, dus dat is zo’n 10³² keer zijn leeftijd. De hardware een paar tientallen keren verdubbelen verandert daar niets aan: elke extra bit sleutel verdubbelt het werk, en 256 bits laten de techniek geen ruimte om in te lopen.

Daarom heeft niemand in de cryptografie het over brute force tegen AES-256. De enige vraag is of er een kortere weg bestaat.

## Bekende aanvallen: piepkleine theoretische winst

AES is sinds 2001 openbaar en een van de best bestudeerde algoritmen die er bestaan. Cryptanalisten hebben aanvallen gevonden die strikt genomen sneller zijn dan brute force, maar met marges die alleen op papier tellen.

- **Biclique-aanvallen (2011).** Bogdanov, Khovratovich en Rechberger toonden een sleutelherstel op volledige AES-256 dat ongeveer 2²⁵⁴·⁴ bewerkingen kost in plaats van 2²⁵⁶. Dat is grofweg drie keer minder werk dan brute force, nog altijd zo’n 10⁷⁶ bewerkingen. De auteurs stelden zelf dat de aanval het praktische gebruik van AES niet bedreigt.
- **Aanvallen met verwante sleutels (2009).** Biryukov en Khovratovich vonden een aanval op AES-256 van ongeveer 2⁹⁹·⁵ in tijd, maar alleen in een model waarin de aanvaller gegevens krijgt die zijn versleuteld met meerdere geheime sleutels met een specifieke wiskundige relatie. Goed ontworpen systemen maken onafhankelijke willekeurige sleutels, dus dat model is op hen niet van toepassing.

Geen van deze resultaten haalt een sleutel uit echte AES-256-gegevens. Ze laten vooral zien dat twintig jaar onderzoek geen betekenisvolle scheur heeft gevonden.

### Wat ‘Rijndael 256’ betekent

Rijndael is het ontwerp van de Belgen Joan Daemen en Vincent Rijmen dat NIST als AES koos. Rijndael ondersteunt blok- en sleutelgroottes van 128, 192 en 256 bits. AES heeft alleen het blok van 128 bits gestandaardiseerd. AES-256 betekent dus Rijndael met een blok van 128 bits en een sleutel van 256 bits. Een ‘Rijndael-256’ met een blok van 256 bits is een ander, niet-standaard algoritme, en niet wat apps of browsers bedoelen met AES-256.

## Is AES-256 quantumveilig?

Quantumcomputers raken twee families van cryptografie heel verschillend.

- **Het algoritme van Shor** lost factorisatie en discrete logaritmen efficiënt op. Een groot genoeg quantumcomputer zou RSA en elliptische-curvecryptografie breken, de publieke-sleutelmethoden voor sleuteluitwisseling en handtekeningen. Daarom wordt post-quantum-sleuteluitwisseling ingevoerd.
- **Het algoritme van Grover** versnelt brute force kwadratisch: 2²⁵⁶ sleutels doorzoeken kost ongeveer 2¹²⁸ quantumstappen. In de praktijk biedt AES-256 zo’n 128 bits beveiliging tegen een quantumaanvaller.

Hoe groot is 2¹²⁸ stappen? Stel dat een quantumcomputer een miljard Grover-iteraties per seconde haalt, elk met een volledig AES-circuit, wat erg optimistisch is. Dan nog zou hij ongeveer 10²² jaar nodig hebben. Bovendien laat Grover zich slecht paralleliseren: de zoektocht over veel machines verdelen levert veel minder op dan een evenredige versnelling.

De officiële standpunten zijn het eens:

- **NIST** (VS) schrijft in zijn FAQ over post-quantumcryptografie dat het algoritme van Grover waarschijnlijk weinig of geen voordeel biedt bij het aanvallen van AES, en dat huidige toepassingen AES met sleutels van 128, 192 of 256 bits kunnen blijven gebruiken.
- **BSI** (Duitsland) beschouwt symmetrische algoritmen zoals AES als in principe bestand tegen quantumaanvallen mits de sleutellengte wordt aangepast, en raadt 256-bits sleutels aan voor nieuwe systemen die gegevens langdurig moeten beschermen.
- **NCSC** (Verenigd Koninkrijk) stelt dat de veiligheid van symmetrische cryptografie niet wezenlijk wordt aangetast door quantumcomputers en dat AES met geschikte sleutellengtes gebruikt kan blijven worden.

Dus ja: AES-256 is de variant die wordt aangeraden voor gegevens die lang vertrouwelijk moeten blijven, quantumcomputers inbegrepen.

## Wat GCM toevoegt in AES-256-GCM

AES op zich versleutelt één blok van 16 bytes. Een modus bepaalt hoe hele bestanden worden versleuteld. **GCM (Galois/Counter Mode)**, door NIST gestandaardiseerd in SP 800-38D, is een geauthenticeerde modus: naast de versleutelde tekst maakt hij een authenticatietag. Bij het ontsleutelen wordt de tag gecontroleerd, en als er ook maar één bit van het bestand is veranderd, mislukt de ontsleuteling in plaats van gewijzigde gegevens terug te geven.

GCM heeft één harde regel: een nonce mag onder dezelfde sleutel nooit terugkomen. Hergebruik kan informatie over de oorspronkelijke tekst lekken en vervalste tags mogelijk maken. Dat is geen zwakte van AES, maar precies het soort implementatiefout dat echte aanvallen uitbuiten. Elk bestand een eigen sleutel geven, zoals Velcrypt doet, maakt de regel makkelijk na te leven.

## Waar aanvallen echt op mikken

Als het algoritme onbereikbaar is, gaan aanvallers eromheen. In de praktijk richten ze zich op drie dingen.

1. **Het geheim dat je onthoudt.** De 256-bits sleutel wordt meestal afgeleid van een wachtwoord, pincode of patroon. Het geheim raden is onvoorstelbaar veel goedkoper dan de sleutel raden.
2. **Het apparaat.** Malware, een gejailbreakte telefoon, een kluis die openstaat of iemand die meekijkt bij het ontgrendelen omzeilen de versleuteling volledig.
3. **De implementatie.** Hergebruikte nonces, sleutels die naast de gegevens staan, zwakke willekeurige getallen of zijkanalen zoals timinglekken. Daarom zijn beproefde systeembibliotheken zoals Apple CryptoKit beter dan zelfgebouwde cryptocode.

## De eerlijke conclusie voor een kluis met patroon

In een kluis als Velcrypt is de sleutel die je bestanden versleutelt een willekeurige hoofdsleutel van 256 bits, zo sterk als AES maar kan zijn. Die hoofdsleutel is echter verzegeld met een sleutel die is afgeleid van het patroon dat je tekent. Wie de versleutelde gegevens en de salt van het apparaat heeft gekopieerd, kan offline gokken. De sterkte van het algoritme doet er dan niet meer toe; het gaat erom hoeveel patronen hij per seconde kan proberen en hoeveel hij er nodig heeft.

Velcrypt vertraagt elke poging met PBKDF2-HMAC-SHA512 en minstens 600.000 iteraties. Geëxtrapoleerd uit openbare benchmarks voor het kraken van wachtwoorden haalt één snelle gamingvideokaart met die instelling in de orde van 5.000 pogingen per seconde. Dat is een ruwe schatting, geen meting van Velcrypt zelf. Wat dat betekent:

| Patronen die de aanvaller moet proberen | Ca. bits | Eén GPU | 100 GPU’s |
|---|---|---|---|
| 10.000 (gangbare vormen) | ~13 | seconden | meteen |
| 1 miljoen | ~20 | minuten | seconden |
| 1 miljard | ~30 | ongeveer 2 dagen | ongeveer 30 minuten |
| 1 biljoen | ~40 | ongeveer 6 jaar | ongeveer 3 weken |

Ter vergelijking: zelfs als je een patroon ziet als elke geordende keuze van 10 verschillende punten uit 25, kom je maar op ongeveer 1,2 × 10¹³ mogelijkheden (zo’n 43 bits), en dat is een ruime bovengrens, want een doorlopende lijn beperkt de bewegingen en mensen kiezen graag hoeken, letters en korte vormen. Een patroon zit in de tientallen bits; de sleutel op 256.

Op een iPhone gaat dit allemaal niet zomaar: de aanvaller moet eerst de versleutelde bestanden en de salt van het apparaat halen, langs iOS-gegevensbescherming. Maar het laat zien waar je moeite moet zitten:

- **Gebruik 8–12 punten**, met meerdere richtingswisselingen en liefst een kruising.
- **Vermijd starten in een hoek, letters en simpele vormen** zoals een L, Z of vierkant.
- **Teken het buiten zicht**, want geen enkele entropie helpt tegen iemand die heeft meegekeken.

Test een vergelijkbare vorm, nooit je echte, met de [patroonsterktechecker](id:pattern-strength-checker), en lees de [gids patroon vs pincode vs Face ID](id:pattern-lock-vs-pin-vs-face-id) om te zien hoe door mensen gekozen geheimen zich verhouden. De [functiepagina over versleuteling](id:encryption) beschrijft de volledige sleutelketen van Velcrypt, en het [beveiligingsoverzicht](id:security#what-velcrypt-does-not-protect-against) noemt waar versleuteling niet tegen beschermt.
