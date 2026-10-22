---
pageId: forgot-vault-pattern
title: "Glömt lösenord eller mönster till ditt fotovalv?"
description: "Glömt lösenordet eller mönstret till ditt fotovalv? Vad du kan prova först, varför Velcrypt inte kan nollställa mönster och hur en säkerhetskopia hjälper."
h1: "Glömt lösenord eller mönster till fotovalvet? Det här kan du göra – och inte"
navTitle: "Glömt mönstret till valvet"
answer: "I Velcrypt kan ett glömt mönster inte nollställas eller återställas, varken av dig eller av Velcrypt, eftersom nyckeln bara finns i ditt minne och ingen server har en kopia. Du kan lugnt prova närliggande varianter, eller återställa innehållet från en krypterad säkerhetskopia om du har skapat en. Andra valvappar kan erbjuda återställning via e-post eller konto; kontrollera vad din app använder."
keyFacts:
  - "Velcrypt har ingen återställning, ingen e-post för återställning och ingen återställningsfras: nycklarna härleds från ditt mönster på enheten."
  - "Ett felaktigt mönster i Velcrypt öppnar ett tomt valv i stället för att visa ett fel, så ett tomt valv betyder ofta ett något annorlunda mönster."
  - "Valvdata undantas från iCloud- och datorsäkerhetskopior."
  - "Har du skapat en krypterad säkerhetskopia kan innehållet återställas från den, men bara med lösenordet för säkerhetskopian."
  - "Om en förlust vore outhärdlig, skapa en krypterad säkerhetskopia och spara den på ett ställe du litar på."
primaryKeyword: "glömt lösenord fotovalv"
keywords: ["glömt mönster valv", "återställa fotovalv", "glömt pin-kod fotovalv app", "nollställa valvmönster", "utelåst från fotovalv"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Vad du provar först, varför Velcrypt inte kan nollställa ett glömt mönster, hur andra appar hanterar återställning och vanor som förebygger utelåsning."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "Kan Velcrypts support nollställa mitt mönster?"
    a: "Nej. Velcrypt har inget konto och ingen server, och dina nycklar härleds från mönstret i din iPhone. Det finns inget teamet kan nollställa eller slå upp, vilket också är skälet till att ingen annan kan ta sig in."
  - q: "Mitt valv ser plötsligt tomt ut. Är min data borta?"
    a: "Förmodligen inte. I Velcrypt öppnar ett mönster som appen inte har sett ett nytt, tomt valv, så ett tomt valv betyder oftast att du ritade ett något annorlunda mönster. Stäng appen och försök igen noggrant, och undvik att lägga till något i det tomma valvet."
  - q: "Kan jag installera om Velcrypt för att börja om och behålla bilderna?"
    a: "Nej. Om du raderar appen raderas dess krypterade data från enheten. En ominstallation ger dig en ren app, inte åtkomst till de gamla valven. Radera den bara om du har accepterat att innehållet är borta."
  - q: "Hur hanterar andra fotovalv-appar en glömd PIN-kod?"
    a: "Många kontobaserade appar låter dig nollställa PIN-koden via e-post eller ett molnkonto, vilket betyder att det finns en återställningsväg utanför ditt minne. Kontrollera appens hjälpsidor innan du behöver dem, och tänk på att en återställningsväg också kan vara en väg in för någon annan."
  - q: "Kan en säkerhetskopia rädda ett valv med glömt mönster?"
    a: "Innehållet, ja, om du skapade en krypterad säkerhetskopia innan du glömde mönstret. Öppna ett valv med ett nytt mönster, välj Återställ från säkerhetskopia och ange lösenordet för säkerhetskopian. Du får tillbaka innehållet så som det var när säkerhetskopian skapades. Glömmer du lösenordet kan den inte heller öppnas."
---

Den sjunkande känslan när formen du har ritat hundra gånger plötsligt inte fungerar är verklig. Först av allt: radera inte appen och installera inte om den. De flesta ”glömda” mönster visar sig vara mönster du minns lite fel, och det finns förnuftiga saker att prova först.

## Prova det här först (i Velcrypt)

Velcrypt beter sig annorlunda än de flesta appar när du ritar fel mönster. Appen visar inget felmeddelande. Varje mönster som den inte har sett tidigare öppnar helt enkelt ett nytt, tomt valv. Om ditt valv ser tomt ut är den troligaste förklaringen alltså att du ritade ett något annorlunda mönster, inte att din data har försvunnit.

Gå lugnt igenom de här stegen:

1. **Lägg inte till något i det tomma valvet.** Importerar du objekt dit skapar du ett nytt valv under det felaktiga mönstret, vilket ställer till förvirring senare.
2. **Stäng appen och börja om.** Velcrypt låses när appen går till bakgrunden (efter den fördröjning du har valt), vilket ger dig en ny upplåsningsskärm.
3. **Kontrollera startpunkten.** Ett mönster är en följd av punkter, så att börja från andra änden av samma form är i regel ett annat mönster.
4. **Kontrollera överhoppade eller extra punkter.** På ett 5×5-rutnät kan en rak linje lätt passera en punkt mer eller mindre än du tänkt.
5. **Tänk på hur du brukar sitta.** Muskelminnet hänger ihop med kroppsställningen. Försök rita i den ställning du brukar låsa upp i: med en hand, med två händer, sittande.
6. **Skissa på papper.** Rita 5×5-rutnätet och skissa mönstret ur minnet, och jämför sedan varianter. Förstör papperet efteråt.
7. **Ta en paus.** Minnet fungerar sämre under stress. Att försöka igen senare, utvilad, fungerar ofta.

## Om det verkligen är borta

Om inget av det fungerar är det ärliga svaret att mönstret inte kan återställas. Inte av dig, inte av Velcrypt, inte av någon. Det enda undantaget gäller innehållet: har du skapat en krypterad säkerhetskopia kan du återställa det därifrån (se nedan).

Det är inget policybeslut som kan kringgås. Det är så krypteringen fungerar:

- Velcrypt har inget konto, ingen e-post och ingen server. Läs mer om [offline utan konto](id:offline-no-account).
- Dina valvnycklar låses upp av en nyckel som härleds från ditt mönster på enheten, med PBKDF2 och ett salt som förvaras i iOS-nyckelringen. Utan mönstret kan den nyckeln inte tas fram.
- Valvets data är krypterad med AES-256-GCM, som inte kan knäckas med totalsökning. Varför förklaras i [AES-256-kryptering förklarad](id:aes-256-encryption-explained).
- Valvdata undantas från iCloud- och Finder/iTunes-säkerhetskopior, så det finns ingen automatisk äldre kopia att återställa från.

Samma egenskaper som gör ditt valv privat gör ett glömt mönster slutgiltigt. Ett system med en knapp för ”Glömt mönstret?” behåller nödvändigtvis en väg in som inte bara beror på dig.

### Om du har en krypterad säkerhetskopia

Om du någon gång har skapat en krypterad säkerhetskopia av valvet under Inställningar → Säkerhetskopiering finns innehållet kvar i den filen. Rita ett nytt mönster för att öppna ett valv, välj Återställ från säkerhetskopia, välj filen och ange lösenordet för säkerhetskopian. Du får tillbaka det som fanns i valvet när säkerhetskopian skapades, inte det som lades till senare. Lösenordet för säkerhetskopian kan inte heller återställas, så glömmer du det är filen oanvändbar.

### Och de andra valven?

Eftersom varje mönster är ett eget valv påverkar ett glömt mönster inte de andra. Om du minns mönstret till ditt [lockbetesvalv](id:what-is-a-decoy-vault) öppnas det valvet som vanligt.

## Varför ”ingen återställning” är en medveten avvägning

Återställningsfunktioner skapar alltid en andra nyckel. Återställning via e-post kan utlösas av vem som helst med åtkomst till din inkorg. Molnbackuper kan återställas av vem som helst som tar sig in på kontot. Säkerhetsfrågor går ofta att gissa via sociala medier.

Velcrypt valde att inte ha någon andra nyckel. Det utesluter en hel kategori av attacker och betyder att det inte finns något att begära ut, läcka eller nätfiska. Priset är att du ensam bär ansvaret för att komma ihåg mönstret. För många är den avvägningen värd det; för visst innehåll är den det inte. Bestäm vilken sorts innehåll du sparar.

## Så undviker du att låsas ute

### Välj ett mönster som är starkt men lätt att minnas

Styrka och minnesvärdhet är inga motsatser. Ett bra mönster på 5×5-rutnätet:

- använder 8–12 punkter och byter riktning flera gånger,
- börjar inte i ett hörn och bildar inte en bokstav,
- har en personlig logik som bara du känner till, som en form kopplad till en plats eller en rörelse som känns naturlig för dig.

Testa en liknande form (inte ditt riktiga mönster) med [verktyget för mönsterstyrka](id:pattern-strength-checker), och läs [mönsterlås, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id) om vad som gör mönster svaga.

### Öva på det

- Öppna valvet regelbundet de första veckorna så att rörelsen sätter sig i muskelminnet.
- Undvik att byta mönster precis före en stressig period, som en resa.
- Om du har flera valv bör mönstren vara tydligt olika så att du inte blandar ihop dem.

### Behåll original där en förlust skulle göra ont

Om det verkligen vore outhärdligt att förlora en bild eller ett dokument ska ett valv inte vara det enda stället där det finns. Ha en extra kopia av sådant som inte går att ersätta på ett ställe du litar på, till exempel en krypterad disk förvarad säkert. Det är en medveten avvägning: varje extra kopia är ytterligare ett ställe att skydda.

### Skriv inte ned mönstret nära telefonen

Om du måste ha en skriftlig påminnelse, gör den till något bara du kan tolka och förvara den långt från enheten.

## Om du använder en annan valvapp

Återställning skiljer sig mycket mellan appar. Kontrollera innan du behöver det:

- **Finns det ett konto?** Appar med inloggning via e-post tillåter ofta att PIN-koden nollställs via den e-posten.
- **Finns det molnbackup?** Vissa appar kan återställa innehåll efter en ominstallation om det har synkats till deras servrar.
- **Finns det en återställningskod?** Vissa appar skapar en vid installationen. Om du inte sparade den hjälper den inte.
- **Vad står på hjälpsidan?** Leta efter leverantörens officiella instruktioner för återställning. Var försiktig med ”upplåsningsverktyg” från tredje part; de fungerar sällan och kan vara bedrägerier.

Guiden om [fotovalv utan konto](id:photo-vault-without-account) förklarar avvägningarna mellan kontobaserade appar och appar som bara finns på enheten.

## Var Velcrypt passar in

Velcrypt är av princip ett valv som bara finns på enheten: inget konto, ingen server, ingen återställningsfras, ingen kopia av dina nycklar någon annanstans. Det enda skyddsnätet är en krypterad säkerhetskopia som du själv skapar och sparar, gratis i alla versioner. Om du är osäker kan [supporten](id:support) förklara hur appen beter sig, men ingen där kan öppna ett valv åt dig.
