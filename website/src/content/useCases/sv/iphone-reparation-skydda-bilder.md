---
pageId: phone-repair-privacy
title: "Lämna iPhone på reparation: skydda dina bilder först"
description: "Innan du lämnar in din iPhone på reparation: säkerhetskopiera, kontrollera Hitta och förstå vad en tekniker kan se i dina bilder, dokument och appar."
h1: "Skydda dina bilder när din iPhone ska på reparation"
navTitle: "Integritet vid iPhone-reparation"
answer: "Gör en fullständig säkerhetskopia före en reparation, följ verkstadens instruktioner om Hitta och lösenkoder, och ta bort allt ur appen Bilder som du inte vill att en främling ska se. Måste du lämna ut din lösenkod, utgå från att allt den låser upp kan visas."
keyFacts:
  - "Säkerhetskopiera din iPhone före varje reparation; vissa reparationer slutar med en utbytt eller raderad enhet."
  - "Nyare iOS-versioner har ett reparationsläge där Hitta kan vara på; fråga verkstaden vad de behöver."
  - "Enhetens lösenkod låser upp Bilder, albumet Gömda, Filer och allt annat som är låst med den."
  - "Ett valv i Velcrypt kräver ett separat mönster, så enbart lösenkoden öppnar det inte."
  - "Valvdata i Velcrypt ingår inte i iCloud- eller datorsäkerhetskopior, så skapa en krypterad säkerhetskopia av valvet före reparationen."
primaryKeyword: "iphone reparation bilder integritet"
keywords: ["dölja bilder före mobilreparation", "kan verkstaden se mina bilder", "iphone reparation lösenkod", "skydda data vid iphone-reparation", "integritetstips mobilreparation"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Vad en reparationstekniker kan komma åt i din iPhone, hur du förbereder dig och varför valvet behöver en plan för säkerhetskopior."
group: everyday
schemaType: Article
order: 3
related: [is-iphone-hidden-album-private, are-hidden-photos-saved-to-icloud, forgot-vault-pattern, pattern-lock, security]
faq:
  - q: "Kan en reparationsverkstad se mina bilder?"
    a: "Om teknikern har din lösenkod och telefonen fungerar kan hen tekniskt sett öppna Bilder och andra appar. Seriösa verkstäder har regler mot det, men det säkraste är att utgå från att allt din lösenkod låser upp kan ses."
  - q: "Måste jag stänga av Hitta innan en iPhone-reparation?"
    a: "Det beror på reparationen och verkstaden. Nyare iOS-versioner erbjuder ett reparationsläge där Hitta förblir på under servicen. Följ verkstadens instruktioner och kontrollera Apple Support om du är osäker."
  - q: "Klarar sig mitt valv i Velcrypt genom en reparation?"
    a: "Om telefonen kommer tillbaka med samma data, ja. Om enheten raderas eller byts ut är valvet borta, eftersom valvdata undantas från iCloud- och datorsäkerhetskopior. Har du skapat en krypterad säkerhetskopia i Velcrypt kan du återställa valvet från den."
  - q: "Ska jag ge teknikern min lösenkod?"
    a: "Bara om reparationen verkligen kräver det. Många hårdvarureparationer gör inte det. Lämnar du ut den, byt den så fort du fått tillbaka telefonen."
---

En sprucken skärm eller ett batteri som dör vid 40 % är stressigt nog. Sedan kommer den obekväma tanken: någon du aldrig träffat ska hålla i en enhet som rymmer hela ditt liv. Lite förberedelser gör överlämningen betydligt lugnare.

## Vad en tekniker faktiskt kan komma åt

De flesta reparationstekniker är yrkespersoner utan något intresse för dina bilder. Det är ändå bra att veta vad som är möjligt:

- **Med din lösenkod:** allt. Bilder, albumet Gömda (det låses upp med lösenkoden i iOS 16 och senare), Filer, Mail, Meddelanden och anteckningar som är låsta med enhetens lösenkod. Se [är albumet Gömda privat?](id:is-iphone-hidden-album-private)
- **Utan din lösenkod:** mycket lite på en låst, fungerande iPhone. iOS krypterar användardata och knyter den till din lösenkod, så filerna går inte att läsa utan upplåsning.
- **Under felsökning:** vissa reparationer kräver att telefonen startas och testas. Verkstaden kan be om din lösenkod för att bekräfta att lagningen fungerar.
- **Om enheten byts ut eller raderas:** dina data kommer bara tillbaka från en säkerhetskopia.

## Innan du lämnar in den

1. **Gör en fullständig säkerhetskopia.** Använd iCloud-säkerhetskopiering eller en säkerhetskopia på dator. Kontrollera att den blev klar. Velcrypts valv ingår inte i den, så skapa också en krypterad säkerhetskopia av varje valv i Velcrypt.
2. **Följ verkstadens instruktioner om Hitta.** Nyare iOS-versioner har ett reparationsläge där enheten kan vara kopplad till Hitta under servicen, medan du tidigare fick stänga av funktionen. Fråga verkstaden vad som gäller, eller kontrollera [Apple Support](https://support.apple.com/).
3. **Fråga om din lösenkod verkligen behövs.** Många hårdvarureparationer kräver den inte.
4. **Flytta känsliga saker utom räckhåll.** Skannade id-handlingar, medicinska bilder och intima bilder ska inte ligga i bildbiblioteket under en reparation.
5. **Logga ut från sådant du inte har råd att få öppnat,** som bank- eller jobbappar, om verkstaden behöver lösenkoden.
6. **Se till att du kan logga in på annat sätt.** Om tvåfaktorskoder kommer till den här telefonen, se till att du har en annan betrodd enhet eller återställningskoder medan den är borta.

## När du fått tillbaka den

- Byt enhetens lösenkod om du lämnade ut den.
- Gå till Inställningar › Integritet och säkerhet › Säkerhetskontroll (iOS 16 och senare) och se över vilka enheter och appar som har åtkomst.
- Kontrollera att Hitta är på och att ditt Apple-konto bara visar dina egna enheter.

<!-- TODO verify iOS label -->

## Så hjälper Velcrypt

Velcrypt förvarar bilder, videor och dokument i krypterade valv i din iPhone. Valvet öppnas inte med enhetens lösenkod eller Face ID; det kräver [mönstret du ritar på ett 5×5-rutnät](id:pattern-lock). Även om en tekniker har din lösenkod och öppnar Velcrypt visar allt annat än ditt mönster bara ett tomt valv, utan felmeddelande och utan antydan om att andra valv finns.

Importerade bilder är kopior, så kom ihåg att [radera originalen](id:delete-original-photos-after-import) och tömma Nyligen raderade före reparationen. Annars ligger de kvar i Bilder.

## Den ärliga avvägningen: säkerhetskopior

Det här behöver du väga noga. Valvdata i Velcrypt är **undantagen från iCloud- och datorsäkerhetskopior**. Det är avsiktligt, eftersom inget lämnar din enhet utan att du väljer det, men det betyder att:

- om reparationen slutar med en raderad eller utbytt iPhone kan ditt valv inte återställas från en vanlig säkerhetskopia, varken av dig eller av Velcrypt.
- det enda sättet att få tillbaka valvet är en krypterad säkerhetskopia som du själv har skapat under Inställningar → Säkerhetskopiering.

Så före reparationen: skapa en krypterad säkerhetskopia av varje valv och spara filen utanför telefonen, till exempel i iCloud Drive eller på en dator. Glöm inte lösenordet för säkerhetskopian; det kan inte återställas. Detsamma gäller om du någon gång [glömmer ditt mönster](id:forgot-vault-pattern). Läs mer om designvalen på [säkerhetssidan](id:security).

## Andra begränsningar att tänka på

- Kopior av bilder i iCloud-bilder, Meddelanden eller e-post skyddas inte av ett valv. Kontrollera [om gömda bilder synkas till iCloud](id:are-hidden-photos-saved-to-icloud).
- Velcrypt-symbolen syns på hemskärmen om du inte använder iOS 18:s alternativ för att gömma appar.
- Ingen app skyddar mot skadlig kod på en jailbreakad eller manipulerad enhet. Misstänker du manipulation efter en reparation, låt Apple eller en auktoriserad serviceleverantör kontrollera telefonen.

En reparation ska inte kräva att du anförtror en främling allt. Säkerhetskopiera, flytta det känsliga från de uppenbara ställena, så kan du lämna över telefonen med lugnt sinne.
