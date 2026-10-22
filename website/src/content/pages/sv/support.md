---
pageId: support
title: "Velcrypt support: kontakt och felsökning"
description: "Få hjälp med Velcrypt: så kontaktar du supporten, vad du bör skriva i meddelandet, snabba lösningar på vanliga problem och vad supporten inte kan göra."
h1: "Support för Velcrypt"
navTitle: "Support"
answer: "Mejla support@velcrypt.app med din iOS-version, Velcrypt-version och en beskrivning av problemet. Vi kan hjälpa till med hur appen fungerar, men vi kan aldrig öppna, nollställa eller återställa ett valv, eftersom vi inte har någon åtkomst till dina mönster eller nycklar."
keyFacts:
  - "Kontakt: support@velcrypt.app."
  - "Ange iPhone-modell, iOS-version, Velcrypt-version och stegen som ledde till problemet."
  - "Supporten kan inte återställa mönster eller valv – vi har ingen åtkomst till dem."
  - "Ett oväntat tomt valv betyder oftast att ett något annorlunda mönster ritades."
  - "Skicka aldrig ditt mönster eller skärmdumpar av privat innehåll till oss."
primaryKeyword: "velcrypt support"
keywords: ["kontakta velcrypt", "velcrypt hjälp", "velcrypt öppnar inte valvet", "velcrypt felsökning", "velcrypt e-post"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: ContactPage
order: 5
related: [faq, forgot-vault-pattern, auto-lock, security, privacy]
faq:
  - q: "Kan Velcrypts support återställa mitt valv?"
    a: "Nej. Ditt mönster sparas aldrig och dina nycklar lämnar aldrig din iPhone, så supporten har inget sätt att öppna, nollställa eller återställa ett valv."
  - q: "Varför öppnar Velcrypt ett tomt valv i stället för mina bilder?"
    a: "Troligen ritade du ett mönster som skiljer sig från ditt vanliga med en punkt eller en riktning. Velcrypt behandlar varje mönster som ett eget valv, så ett nytt mönster öppnar ett nytt, tomt valv utan felmeddelande."
  - q: "Hur snabbt svarar Velcrypt på supportmejl?"
    a: "Vi läser varje meddelande och svarar så snart vi kan. Vi erbjuder ingen garanterad svarstid i nuläget."
  - q: "Ska jag skicka mitt mönster till supporten?"
    a: "Aldrig. Ingen hos Velcrypt behöver ditt mönster, och vi kommer aldrig att be om det. Beskriv problemet i stället."
---

De flesta frågor om Velcrypt besvaras under [vanliga frågor](id:faq). Om din inte gör det, eller om något inte fungerar som det ska, hjälper vi gärna till via e-post.

## Kontakta oss

Mejla **support@velcrypt.app**. Frågor om integritet skickar du till privacy@velcrypt.app; för mediefrågor, se [pressrummet](id:press).

Det finns inget konto och ingen chatt i appen, så e-post är den enda kanalen. Vi tar bara emot det du själv väljer att skicka.

## Det här bör du skriva med

För att vi snabbt ska förstå problemet, ange gärna:

1. Din iPhone-modell och iOS-version (Inställningar › Allmänt › Om).
2. Velcrypt-versionen, som visas under Inställningar › Allmänt › iPhone-lagring › Velcrypt.
3. Vad du försökte göra och vad som hände i stället.
4. Stegen som leder till problemet, om du kan återskapa det.
5. Eventuella felmeddelanden, utskrivna i text.

Skicka **inte** ditt mönster och bifoga inga skärmdumpar som visar privat innehåll. Vi behöver aldrig något av det.

## Det här kan supporten inte göra

Velcrypt är byggt så att ingen annan än du kan öppna dina valv – inte heller vi. Därför **kan** supporten inte:

- återställa eller nollställa ett glömt mönster,
- återskapa ett valv från en förlorad, trasig eller återställd iPhone,
- berätta hur många valv som finns på en enhet,
- dekryptera filer eller hämta innehåll åt dig.

Det är ingen policy vi kan ändra på begäran; det är så krypteringen fungerar. Sidan om [säkerhetsmodellen](id:security) förklarar varför, och [glömt valvmönstret](id:forgot-vault-pattern) tar upp vad du fortfarande kan prova själv.

## Snabb felsökning

### Mitt mönster öppnar ett tomt valv

Det här är den vanligaste frågan. Velcrypt har inget meddelande om ”fel mönster”: alla mönster appen inte sett tidigare öppnar helt enkelt ett nytt, tomt valv. Om du väntade dig dina bilder har du troligen ritat ett något annorlunda mönster – en extra punkt, ett missat hörn eller en annan startpunkt.

Lås appen och rita sedan mönstret igen, långsamt och noggrant. Prova de närliggande varianter du kommer ihåg. Ditt ursprungliga valv finns kvar, orört; det tomma ersätter det inte.

### Appen låses för snabbt

Velcrypt låses när appen går till bakgrunden, efter en fördröjning du kan ställa in. Om den låses när du snabbt byter till en annan app, öka fördröjningen för autolåset i Velcrypts inställningar. En kortare fördröjning är säkrare, så välj den kortaste som fortfarande fungerar för dig. Se [autolås](id:auto-lock).

### Importen misslyckas eller utrymmet tar slut

Krypterade kopior tar ungefär lika mycket plats som originalen. Kontrollera ledigt utrymme under Inställningar › Allmänt › iPhone-lagring. Kom ihåg att importen inte tar bort originalen från Bilder; att radera dem och tömma Nyligen raderade frigör utrymme – se [radera original efter import](id:delete-original-photos-after-import).

### Jag hittar inte en fil jag har importerat

Titta i andra album i samma valv och kontrollera att du öppnade det valv du tror. Objekt i ett valv syns aldrig från ett annat.
