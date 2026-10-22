---
pageId: lock-photos-iphone
title: "Låsa bilder på iPhone: 4 metoder jämförda"
description: "Lås bilder på iPhone med albumet Gömda, applåsning i iOS 18, låsta anteckningar eller ett krypterat valv – med en tabell över vad varje metod skyddar."
h1: "Så låser du bilder på iPhone"
navTitle: "Låsa bilder på iPhone"
answer: "iPhone har tre inbyggda sätt att låsa bilder: göm dem så att de hamnar i albumet Gömda som låses med Face ID, lås hela appen Bilder med Kräv Face ID (iOS 18 och senare) eller lägg dem i en låst anteckning. Alla tre kan öppnas med enhetens lösenkod. Vill du ha ett lås som är fristående från lösenkoden behöver du en krypterad valvapp."
keyFacts:
  - "Albumet Gömda är som standard låst med Face ID, Touch ID eller lösenkod sedan iOS 16."
  - "I iOS 18 kan du låsa nästan vilken app som helst, även Bilder, genom att hålla fingret på symbolen och välja Kräv Face ID."
  - "Låsta anteckningar är krypterade och kan använda ett separat lösenord för Anteckningar i stället för enhetens lösenkod."
  - "Alla inbyggda alternativ faller tillbaka på, eller kan öppnas med, iPhonens lösenkod."
  - "En valvapp kan använda en egen hemlighet, oberoende av enhetens lösenkod och biometri."
primaryKeyword: "låsa bilder iphone"
keywords: ["låsa bilder på iphone", "låsa bilder-appen iphone", "kräv face id bilder", "låsa albumet gömda", "låsa foton iphone", "face id lås bilder ios 18"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Fyra sätt att låsa bilder på iPhone, från albumet Gömda till applåsning och låsta anteckningar, jämförda sida vid sida."
category: hiding
order: 2
related: [hide-photos-iphone, password-protect-photos-iphone, pattern-lock-vs-pin-vs-face-id, velcrypt-vs-apple-notes-locked-notes, pattern-lock, is-iphone-hidden-album-private]
faq:
  - q: "Kan jag låsa appen Bilder på iPhone?"
    a: "Ja, i iOS 18 och senare. Håll fingret på symbolen för Bilder, välj Kräv Face ID (eller Touch ID eller lösenkod) och bekräfta. Appen ber sedan om autentisering varje gång den öppnas."
  - q: "Kan jag låsa bara ett album på iPhone?"
    a: "Inte ett vanligt album. De enda album iOS låser är Gömda och Nyligen raderade. För att låsa en viss uppsättning bilder kan du gömma dem, lägga dem i en låst anteckning eller flytta dem till en valvapp."
  - q: "Om jag låser Bilder, kan andra appar fortfarande se mina bilder?"
    a: "Att låsa en app styr vem som kan öppna just den appen. Appar som redan har fått åtkomst till bildbiblioteket läser det via systemet, så gå igenom de behörigheterna separat i Inställningar › Integritet och säkerhet › Bilder."
  - q: "Är Face ID säkrare än en lösenkod för att låsa bilder?"
    a: "Face ID är smidigt och svårt att lura, men det faller tillbaka på lösenkoden, och ett ansikte kan användas medan du sover eller hålls fast. En hemlighet som bara finns i ditt minne kan inte tas på det sättet."
  - q: "Håller låsta anteckningar bilden borta från kamerarullen?"
    a: "Bara om du tar bilden inne i anteckningen eller raderar originalet efteråt. Lägger du till en befintlig bild i en anteckning skapas en kopia; originalet ligger kvar i Bilder."
---

Att låsa går ett steg längre än att gömma: i stället för att flytta bilderna ur synhåll sätter du en autentiseringsfråga framför dem. iOS ger dig flera sätt att göra det, och de täcker olika mycket, från ett album till hela appen. Vilken metod du väljer beror mest på en fråga: vem känner redan till lösenkoden till din iPhone?

## Metod 1: det låsta albumet Gömda

Det enklaste låset är det som iOS redan använder. Sedan iOS 16 kräver albumen Gömda och Nyligen raderade Face ID, Touch ID eller lösenkoden för att öppnas.

1. Öppna en bild, tryck på **Mer (•••)** och välj **Göm**.
2. Gå till **Inställningar › Appar › Bilder** i iOS 18 och senare (**Inställningar › Bilder** i iOS 16 och 17).
3. Se till att **Använd Face ID** (eller Använd Touch ID / Använd lösenkod) är på.

Det här låser bara det du har gömt. Resten av biblioteket är öppet för den som plockar upp din upplåsta telefon. Hela genomgången, inklusive hur du tar bort albumet Gömda från vyn, finns i [så döljer du bilder på iPhone](id:hide-photos-iphone).

## Metod 2: lås hela appen Bilder (iOS 18 och senare)

iOS 18 införde applåsning, en systemfunktion som sätter en fråga om Face ID, Touch ID eller lösenkod framför en app varje gång den öppnas.

1. Håll fingret på symbolen för **Bilder** på hemskärmen eller i appbiblioteket.
2. Välj **Kräv Face ID** (etiketten följer enhetens autentiseringsmetod).
3. Bekräfta med Face ID eller lösenkoden.

<!-- TODO verify iOS label -->

När Bilder är låst hålls innehållet därifrån också borta från ställen som sökresultat och förhandsvisningar i notiser. För att ångra håller du fingret på symbolen igen och väljer alternativet att sluta kräva Face ID.

Två förbehåll. Apples egna appar kan låsas men kan i regel inte gömmas i mappen för gömda appar, så vem som helst kan fortfarande se att Bilder finns där. Och låset gäller själva öppnandet av appen Bilder; det ändrar inte vilka andra appar som har åtkomst till biblioteket. Kontrollera den listan i **Inställningar › Integritet och säkerhet › Bilder**, eller läs [vilka appar som kan se dina bilder](id:which-apps-can-see-your-photos-iphone).

Applåsning passar bra om du lånar ut telefonen till barn eller kollegor och vill att hela biblioteket ska vara stängt, inte bara några bilder.

## Metod 3: lägg bilderna i en låst anteckning

En låst anteckning är en anteckning i Apples app Anteckningar som är krypterad och kräver ett lösenord, Face ID eller lösenkoden för att visas. Anteckningar kan innehålla bilder och videor, vilket gör dem till ett improviserat bildlås.

1. Skapa en anteckning i **Anteckningar** och lägg till bilder med kameraknappen (ta en ny bild eller välj från biblioteket).
2. Tryck på **Mer (•••)** och välj **Lås**.
3. Första gången väljer du om du vill använda iPhonens lösenkod eller ett separat lösenord för Anteckningar. Det ställs in i **Inställningar › Appar › Anteckningar › Lösenord** i iOS 18 och senare.

<!-- TODO verify iOS label -->

Ett separat lösenord för Anteckningar är det enda inbyggda alternativet där enhetens lösenkod inte ensam öppnar innehållet. Glömmer du det lösenordet kan Apple inte återställa anteckningarna.

Nackdelarna är praktiska. Anteckningar är ingen bildvisare: att bläddra bland dussintals bilder är omständligt, och videor är klumpiga. Bilder du lägger till från biblioteket är kopior, så originalen ligger kvar i Bilder tills du raderar dem. Låsta anteckningar synkas också via iCloud om Anteckningar använder iCloud. Sidan [Velcrypt mot låsta anteckningar i Apple Anteckningar](id:velcrypt-vs-apple-notes-locked-notes) jämför de två mer ingående.

## Metod 4: en krypterad valvapp

En valvapp sparar kopior av dina bilder i sin egen krypterade lagring och har ett eget lås. Den viktiga skillnaden är oberoendet: låset är inte enhetens lösenkod, så den som känner till lösenkoden kan ändå inte öppna valvet.

Valvappar skiljer sig mycket åt. Vissa använder en PIN-kod, vissa ett mönster, vissa förklär sig till en miniräknare; vissa laddar upp till sitt eget moln och kräver ett konto, andra stannar på enheten. Innan du litar på en app bör du titta på hur den krypterar, vart data tar vägen och vad som händer om du glömmer koden. [Är fotovalv-appar säkra?](id:are-photo-vault-apps-safe) har en checklista.

## De fyra metoderna sida vid sida

| | Albumet Gömda | Låst Bilder-app | Låst anteckning | Valvapp |
| --- | --- | --- | --- | --- |
| Vad som låses | Bara gömda objekt | Hela appen Bilder | Innehållet i anteckningen | Det du importerar |
| Upplåsning | Face ID / Touch ID / lösenkod | Face ID / Touch ID / lösenkod | Lösenkod eller separat lösenord för Anteckningar | Appens egen hemlighet |
| Öppnas med enhetens lösenkod | Ja | Ja | Ja, om du inte använder ett separat lösenord | Beror på appen |
| Inbyggt | Ja, iOS 16+ | Ja, iOS 18+ | Ja | Nej |
| Synkas till iCloud | Med iCloud-bilder | Med iCloud-bilder | Med iCloud för Anteckningar | Beror på appen |
| Bra för att bläddra | Ja | Ja | Inte direkt | Oftast |

## Välja lås

Om ingen annan känner till din lösenkod och du främst vill stoppa tillfälligt bläddrande räcker albumet Gömda eller applåsning, och båda är gratis och inbyggda.

Om en partner, förälder eller någon annan känner till lösenkoden kan de öppna alla inbyggda metoder utom en anteckning med separat lösenord. Det är i den situationen ett oberoende lås gör nytta.

Det är också värt att fundera på biometri. Face ID går snabbt, men ett ansikte kan visas upp utan verkligt samtycke. [Mönsterlås, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id) väger de här upplåsningsmetoderna mot varandra.

## Var Velcrypt passar in

Velcrypt är ett valv i den fjärde kategorin. Appen har medvetet inget Face ID eller Touch ID: du låser upp den genom att rita ett [mönster](id:pattern-lock) på ett rutnät med 5×5 punkter, minst sex punkter med minst en riktningsändring, och längre mönster är bättre. Mönstret finns bara i ditt minne och har ingenting med iPhonens lösenkod att göra.

Innehållet krypteras på enheten med AES-256-GCM, valvet [låses automatiskt](id:auto-lock) när du lämnar appen och ingenting laddas upp. Priset för den utformningen är att det inte finns någon återställning: glömmer du mönstret kan varken du eller Velcrypt öppna valvet. Som alla lås kan det inte heller hjälpa om någon ser dig rita mönstret eller om du lämnar över telefonen med valvet redan öppet.
