---
pageId: set-up-decoy-vault-and-duress-pattern
title: "Så ställer du in ett lockbetesvalv och ett nödmönster"
description: "Steg för steg: säkerhetskopiera ditt riktiga valv, bygg ett trovärdigt lockbetesvalv och ställ in ett nödmönster i Velcrypt – och hur du stänger av det."
h1: "Så ställer du in ett lockbetesvalv och ett nödmönster i Velcrypt"
navTitle: "Ställ in lockbete och nödmönster"
answer: "Säkerhetskopiera först ditt riktiga valv under Inställningar → Säkerhetskopiering. Rita sedan, med Premium, ett nytt mönster för att skapa ett lockbetesvalv och fyll det med harmlöst innehåll. Öppna Inställningar → Nödmönster inifrån lockbetet, rita ett separat mönster två gånger och bekräfta. Ritar du det mönstret på låsskärmen öppnas lockbetet och alla andra valv raderas permanent."
keyFacts:
  - "Börja med en krypterad säkerhetskopia av ditt riktiga valv; den är enda vägen tillbaka efter att nödmönstret har använts."
  - "Ett lockbetesvalv är ett andra mönster med harmlöst, trovärdigt innehåll; det kräver Premium."
  - "Ställ in nödmönstret inifrån lockbetet, under Inställningar → Nödmönster."
  - "Nödmönstret måste vara nytt: det får inte vara ett mönster som öppnar något valv."
  - "Testa det aldrig på låsskärmen; öva i huvudet i stället."
  - "Ett nödmönster per iPhone; ett nytt ersätter det gamla, och att stänga av det raderar ingenting."
primaryKeyword: "ställa in lockbetesvalv"
keywords: ["ställa in nödmönster", "velcrypt nödmönster inställning", "skapa lockbetesvalv iphone", "skapa falskt valv", "nödmönster hur gör man"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Säkerhetskopiera först, bygg ett trovärdigt lockbetesvalv och ställ sedan in ett nödmönster i Velcrypt, med tips om att öva, byta och stänga av det."
category: security
order: 46
related: [duress-pattern, what-is-a-decoy-vault, hidden-vaults, pattern-lock, forgot-vault-pattern, pricing]
howTo:
  name: "Ställ in ett lockbetesvalv och ett nödmönster i Velcrypt"
  steps:
    - name: "Säkerhetskopiera ditt riktiga valv"
      text: "Öppna ditt riktiga valv, gå till Inställningar → Säkerhetskopiering → Säkerhetskopiera det här valvet, välj ett lösenord för säkerhetskopian på minst 8 tecken och spara .velcrypt-filen utanför appen, till exempel i iCloud Drive eller på en dator."
    - name: "Skapa ett lockbetesvalv"
      text: "Lås appen med Premium och rita ett nytt mönster som du aldrig har använt. Velcrypt öppnar ett nytt, tomt valv för det."
    - name: "Gör lockbetet trovärdigt"
      text: "Importera några dussin harmlösa vardagssaker, till exempel kvitton, id-kopior eller presentidéer, till ett par album."
    - name: "Öppna Inställningar → Nödmönster i lockbetet"
      text: "Gå till Inställningar → Nödmönster medan lockbetesvalvet är öppet och tryck på Ställ in nödmönster."
    - name: "Rita nödmönstret två gånger och bekräfta"
      text: "Rita ett separat mönster som inte öppnar något valv, rita det igen för att bekräfta, läs sedan varningen och tryck på Slå på."
    - name: "Öva utan att utlösa det"
      text: "Öva nödmönstret i huvudet eller på papper som du förstör efteråt, aldrig på låsskärmen."
faq:
  - q: "Behöver jag Premium för att ställa in ett lockbetesvalv och ett nödmönster?"
    a: "Ja. Gratisversionen har ett valv, och ett lockbete är ett andra valv. Nödmönstret ingår också i Premium. När det väl är inställt fortsätter det att fungera även om Premium upphör."
  - q: "Varför behöver jag en säkerhetskopia först?"
    a: "Eftersom nödmönstret permanent raderar alla valv utom lockbetet, och valvdata finns inte i iCloud- eller datorsäkerhetskopior. En krypterad säkerhetskopia som du sparat utanför appen är det enda sättet att få tillbaka ett raderat valv."
  - q: "Kan jag testa nödmönstret?"
    a: "Inte på låsskärmen: att rita det där raderar dina andra valv på riktigt. Öva det i huvudet i stället. Du kan kontrollera att du minns det under Inställningar → Nödmönster → Stäng av nödmönster, men att rita det där stänger av det, så du måste ställa in det igen."
  - q: "Kan jag ha mer än ett nödmönster?"
    a: "Nej. Det finns ett nödmönster per iPhone. Ställer du in ett nytt, från vilket lockbetesvalv som helst, ersätter det det gamla."
  - q: "Hur får jag tillbaka mitt riktiga valv efter att nödmönstret har använts?"
    a: "Rita ditt riktiga mönster, som nu öppnar ett nytt, tomt valv. Gå sedan till Inställningar → Säkerhetskopiering → Återställ från säkerhetskopia, välj din .velcrypt-fil och ange lösenordet för säkerhetskopian."
---

Den här guiden går igenom hela inställningen i Velcrypt: en säkerhetskopia av ditt riktiga valv, ett trovärdigt lockbetesvalv (i appen kallat skenvalv) och ett [nödmönster](id:duress-pattern) som öppnar lockbetet och i tysthet raderar alla andra valv på iPhonen. Det tar ungefär 15 minuter, och det mesta av tiden går åt till att få lockbetet att se äkta ut.

Innan du börjar, en kort påminnelse om vad nödmönstret gör. När någon ritar det på låsskärmen öppnar Velcrypt lockbetesvalvet och **raderar i samma ögonblick permanent alla andra valv på den iPhonen**. Upplåsningen ser ut och tar lika lång tid som vanligt, och inget på skärmen visar vad som har hänt. Det är hela poängen, och det är också därför det första steget är en säkerhetskopia.

## Det här behöver du

- **Velcrypt Premium.** Gratisversionen har ett valv med upp till 50 objekt. Ett lockbete är ett andra valv, och nödmönstret är en Premium-funktion. Se [priser](id:pricing).
- **En säker plats för en säkerhetskopia**, utanför appen: iCloud Drive, Filer på en annan enhet eller en dator.
- **Tre mönster som du kan hålla isär:** ditt riktiga, lockbetets och nödmönstret.

## Steg 1: Säkerhetskopiera ditt riktiga valv

Valvdata ingår inte i iCloud- eller datorsäkerhetskopior. Om nödmönstret någon gång används är det enda sättet att få tillbaka ditt riktiga valv en krypterad säkerhetskopia som du har gjort i förväg.

1. Rita ditt riktiga mönster för att öppna ditt riktiga valv.
2. Gå till **Inställningar → Säkerhetskopiering → Säkerhetskopiera det här valvet**.
3. Välj ett lösenord för säkerhetskopian på minst 8 tecken, ange det två gånger och tryck på **Skapa säkerhetskopia**.
4. Tryck på **Spara säkerhetskopia…** och spara .velcrypt-filen någon annanstans än på den här iPhonen.

Några saker att känna till:

- **Säkerhetskopieringen är gratis** och gäller det valv som är öppet. Har du flera privata valv, säkerhetskopiera vart och ett.
- **Nödmönstret rör inte säkerhetskopior** som ligger utanför appen.
- **Förvara lösenordet säkert.** Ett glömt lösenord för säkerhetskopian kan inte återställas, varken av dig eller av Velcrypt.
- **Tänk på vem som kommer åt filen.** Om personen du oroar dig för kan öppna ditt iCloud Drive eller din dator, välj en annan plats. Filen är krypterad, men att den finns visar att det finns ett valv att återställa.

Gör om säkerhetskopian då och då, eftersom den bara innehåller det som fanns i valvet när du gjorde den.

## Steg 2: Skapa lockbetesvalvet

I Velcrypt är varje mönster ett eget valv, och ett mönster som appen aldrig har sett öppnar ett nytt, tomt valv. Att skapa ett lockbete är alltså bara att rita ett nytt mönster.

1. Lås appen.
2. Rita ett nytt mönster: en sammanhängande linje genom minst 6 punkter på rutnätet med 5×5 punkter, med minst en riktningsändring. Gör det tydligt annorlunda än ditt riktiga mönster, både i form och startpunkt.
3. Velcrypt öppnar ett nytt, tomt valv. Det är ditt lockbete.

Sidan om [mönsterlås](id:pattern-lock) förklarar vad som gör ett mönster starkt, och den kostnadsfria [mönsterstyrkekontrollen](id:pattern-strength-checker) kan hjälpa dig att jämföra idéer. Testa aldrig dina riktiga mönster på en webbplats.

## Steg 3: Gör lockbetet trovärdigt

Ett tomt valv väcker misstankar. Ett lockbete fungerar när någon tittar på det och tänker: ”Jaså, det är bara det där.”

- **Ge det ett skäl att finnas:** kopior av id-handlingar och försäkringskort, kvitton och garantier, skärmbilder av bokningar, presentidéer.
- **Importera några dussin riktiga saker** till ett par album.
- **Håll det aktuellt.** Lägg till något med några veckors mellanrum så att det nyaste objektet inte är månader gammalt.

Velcrypt ber dig också lägga till något innan ett valv kan få ett nödmönster, eftersom nödmönstret öppnar just det här valvet. [Vad är ett lockbetesvalv?](id:what-is-a-decoy-vault) har fler idéer och förklarar vad som avslöjar ett lockbete.

## Steg 4: Ställ in nödmönstret

Gör det här inifrån lockbetesvalvet. Nödmönstret öppnar alltid det valv där det ställdes in.

1. Gå till **Inställningar → Nödmönster** medan lockbetesvalvet är öppet.
2. Läs de tre korta förklaringarna och tryck sedan på **Ställ in nödmönster**.
3. **Rita ett nödmönster.** Det måste vara ett nytt mönster som inte öppnar något valv; gör det det ber Velcrypt dig välja ett annat.
4. **Rita det igen för att bekräfta.**
5. Läs varningen, ”Ritar du det på låsskärmen öppnas det här valvet och alla andra valv på den här iPhonen raderas permanent”, och tryck på **Slå på**.

Om lockbetet är det enda valvet på iPhonen varnar Velcrypt dig för att nödmönstret inte skulle radera något. Skapa då först lockbetet med ett annat mönster än ditt riktiga valv.

### Så väljer du nödmönster

- Gör det **lätt att rita under stress**, smidigt och utan att tveka.
- Gör det **omöjligt att blanda ihop med ditt riktiga mönster**. Ritar du nödmönstret av misstag raderas ditt riktiga valv.
- Överväg att låta det **se lika krävande ut** som ditt riktiga, så att det inte ser annorlunda ut för någon som tittar.

## Steg 5: Öva, utan att utlösa det

Testa aldrig nödmönstret på låsskärmen. Det är inget test; det raderar verkligen dina andra valv.

Öva det i stället i huvudet, rita det med fingret på en yta eller skissa det på papper som du förstör efteråt. Öva tills du kan rita både lockbetets mönster och nödmönstret utan att tänka, även när någon tittar.

## Att leva med ett nödmönster

- **Inget visar att det är inställt.** Velcrypt visar aldrig om ett nödmönster finns. I bakgrunden finns alltid en krypterad post med fast storlek i iOS-nyckelringen, med slumpmässiga byte när inget är inställt.
- **Ett per iPhone.** Ställer du in ett nytt nödmönster ersätter det det gamla.
- **För att stänga av det:** gå till **Inställningar → Nödmönster → Stäng av nödmönster** och rita det. Att rita det där stänger bara av det; inget raderas.
- **Om Premium upphör** fortsätter nödmönstret att fungera. Det är bara inställningen som kräver Premium.

## Om nödmönstret någon gång används

Dina andra valv är borta från den iPhonen. Så återställer du ett:

1. Rita ditt riktiga mönster. Det öppnar nu ett nytt, tomt valv.
2. Gå till **Inställningar → Säkerhetskopiering → Återställ från säkerhetskopia**.
3. Välj din .velcrypt-fil och ange lösenordet för säkerhetskopian.

Gör det bara när det är säkert. Om personen som tvingade dig att låsa upp telefonen fortfarande finns i närheten kan en omedelbar återställning göra att skälet till att du använde nödmönstret går förlorat.

## Begränsningar att ha i åtanke

- **Kopior utanför Velcrypt finns kvar.** Radera originalen från Bilder och Nyligen raderade efter importen; se [att radera originalen efter import](id:delete-original-photos-after-import).
- **Flashminne ger ingen garanti för fysisk radering.** Valvdata krypteras med AES-256-GCM och nycklarna raderas tillsammans med valvkatalogerna, så det som ligger kvar är oläsbart.
- **Det stoppar inte någon som har sett dig rita ditt riktiga mönster.**
- **Det är ett verktyg för personlig säkerhet.** Använd det aldrig för att förstöra bevis eller för att trotsa ett lagligt krav från polis, gränstjänstemän eller en domstol. Lagarna skiljer sig mellan länder, och att radera data när det finns ett rättsligt krav kan i sig vara ett brott; sök juridisk rådgivning om det gäller dig.

Ställer du in det här på grund av en viss person tar [vad du gör om någon tvingar dig att låsa upp mobilen](id:forced-to-unlock-phone) upp helheten kring din säkerhet. Är du rädd för att glömma ett mönster, läs först [glömt mönster till fotovalvet](id:forgot-vault-pattern).
