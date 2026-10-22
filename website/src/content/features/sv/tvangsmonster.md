---
pageId: duress-pattern
title: "Nödmönster: öppna ett lockbete, radera alla andra valv"
description: "Velcrypts nödmönster öppnar ditt lockbetesvalv och raderar i tysthet och permanent alla andra valv på iPhonen. Så fungerar det, inställning och gränser."
h1: "Nödmönster"
navTitle: "Nödmönster"
answer: "Nödmönstret är en Premium-funktion i Velcrypt 1.0. Du ställer in det inifrån ett lockbetesvalv. Om du någon gång ritar det på låsskärmen öppnar Velcrypt lockbetesvalvet och raderar samtidigt, i tysthet och permanent, alla andra valv på iPhonen. Inget på skärmen visar att det har hänt."
keyFacts:
  - "Finns nu i Velcrypt 1.0 som en del av Premium."
  - "Ställs in under Inställningar → Nödmönster, inifrån ett lockbetesvalv."
  - "Att rita det öppnar lockbetet och raderar permanent alla andra valv på den iPhonen."
  - "Upplåsningen ser likadan ut och tar lika lång tid som en vanlig upplåsning."
  - "Appen visar aldrig om ett nödmönster är inställt."
  - "Raderade valv kan bara återställas från en krypterad säkerhetskopia som du gjort tidigare."
  - "Det är ett verktyg för din personliga säkerhet, inte juridisk rådgivning eller ett sätt att kringgå lagliga krav."
primaryKeyword: "nödmönster valvapp"
keywords: ["nödlösenord iphone", "paniklösenord fotovalv", "panikkod app", "skydd mot tvingad upplåsning", "självförstörande valv mönster"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Ett separat mönster som öppnar ditt lockbetesvalv och i tysthet, permanent raderar alla andra valv på iPhonen. Premium."
status: available
schemaType: WebPage
order: 3
related: [set-up-decoy-vault-and-duress-pattern, duress-password-explained, forced-to-unlock-phone, self-destruct-photo-vault, hidden-vaults, what-is-a-decoy-vault, plausible-deniability-explained]
howTo:
  name: "Ställ in ett nödmönster i Velcrypt"
  steps:
    - name: "Gör en krypterad säkerhetskopia av ditt riktiga valv"
      text: "Öppna ditt riktiga valv, gå till Inställningar → Säkerhetskopiering och spara en lösenordsskyddad .velcrypt-fil någonstans utanför appen, till exempel i Filer eller på en dator."
    - name: "Öppna ditt lockbetesvalv"
      text: "Rita mönstret till ett andra valv med harmlöst, trovärdigt innehåll. Fler valv än det första kräver Premium."
    - name: "Öppna Inställningar → Nödmönster"
      text: "Öppna Inställningar inifrån lockbetesvalvet och välj Nödmönster."
    - name: "Rita ett nytt nödmönster två gånger"
      text: "Rita ett separat mönster som inte öppnar något valv och rita det sedan igen för att bekräfta."
    - name: "Bekräfta"
      text: "Läs varningen och bekräfta. Från och med nu öppnar det mönstret på låsskärmen det här lockbetet och raderar alla andra valv på iPhonen."
faq:
  - q: "Finns nödmönstret i Velcrypt nu?"
    a: "Ja. Det ingår i Velcrypt 1.0 som en del av Premium. Du ställer in det under Inställningar → Nödmönster medan ett lockbetesvalv är öppet."
  - q: "Vad händer när någon ritar nödmönstret?"
    a: "Velcrypt öppnar lockbetesvalvet som mönstret ställdes in i och raderar samtidigt, i tysthet och permanent, alla andra valv på den iPhonen. Inget meddelande, ingen animation och ingen fördröjning avslöjar det."
  - q: "Kan någon se om jag har ett nödmönster?"
    a: "Inte i appen. Velcrypt visar aldrig om ett nödmönster är inställt. En krypterad post med fast storlek finns alltid i nyckelringen, fylld med slumpmässiga byte när inget nödmönster är inställt, så posten ser likadan ut i båda fallen."
  - q: "Kan jag få tillbaka de raderade valven?"
    a: "Inte från telefonen. Den enda vägen tillbaka är en krypterad säkerhetskopia som du tidigare skapat under Inställningar → Säkerhetskopiering och sparat utanför appen. Nödmönstret rör inte säkerhetskopior som ligger någon annanstans."
  - q: "Måste jag fortsätta betala för Premium för att det ska fungera?"
    a: "Nej. Det krävs Premium för att ställa in det, men ett nödmönster som redan är inställt fortsätter att fungera om Premium upphör."
  - q: "Hur stänger jag av nödmönstret?"
    a: "Under Inställningar → Nödmönster trycker du på Stäng av nödmönster och ritar nödmönstret. Att rita det där stänger bara av det; inget raderas."
  - q: "Kan nödmönstret radera bilder som jag redan har delat?"
    a: "Nej. Det raderar bara Velcrypts egna valv på den telefonen. Kopior i ditt bildbibliotek, iCloud, chattar, e-post, en säkerhetskopia eller på någon annans enhet når det inte."
  - q: "Är det lagligt att använda ett nödmönster?"
    a: "Det beror på var du befinner dig och på situationen. Att radera data när polis, gränstjänstemän eller en domstol lagligen kräver åtkomst kan i sig vara ett brott. Nödmönstret är tänkt för situationer som gäller din personliga säkerhet, inte för att förstöra bevis. Om ett rättsligt krav är inblandat, sök juridisk rådgivning."
---

Ibland är risken inte en stulen telefon utan en person som står framför dig och kräver att du öppnar appen. Ett [lockbetesvalv](id:what-is-a-decoy-vault) hjälper i många sådana stunder. Nödmönstret går längre: det öppnar lockbetet **och** raderar permanent alla andra valv på iPhonen, så att dina privata valv inte längre går att öppna där, inte ens senare.

Det ingår i Premium i Velcrypt 1.0.

## Vad nödmönstret gör

Ett nödmönster är ett separat upplåsningsmönster som du bara använder under press. I Velcrypt fungerar det så här:

1. Du ställer in det i förväg, inifrån ett lockbetesvalv: ett andra valv fyllt med harmlöst, trovärdigt innehåll.
2. Om du någon gång tvingas låsa upp appen ritar du nödmönstret i stället för ditt riktiga.
3. Velcrypt öppnar lockbetesvalvet, precis som vid en vanlig upplåsning.
4. I samma ögonblick raderas alla andra valv på den iPhonen, i tysthet och permanent.

Inget på skärmen berättar för den andra personen vad som hänt. Det kommer ingen varning, ingen animation och ingen extra fördröjning: upplåsningen ser ut och tar lika lång tid som alla andra.

## Så ställer du in det

Du behöver Premium, eftersom nödmönstret hör till ett andra valv och fler valv än det första är en Premium-funktion.

1. **Säkerhetskopiera ditt riktiga valv först.** Öppna det, gå till **Inställningar → Säkerhetskopiering** och spara den lösenordsskyddade .velcrypt-filen någonstans utanför appen, till exempel i Filer, iCloud Drive eller på en dator. Det är det enda sättet att få tillbaka valvet om nödmönstret någon gång används.
2. **Öppna ditt lockbetesvalv.** Har du inget än ritar du ett nytt mönster för att skapa det och lägger till lite vardagligt innehåll; Velcrypt ber dig lägga till något innan ett valv kan få ett nödmönster. Guiden om [lockbetesvalv](id:what-is-a-decoy-vault) förklarar hur du gör det trovärdigt.
3. **Gå till Inställningar → Nödmönster** medan lockbetesvalvet är öppet.
4. **Rita nödmönstret två gånger.** Det måste vara ett nytt mönster som inte öppnar något befintligt valv.
5. **Läs varningen och bekräfta.** Öva sedan mönstret i huvudet, inte på låsskärmen: att rita det där raderar dina andra valv.

Hela genomgången, med tips för att öva, finns i [så ställer du in ett lockbetesvalv och ett nödmönster](id:set-up-decoy-vault-and-duress-pattern).

### Regler som är bra att känna till

- **Ett per iPhone.** Det finns bara ett nödmönster på en enhet. Ställer du in ett nytt ersätter det det gamla.
- **För att stänga av det** ritar du nödmönstret under Inställningar → Nödmönster. Att rita det där stänger bara av det; inget raderas.
- **Det fortsätter att fungera om Premium upphör.** Det är bara inställningen som kräver Premium.
- **Ställ in det i ett lockbete, inte i ditt enda valv.** Är lockbetet det enda valvet på telefonen finns det inget för nödmönstret att radera. Velcrypt varnar dig i så fall.

## Inget avslöjar att det finns

Ett nödmönster är bara användbart om ingen kan se att det finns. Velcrypt visar aldrig om ett är inställt, varken i gränssnittet eller i inställningarna. I bakgrunden finns alltid en krypterad post med fast storlek i iOS-nyckelringen; när inget nödmönster är inställt innehåller den slumpmässiga byte. Posten ser alltså likadan ut oavsett om du använder funktionen eller inte.

Det bygger vidare på [dolda valv](id:hidden-vaults): varje mönster öppnar sitt eget valv, det finns ingen valvlista och ett okänt mönster öppnar ett tomt valv utan felmeddelande. Tanken bakom båda förklaras i [trovärdig förnekelse, förklarat](id:plausible-deniability-explained).

## När det kan hjälpa

Nödmönstret är tänkt för situationer som gäller din personliga säkerhet, till exempel:

- **En kontrollerande eller våldsam partner** som kräver att få se allt i din telefon.
- **Ett rån eller ett hot**, där någon tvingar dig att låsa upp saker på plats.
- **Envist snokande** från någon som inte nöjer sig med lockbetet och kommer att fortsätta fråga.

Befinner du dig i en sådan situation tar guiden om [vad du gör om någon tvingar dig att låsa upp mobilen](id:forced-to-unlock-phone) upp helheten, bland annat när du bör kontakta stödorganisationer.

## Ärliga begränsningar

**Det är permanent.** Raderade valv kan inte återställas från telefonen. Valvdata ingår inte i iCloud- eller datorsäkerhetskopior, så den enda vägen tillbaka är en krypterad säkerhetskopia som du gjort tidigare. Säkerhetskopior som sparats utanför appen påverkas inte.

**Flashminne har gränser.** Som alla appar kan Velcrypt inte garantera att raderade byte fysiskt försvinner från flashminnet. Det Velcrypt garanterar är att valvdata krypteras med AES-256-GCM och att nycklarna raderas tillsammans med valvkatalogerna, så att det som eventuellt ligger kvar är oläsbar chiffertext.

**Det kan inte ångra kopior.** Om en bild fortfarande finns i ditt bildbibliotek, i Nyligen raderade, i iCloud-bilder, i en chatt eller i någon annans telefon ligger den kvar där. [Radera originalen efter importen](id:delete-original-photos-after-import).

**Det stoppar inte iakttagelse.** Om någon har sett dig rita ditt riktiga mönster eller filmat skärmen ändrar nödmönstret inte vad de såg. Rita det i skydd från insyn.

**Din säkerhet går först.** En del kan reagera illa om de misstänker att något har gömts eller tagits bort. Ett nödmönster är ett alternativ, aldrig en skyldighet. Du är den som bäst kan bedöma om det är säkert att använda det.

**Det är inget sätt att kringgå lagen.** Använd det aldrig för att förstöra bevis eller för att trotsa ett lagligt krav från polis, gränstjänstemän eller en domstol. Lagar om genomsökning av enheter och radering av data skiljer sig mellan länder, och att radera data när det finns ett rättsligt krav kan i sig vara ett brott. Om ett rättsligt krav är inblandat, sök juridisk rådgivning. [Guiden om gränspassager](id:phone-privacy-border-crossing) tar upp resor.

## Pris

Nödmönstret ingår i Premium, tillsammans med obegränsat antal objekt, fler valv och alternativa appikoner. Krypterad säkerhetskopiering är fortfarande gratis för alla. Se [priser](id:pricing) för abonnemangen.
