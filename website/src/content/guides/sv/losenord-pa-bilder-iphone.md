---
pageId: password-protect-photos-iphone
title: "Lösenord på bilder i iPhone: så skyddar du dem"
description: "iOS har inget lösenord per bild. Här är de verkliga alternativen för att sätta lösenord på enskilda bilder i iPhone – och vad varje alternativ skyddar."
h1: "Så sätter du lösenord på bilder i iPhone"
navTitle: "Lösenord på bilder"
answer: "iOS kan inte sätta ett lösenord på en enskild bild. De närmaste inbyggda alternativen är att gömma den i albumet Gömda, som låses med Face ID, eller att lägga den i en låst anteckning med ett eget lösenord för Anteckningar. För att skydda vissa bilder med en hemlighet som inte är enhetens lösenkod kopierar du dem till en krypterad valvapp och raderar originalen."
keyFacts:
  - "Appen Bilder har ingen inställning för lösenord per bild eller per album."
  - "Albumet Gömda öppnas med Face ID, Touch ID eller enhetens lösenkod, inte med ett separat lösenord."
  - "En låst anteckning kan använda ett eget lösenord för Anteckningar, skilt från iPhonens lösenkod."
  - "Att lägga en bild i en anteckning eller ett valv skapar en kopia; originalet ligger kvar i Bilder tills du raderar det."
  - "En krypterad valvapp ger enskilda bilder ett lås som är oberoende av enheten."
primaryKeyword: "lösenord på bilder iphone"
keywords: ["lösenordsskydda bilder iphone", "sätta lösenord på bilder iphone", "lösenord enskilda bilder iphone", "låsa enskilda bilder iphone", "kod på bilder iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Varför iOS saknar lösenord per bild, och tre praktiska sätt att ändå sätta ett riktigt lås på vissa bilder."
category: hiding
order: 4
related: [lock-photos-iphone, hide-photos-iphone, velcrypt-vs-apple-notes-locked-notes, pattern-lock, encryption, delete-original-photos-after-import]
faq:
  - q: "Kan man sätta lösenord på en enda bild i iPhone?"
    a: "Inte i appen Bilder. iOS låser bara albumen Gömda och Nyligen raderade, och de använder Face ID, Touch ID eller enhetens lösenkod. En enskild bild kan bara få ett eget lösenord om du flyttar en kopia till en låst anteckning eller en valvapp."
  - q: "Kan jag ha ett annat lösenord för albumet Gömda?"
    a: "Nej. Albumet Gömda använder alltid enhetens Face ID, Touch ID eller lösenkod. Det finns ingen inställning för ett separat lösenord till albumet Gömda."
  - q: "Är bilder i låsta anteckningar krypterade?"
    a: "Ja. Apple krypterar innehållet i låsta anteckningar, även bifogade bilder. Om du använder ett separat lösenord för Anteckningar och glömmer det kan Apple inte återställa anteckningarna."
  - q: "Försvinner bilden från kamerarullen om jag lösenordsskyddar den?"
    a: "Inte automatiskt. Låsta anteckningar och valvappar skapar en kopia, så du måste radera originalet från Bilder och sedan från Nyligen raderade för att det ska vara borta."
  - q: "Är ett lösenord säkrare än Face ID för bilder?"
    a: "För att stänga ute personer som är fysiskt nära dig, ofta ja. Face ID kan användas medan du sover eller är under press, och låset i Bilder faller tillbaka på enhetens lösenkod som andra kan känna till. En separat hemlighet undviker båda."
---

Många söker efter ett sätt att sätta lösenord på en enda bild, ungefär som på en PDF. Det erbjuder inte iOS. Det som finns är några närliggande funktioner, och vilken som passar dig beror på vad du menar med ”lösenord” och vem du vill skydda bilden från.

## Därför finns det inget lösenord per bild

iPhonens säkerhetsmodell skyddar hela enheten med en lösenkod. När telefonen är låst är dina data krypterade; när du har låst upp den kan apparna du öppnar visa sitt innehåll. Enskilda bilder har inga egna lås. Appen Bilder lägger bara till en extra fråga för två systemalbum, Gömda och Nyligen raderade, och den frågan använder samma Face ID, Touch ID eller lösenkod som låsskärmen.

Bakom frågan döljer sig alltså egentligen två olika behov:

1. **”Jag vill inte ha den i kamerarullen.”** Det är ett synlighetsproblem, och att gömma bilden löser det.
2. **”Jag vill att den ska kräva en hemlighet som bara jag vet.”** Det är ett åtkomstproblem, och det kräver ett lås som skiljer sig från enhetens lösenkod.

## Alternativ 1: göm bilden bakom Face ID

Om din främsta oro är att någon bläddrar förbi bilden går det snabbt att gömma den:

1. Öppna bilden i **Bilder**.
2. Tryck på **Mer (•••)** › **Göm**.
3. Kontrollera att **Använd Face ID** är på i **Inställningar › Appar › Bilder** (Inställningar › Bilder före iOS 18).

Bilden ligger nu i albumet Gömda, bakom biometrisk autentisering. Det är inget lösenord i vanlig mening: den som kan din lösenkod kan välja lösenkoden som reserv och öppna albumet. Mer detaljer finns i [så döljer du bilder på iPhone](id:hide-photos-iphone).

## Alternativ 2: en låst anteckning med eget lösenord

Apple Anteckningar är den enda inbyggda appen där du kan ställa in ett separat lösenord, skilt från enhetens lösenkod, för innehåll du väljer. En låst anteckning är krypterad, och bifogade bilder ingår.

1. Gå till **Inställningar › Appar › Anteckningar › Lösenord** (Inställningar › Anteckningar › Lösenord i äldre versioner) och välj att använda ett eget lösenord i stället för iPhonens lösenkod. Lägg till en ledtråd som du förstår men inte andra.
2. Skapa en ny anteckning i **Anteckningar**. Tryck på kameraknappen och ta antingen en bild direkt i anteckningen eller välj en från biblioteket.
3. Tryck på **Mer (•••)** › **Lås**.
4. Gå tillbaka till Bilder och radera originalet, och radera det sedan igen från **Nyligen raderade**.

<!-- TODO verify iOS label -->

Att ta bilden direkt i anteckningen är den renare vägen, eftersom den då aldrig hamnar i kamerarullen.

Var medveten om avvägningarna. Anteckningar synkas via iCloud om du använder iCloud för Anteckningar, och appen är inte gjord för att visa många bilder eller videor. Glömmer du det egna lösenordet går anteckningarna inte att öppna. [Velcrypt mot låsta anteckningar i Apple Anteckningar](id:velcrypt-vs-apple-notes-locked-notes) går igenom jämförelsen.

## Alternativ 3: en krypterad valvapp

Ett fotovalv är en app som har en egen krypterad kopia av dina bilder, låst med en hemlighet som appen hanterar. Det är det närmaste du kommer ett riktigt lösenord per bild: du bestämmer exakt vilka bilder som läggs in, och enhetens lösenkod öppnar dem inte.

Titta på några saker innan du litar på en sådan app:

- **Riktig kryptering,** inte bara en dold mapp. Appen ska kryptera filerna på enheten med ett modernt autentiserat chiffer.
- **Ett lås som är oberoende av enheten.** Om valvet öppnas med bara Face ID ärver det samma problem med lösenkoden som reserv som albumet Gömda.
- **Tydlig datahantering.** Laddar den upp till en server? Kräver den ett konto? Vad händer om du glömmer koden?

[Är fotovalv-appar säkra?](id:are-photo-vault-apps-safe) går djupare in på de frågorna.

## Alternativen jämförda

| | Gömma | Låst anteckning | Valvapp |
| --- | --- | --- | --- |
| Skilt från enhetens lösenkod | Nej | Ja, med eget lösenord för Anteckningar | Oftast |
| Tar bort bilden från kamerarullen | Ja, flyttar den till Gömda | Bara om du raderar originalet | Bara om du raderar originalet |
| Bekvämt för många bilder | Ja | Nej | Ja |
| Hanterar videor bra | Ja | Dåligt | Oftast |
| Inbyggt i iOS | Ja | Ja | Nej |

## Välj en hemlighet som är värd namnet

Ett separat lösenord hjälper bara om det verkligen är separat. Några vanor gör skillnad:

- **Återanvänd inte iPhonens lösenkod.** Om de du skyddar dig mot kan din lösenkod ger ett likadant lösenord för Anteckningar eller valvet dem båda.
- **Undvik det uppenbara.** Födelsedagar, årsdagar, sekvenser som 1234 och samma kod som till bankappen är det första alla provar.
- **Gör den minnesvärd bara för dig.** I de flesta fall kan du inte återställa den, så välj något du kommer ihåg om flera månader utan att skriva det på en lapp i mobilskalet.
- **Tänk på omgivningen.** Alla hemligheter kan läsas över axeln. Skriv in den när ingen tittar på skärmen.

## Om originalen

Vilket lås du än väljer hjälper en skyddad kopia inte om en oskyddad kopia fortfarande finns kvar. När du har flyttat en bild till en anteckning eller ett valv raderar du den från Bilder, tömmer den från Nyligen raderade och funderar på andra ställen där den kan finnas: ett delat album i iCloud, en chattråd, en app för molnlagring. Guiden om att [radera originalen efter import](id:delete-original-photos-after-import) går igenom varje steg.

## Var Velcrypt passar in

Velcrypt svarar mot det andra behovet, en hemlighet som bara du känner till. I stället för ett inskrivet lösenord ritar du ett [mönster](id:pattern-lock) på ett rutnät med 5×5 punkter. Det måste gå genom minst sex punkter med minst en riktningsändring, och mönster med åtta till tolv punkter rekommenderas. Velcrypt använder inte Face ID eller Touch ID alls, så varken iPhonens lösenkod eller ditt ansikte kan öppna appen.

Varje mönster öppnar ett eget valv, och bilderna i det [krypteras](id:encryption) med AES-256-GCM med nycklar som härleds från mönstret. Eftersom allt stannar på enheten och undantas från säkerhetskopior finns det inget sätt att återställa ett glömt mönster. Föredrar du ett lösenord som går att återställa är den begränsningen värd att väga ärligt innan du flyttar något viktigt.
