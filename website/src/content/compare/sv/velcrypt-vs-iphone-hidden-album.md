---
pageId: velcrypt-vs-iphone-hidden-album
title: "Velcrypt vs albumet Gömda på iPhone: vad skiljer?"
description: "Albumet Gömda på iPhone döljer bilder och låses med Face ID eller lösenkoden. Velcrypt lägger till egen kryptering och dolda valv. En rättvis jämförelse."
h1: "Velcrypt vs albumet Gömda på iPhone"
navTitle: "Velcrypt vs albumet Gömda"
answer: "Albumet Gömda är inbyggt i Bilder, gratis och smidigt: det tar bort bilder från biblioteksvyn och låses i iOS 16 och senare med Face ID, Touch ID eller enhetens lösenkod. Den som kan din lösenkod kan öppna det. Velcrypt använder ett separat mönster, egen kryptering och valv som inte avslöjar varandra."
keyFacts:
  - "Albumet Gömda är en del av appen Bilder; i iOS 18 och senare ligger det under Verktyg."
  - "I iOS 16 och senare är albumet Gömda som standard låst med Face ID, Touch ID eller enhetens lösenkod."
  - "Den som kan din iPhones lösenkod kan öppna albumet Gömda."
  - "Dolda bilder synkas med iCloud-bilder; de är end-to-end-krypterade bara med Avancerat dataskydd påslaget."
  - "Velcrypt använder ett separat mönster, håller valven bara på enheten och undantar dem från iCloud- och datorsäkerhetskopior."
primaryKeyword: "dölja bilder iphone gömda album"
keywords: ["albumet gömda vs valvapp", "är albumet gömda säkert", "alternativ till albumet gömda", "gömda album face id", "dolda bilder icloud"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Apples inbyggda album Gömda mot ett separat krypterat valv: vad vart och ett skyddar, var bilderna synkas och vem som kan öppna dem."
competitor: "iPhones album Gömda"
lastChecked: "oktober 2026"
order: 4
related: [is-iphone-hidden-album-private, are-hidden-photos-saved-to-icloud, icloud-advanced-data-protection-explained, hide-photos-iphone, hidden-vaults, pattern-lock]
faq:
  - q: "Är albumet Gömda på iPhone krypterat?"
    a: "Bilder på en låst iPhone skyddas av iOS Dataskydd, och i iOS 16 och senare lägger albumet Gömda till ett lås med Face ID eller lösenkod. I iCloud är dolda bilder end-to-end-krypterade bara om du slår på Avancerat dataskydd; annars har Apple nycklarna."
  - q: "Kan någon som kan min lösenkod se mina dolda bilder?"
    a: "Ja. Albumet Gömda godtar enhetens lösenkod som upplåsningsmetod, så den som kan koden kan öppna albumet. Ett separat valv som Velcrypt använder ett mönster som är oberoende av din lösenkod."
  - q: "Synkas dolda bilder till mina andra enheter?"
    a: "Om iCloud-bilder är påslaget synkas dolda bilder till dina andra Apple-enheter som är inloggade med samma Apple-konto, där de också visas i enhetens album Gömda."
  - q: "Ska jag använda albumet Gömda eller Velcrypt för att dölja bilder?"
    a: "Använd albumet Gömda om du vill ha något gratis, inbyggt och synkat och litar på alla som kan din lösenkod. Överväg Velcrypt om du behöver en separat hemlighet, ingen kopia i molnet och valv vars existens inte kan bevisas."
---

*Senast kontrollerad: oktober 2026. Produktuppgifter ändras; se respektive apps sida i App Store för aktuell version.*

Varje iPhone har redan ett sätt att dölja bilder: albumet Gömda i appen Bilder. För många räcker det. Velcrypt finns för situationer där det inte räcker, främst när den du vill ha integritet från kanske kan din lösenkod, eller när du inte vill ha någon kopia i molnet. Här är en ärlig genomgång av båda.

## Vad albumet Gömda faktiskt gör

Albumet Gömda är ett inbyggt album i Bilder som tar bort utvalda bilder och videor från ditt vanliga bibliotek, från Minnen och från widgetar. Sedan iOS 16 är det som standard låst med Face ID, Touch ID eller din lösenkod; du ändrar det under Inställningar › Appar › Bilder i iOS 18 och senare, eller Inställningar › Bilder i äldre versioner. I iOS 18 och senare visas Gömda och Nyligen raderade under Verktyg i appen Bilder, och du kan välja att dölja själva albumet Gömda.

<!-- TODO verify iOS label -->

Om iCloud-bilder är påslaget synkas dolda objekt som allt annat. De är krypterade i iCloud, men end-to-end bara om du slår på [Avancerat dataskydd](id:icloud-advanced-data-protection-explained). Mer detaljer finns i [är albumet Gömda på iPhone privat?](id:is-iphone-hidden-album-private) och [sparas dolda bilder i iCloud?](id:are-hidden-photos-saved-to-icloud).

<!-- TODO verify -->

## Jämförelse av funktioner

| | Velcrypt | iPhones album Gömda |
|---|---|---|
| Publicerade detaljer om kryptering på enheten | Ja: AES-256-GCM, nycklar som härleds från ditt mönster | iOS Dataskydd, dokumenterat av Apple |
| Kräver konto | Nej | Del av Bilder; Apple-konto krävs för iCloud-synk |
| Molnbackup | Nej; manuell krypterad säkerhetskopia (gratis) | Ja, med iCloud-bilder eller iCloud-säkerhetskopiering |
| Upplåsning | Mönster på ett 5×5-rutnät, skilt från lösenkoden | Face ID, Touch ID eller enhetens lösenkod |
| Biometri | Erbjuds inte, med avsikt | Ja |
| Lockvalv / flera valv | Varje mönster är ett eget valv | Ett album Gömda |
| Nödmönster | Ja, med Premium (öppnar ett lockbete, raderar de andra valven) | Nej |
| Återställning om du glömmer koden | Ingen | Enhetens lösenkod och återställning av Apple-kontot |
| Kostnad | Gratis (ett valv, 50 objekt) plus valfri Premium | Ingår i iOS |
| Plattformar | iPhone (iOS 17+) | iPhone, iPad och Mac |
| Dokument | Ja, från appen Filer | Bara bilder och videor |

<!-- TODO verify -->

## Frågan om lösenkoden

Den största praktiska skillnaden är vem som kommer in. Albumet Gömda litar på enhetens lösenkod. Det är rimligt mot främlingar, men många delar sin lösenkod med en partner, ett barn eller en familjemedlem, eller har knappat in den framför dem. Den som kan lösenkoden kan öppna albumet Gömda, även om Face ID är inställt, eftersom lösenkoden alltid godtas som reserv.

Velcrypts mönster är en separat hemlighet. Att kunna din lösenkod, eller att hålla telefonen framför ditt ansikte, öppnar inget valv. Det är också därför Velcrypt medvetet saknar Face ID: ett ansikte eller ett finger kan användas utan ditt samtycke. Se [mönsterlås](id:pattern-lock).

## Kopior och molnet

Att dölja en bild flyttar den ingenstans; den finns kvar i ditt bibliotek, kvar i iCloud-bilder om det är påslaget och syns fortfarande på andra enheter med samma Apple-konto. Det är smidigt om du vill ha dina dolda bilder överallt, och en risk om någon annan använder en av de enheterna.

<!-- TODO verify -->

Velcrypt fungerar tvärtom. En importerad bild kopieras till ett krypterat valv på iPhonen, och valvdata undantas från iCloud- och datorsäkerhetskopior. Efter importen raderar du originalet i Bilder och tömmer Nyligen raderade, annars ligger det kvar där i cirka 30 dagar. Läs [radera originalbilder efter import](id:delete-original-photos-after-import).

## Förnekbarhet

Det finns exakt ett album Gömda, och att det finns är uppenbart för alla som öppnar Bilder (om du inte stänger av att det visas). Velcrypt har ingen valvlista. Varje mönster öppnar ett eget valv, och ett mönster appen aldrig sett öppnar ett tomt valv utan felmeddelande. Det gör att du kan ha ett lockvalv och omöjliggör bevis för att andra valv finns. Se [dolda valv](id:hidden-vaults).

## När albumet Gömda kan passa dig bättre

- **Du vill ha något gratis och inbyggt.** Ingen extra app, inget att installera.
- **Du vill ha synk och säkerhetskopiering.** Dolda bilder följer med mellan enheter via iCloud-bilder och överlever en förlorad telefon.
- **Du litar på alla som kan din lösenkod.** Då är lösenkodslåset ett rimligt hinder.
- **Du använder iPad eller Mac.** Velcrypt finns bara för iPhone.

## När Velcrypt kan passa dig bättre

- **Någon annan kan din lösenkod.** Ett separat mönster håller personen ute.
- **Du vill inte ha någon kopia i molnet.** Valven stannar på telefonen.
- **Du vill ha lockvalv eller flera privata utrymmen.** Varje mönster är ett eget valv.
- **Du behöver även hålla dokument privata.** Importera PDF:er och filer från appen Filer.

Den ärliga avvägningen: med Velcrypt kan ett glömt mönster inte återställas, och en förlorad telefon innebär ett förlorat valv om du inte själv har skapat en krypterad säkerhetskopia. Avgör vilken risk som oroar dig mest.
