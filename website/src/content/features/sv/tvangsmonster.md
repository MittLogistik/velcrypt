---
pageId: duress-pattern
title: "Tvångsmönster (planerat): skydda valv under press"
description: "Tvångsmönstret är en planerad funktion i Velcrypt: ett mönster som öppnar ett valt valv och tyst tar bort åtkomsten till de andra. Finns inte än."
h1: "Tvångsmönster (planerat)"
navTitle: "Tvångsmönster (planerat)"
answer: "Tvångsmönstret är en planerad funktion som ännu inte finns i appen, utan är tänkt för en framtida uppdatering. Du ska kunna ställa in ett särskilt mönster som öppnar ett valv du väljer och i tysthet tar bort åtkomsten till dina andra valv, för stunder då du pressas att låsa upp appen."
keyFacts:
  - "Status: planerad till en framtida uppdatering. Finns ännu inte i appen."
  - "Ett särskilt mönster ska öppna ett valt valv."
  - "Samtidigt ska det i tysthet ta bort åtkomsten till de andra valven."
  - "Det kan inte återkalla kopior som finns utanför Velcrypt."
  - "Det är ett integritetsverktyg, inte juridisk rådgivning eller ett sätt att kringgå lagliga beslut."
primaryKeyword: "tvångsmönster valvapp"
keywords: ["tvångslösenord iphone", "panikmönster fotovalv", "panikkod app", "skydd mot tvingad upplåsning", "självförstörande valv mönster"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Planerat: ett särskilt mönster som öppnar ett valt valv och tyst tar bort åtkomsten till de andra."
status: coming-soon
schemaType: WebPage
order: 3
related: [hidden-vaults, pattern-lock, what-is-a-decoy-vault, plausible-deniability-explained, phone-privacy-border-crossing]
faq:
  - q: "Finns tvångsmönstret i Velcrypt redan nu?"
    a: "Nej. Det är en planerad funktion för en framtida uppdatering, utan datum. Fram till dess kan du använda dolda valv och ett lockbetesvalv, som finns redan i dag med Premium."
  - q: "Vad händer när någon ritar tvångsmönstret?"
    a: "Planen är att det öppnar ett valv du valt i förväg och samtidigt i tysthet tar bort åtkomsten till dina andra valv. Inget på skärmen kommer att visa att något annat har hänt."
  - q: "Kan tvångsmönstret radera bilder som jag redan har delat?"
    a: "Nej. Det kan bara påverka det som finns i Velcrypt på den telefonen. Kopior i ditt bildbibliotek, iCloud, chattar, e-post eller på någon annans enhet når det inte."
  - q: "Är det lagligt att använda ett panikmönster?"
    a: "Det beror på var du befinner dig och på situationen. Att ta bort data medan myndigheter lagligen granskar en enhet kan vara ett brott i vissa länder. Velcrypt kan inte ge juridisk rådgivning; om det här är viktigt för dig, tala med en jurist."
---

Ibland är risken inte en stulen telefon utan en person som står framför dig och ber dig öppna appen. Tvångsmönstret är Velcrypts planerade svar på den stunden. Det finns inte än: det är en **planerad funktion** för en framtida uppdatering, och den här sidan beskriver vad den är tänkt att göra.

## Vad tvångsmönstret ska göra

Ett tvångsmönster är ett särskilt upplåsningsmönster som är tänkt att användas när du pressas eller tvingas. I Velcrypt är det planerat att fungera så här:

1. I förväg ställer du in ett tvångsmönster och väljer vilket valv det ska öppna, oftast ett [lockbetesvalv](id:what-is-a-decoy-vault) med vardagligt innehåll.
2. Om du någon gång tvingas låsa upp appen ritar du tvångsmönstret i stället för ditt riktiga.
3. Velcrypt öppnar det valda valvet som vanligt.
4. I bakgrunden tar appen i tysthet bort åtkomsten till dina andra valv på enheten.

Utifrån händer inget ovanligt. Det kommer ingen varning, ingen animation och inget meddelande om att något tagits bort.

## Så bygger det vidare på dolda valv

Velcrypt ger dig redan [dolda valv](id:hidden-vaults): varje mönster öppnar sitt eget valv, det finns ingen valvlista och ett okänt mönster öppnar ett tomt valv utan felmeddelande. Det gör det redan svårt för någon att bevisa att det finns fler valv. Gratisversionen har ett valv, så fler valv och lockbetesvalv kräver Premium.

Tvångsmönstret lägger till ett andra lager. Ett lockbete förutsätter att den andra personen tror på dig. Tvångsmönstret är tänkt för lägen där det kanske inte räcker, till exempel om du räknar med att bli tillfrågad flera gånger eller att ditt riktiga mönster ska krävas senare. När det väl har använts går de andra valven inte längre att nå på telefonen. Tanken bakom båda funktionerna förklaras i [trovärdig förnekelse, förklarat](id:plausible-deniability-explained).

## När det kan spela roll

Få planerar för tvång, men vissa situationer gör det mer sannolikt:

- **En kontrollerande eller våldsam relation**, där en partner kräver att få se allt i din telefon.
- **Journalister och forskare** som bär på material som kan avslöja källor.
- **Resor genom platser med närgångna kontroller av enheter**, som tas upp i [mobilintegritet vid gränspassager](id:phone-privacy-border-crossing).
- **Stöld eller rån**, där någon tvingar dig att låsa upp saker på plats.

I alla fallen är målet detsamma: att ge dig ett sätt att till synes gå med på kravet medan dina känsligaste filer förblir utom räckhåll.

## Ärliga begränsningar

Ett tvångsmönster är ett kraftfullt verktyg, och det har lika verkliga begränsningar. Det är bättre att känna till dem nu än att upptäcka dem senare.

**Det kan inte ångra kopior.** Det påverkar bara Velcrypts egna valv på den enheten. Om en bild fortfarande finns i ditt bildbibliotek, i Nyligen raderade, i iCloud-bilder, i en chatt eller i någon annans telefon ligger den kvar där. Rensa bort originalen efter importen; guiden om [att radera originalen efter import](id:delete-original-photos-after-import) visar hur.

**Räkna med att det är permanent.** Valvdata ingår inte i iCloud-säkerhetskopior eller säkerhetskopior på dator, så du bör utgå från att åtkomst som tagits bort inte går att återställa på telefonen. Använd det bara när du verkligen accepterar att förlora de filerna.

**Det stoppar inte iakttagelse.** Om någon har sett dig rita ditt riktiga mönster, eller filmat skärmen, ändrar tvångsmönstret inte vad de såg.

**Tvång är oförutsägbart.** En del kan reagera illa om de misstänker att något har gömts eller tagits bort. Din fysiska säkerhet är viktigare än någon fil. Ett tvångsmönster är ett alternativ, ingen skyldighet, och du är den som bäst kan bedöma om det är säkert att använda det.

**Det är ingen juridisk rådgivning.** Lagar om genomsökning av enheter, tvingad upplåsning och förstörelse av data skiljer sig mellan länder och situationer. På vissa platser kan det i sig vara ett brott att ta bort data under en officiell kontroll. Velcrypt kan inte säga vad som är lagligt där du är; om mycket står på spel, fråga en jurist innan du reser eller agerar.

## Tills det finns på plats

Du kan redan förbereda dig med funktioner som finns i dag. Skapa ett trovärdigt lockbetesvalv (med Premium), välj ett starkt [mönster](id:pattern-lock) för ditt riktiga valv och håll känsliga original borta från kamerarullen. Om tvångsmönstret lanseras passar det in i den uppsättningen.
