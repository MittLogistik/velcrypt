---
pageId: hidden-vaults
title: "Dolda valv: varje mönster öppnar sitt eget valv"
description: "I Velcrypt är varje mönster ett eget valv. Det finns ingen valvlista, och ett okänt mönster öppnar ett tomt valv utan felmeddelande. Så fungerar det."
h1: "Dolda valv: ett mönster, ett valv, ingen lista"
navTitle: "Dolda valv"
answer: "I Velcrypt öppnar varje mönster sitt eget krypterade valv. Det finns ingen lista över valv, och ett mönster som appen aldrig sett öppnar helt enkelt ett tomt valv utan felmeddelande. Inget på skärmen bevisar alltså att det finns fler valv."
keyFacts:
  - "Varje mönster är ett eget valv med en egen krypteringsnyckel."
  - "Velcrypt visar aldrig någon lista över valv."
  - "Ett okänt mönster öppnar ett tomt valv, utan felmeddelande."
  - "Du kan ha ett lockbetesvalv med vardagligt innehåll."
  - "Fler valv är en planerad del av den valfria Premium-uppgraderingen."
primaryKeyword: "dolda valv app iphone"
keywords: ["flera valv fotoapp", "lockbetesvalv iphone", "hemligt valv app", "trovärdig förnekelse fotovalv", "andra dolt valv"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Varje mönster är ett eget valv. Ingen valvlista, inget fel för okända mönster och plats för ett trovärdigt lockbetesvalv."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "Hur ser jag alla mina valv i Velcrypt?"
    a: "Det gör du inte, och det är avsiktligt. Velcrypt har ingen valvlista. Det enda sättet att öppna ett valv är att rita dess mönster, så du får själv hålla reda på dina mönster."
  - q: "Vad händer om jag ritar fel mönster?"
    a: "Velcrypt öppnar ett tomt valv för det mönstret i stället för att visa ett fel. Om du lade till filer där skulle mönstret bli ett nytt valv. Väntade du dig dina bilder men ser ingenting har du troligen ritat ett något annorlunda mönster."
  - q: "Kan någon se att jag har mer än ett valv?"
    a: "Inte i appens gränssnitt. Det finns ingen lista, räknare eller felmeddelande som avslöjar andra valv. Velcrypt kan inte dölja att själva appen är installerad, och kan inte hindra någon från att se dig rita ett mönster."
  - q: "Vad är ett lockbetesvalv?"
    a: "Ett lockbetesvalv är ett valv med vardagligt, trovärdigt innehåll som du kan öppna om du pressas att visa vad som finns i appen. Ditt riktiga valv ligger kvar bakom ett annat mönster."
howTo:
  name: "Skapa ett andra dolt valv i Velcrypt"
  steps:
    - name: "Lås Velcrypt"
      text: "Lämna valvet du är i så att mönsterrutnätet visas."
    - name: "Rita ett nytt mönster"
      text: "Rita ett mönster du inte använt förut, med minst 6 punkter och minst ett riktningsbyte. Ett tomt valv öppnas."
    - name: "Lägg till innehåll"
      text: "Importera en bild, video eller ett dokument till det tomma valvet för att börja använda det."
    - name: "Öva på mönstret"
      text: "Lås och lås upp några gånger så att du minns vilket mönster som hör till vilket valv."
---

De flesta valvappar har ett lösenord och ett låst område, så frågan ”vad är lösenordet?” avslöjar allt. Velcrypt fungerar annorlunda: mönstret du ritar låser inte bara upp appen, det avgör vilket valv som visas. Den enkla idén är det som gör dolda valv möjliga.

## Varje mönster är ett eget valv

Ett dolt valv är ett valv vars existens inte kan bekräftas utifrån. I Velcrypt motsvarar varje giltigt mönster på [5×5-rutnätet](id:pattern-lock) ett separat valv med en egen slumpmässig huvudnyckel och egna filer. Mönster A visar bilderna du sparat bakom mönster A. Mönster B visar en helt annan uppsättning.

Det finns ingen inställningsskärm som listar dem, ingen meny för att byta valv och ingen siffra som visar hur många som finns. Inifrån appen ser varje valv ut att vara det enda.

## Inget felmeddelande för ett okänt mönster

När du ritar ett mönster som Velcrypt aldrig har sett säger appen inte ”fel mönster”. Den öppnar ett tomt valv. Det beteendet är kärnan i funktionen:

- **Inget att räkna.** Det finns ingen försöksräknare eller något felmeddelande som bekräftar att det ”riktiga” mönstret fortfarande finns där ute.
- **Inget att jämföra.** Ett tomt valv ser exakt ut som ett valv du nyss skapat.
- **Inget att bevisa.** Den som tittar på appen kan inte avgöra om du har ett valv eller flera.

Det här är en form av [trovärdig förnekelse](id:plausible-deniability-explained): möjligheten att trovärdigt säga att det du har visat är allt som finns, eftersom programmet inte ger några bevis för motsatsen.

Det har också en praktisk bieffekt. Ritar du ditt mönster fel hamnar du i ett tomt valv i stället för att se ett fel. Verkar dina bilder ha försvunnit, lås appen och rita mönstret igen, noggrant.

## Så skapar du ett andra valv

1. **Lås Velcrypt.** Lämna valvet du är i så att mönsterrutnätet visas.
2. **Rita ett nytt mönster.** Använd ett du inte använt förut och följ de vanliga reglerna: minst 6 punkter och minst ett riktningsbyte.
3. **Lägg till något.** Ett tomt valv öppnas. Importera en bild, video eller ett dokument för att börja använda det.
4. **Öva på mönstret.** Lås och lås upp några gånger så att du minns exakt vilket mönster som hör till vilket valv.

## Använd ett lockbetesvalv

Ett lockbetesvalv är ett valv fyllt med harmlöst men trovärdigt innehåll, till exempel sparade kvitton, skärmbilder eller semesterbilder. Om någon insisterar på att se vad som finns i Velcrypt kan du öppna lockbetet, och det beter sig som vilket valv som helst.

Ett lockbetesvalv fungerar bäst när det ser använt ut. Ett tomt valv väcker frågan ”varför installera en valvapp för ingenting?”, medan ett valv med några dussin vardagliga saker sällan gör det. Guiden om [vad ett lockbetesvalv är](id:what-is-a-decoy-vault) visar hur du gör det övertygande.

Velcrypt planerar också ett [tvångsmönster](id:duress-pattern) för den valfria Premium-uppgraderingen (kommer snart). Det är tänkt att gå ett steg längre än ett lockbete genom att öppna ett valt valv och i tysthet ta bort åtkomsten till de andra.

## Så hålls varje valv åtskilt

Åtskillnaden handlar inte bara om att gömma mappar. Varje valv har en egen slumpmässig 256-bitars huvudnyckel, som låses upp av en nyckel härledd ur just det valvets mönster. Filerna i ett valv krypteras med nycklar som bara hör till det valvet, så att öppna ett valv ger ingen åtkomst till ett annat. Sidan om [kryptering](id:encryption) förklarar hela nyckelkedjan.

## Vad dolda valv kan och inte kan göra

Dolda valv gör det svårt att bevisa att det finns mer innehåll. De gör dig inte osynlig:

- Velcrypt-symbolen syns på hemskärmen. iOS 18 och senare låter dig gömma appar i en dold mapp som skyddas med Face ID, men det är en iOS-funktion och ingen del av Velcrypt.
- Den som ser dig rita ditt riktiga mönster kan öppna det riktiga valvet.
- Kopior av en fil som fortfarande finns någon annanstans, till exempel i Bilder, Nyligen raderade, iCloud eller en chatt, ligger utanför valvets skydd.
- Förnekelse beror på sammanhanget. Det är en teknisk egenskap hos appen, ingen juridisk garanti.

Inför situationer som en gränspassage eller att lämna ifrån dig telefonen bör du läsa [mobilintegritet vid gränspassager](id:phone-privacy-border-crossing) innan du förlitar dig på en enskild funktion.
