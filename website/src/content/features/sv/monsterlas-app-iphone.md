---
pageId: pattern-lock
title: "Mönsterlås för iPhone: lås upp valvet på ett 5×5-rutnät"
description: "Velcrypt låses upp med ett mönster på ett rutnät med 5×5 punkter. Se reglerna, hur du ritar ett starkt mönster och varför Face ID saknas."
h1: "Mönsterlås: ett 5×5-rutnät som bara ditt minne kan öppna"
navTitle: "Mönsterlås"
answer: "Velcrypt öppnas med ett mönster som du ritar på ett rutnät med 5×5 punkter: en sammanhängande linje genom minst 6 punkter med minst ett riktningsbyte. Mönster på 8–12 punkter rekommenderas, och Face ID och Touch ID saknas medvetet."
keyFacts:
  - "Du låser upp genom att rita en sammanhängande linje på ett rutnät med 25 punkter (5×5)."
  - "Minimikrav: minst 6 punkter och minst ett riktningsbyte."
  - "Rekommenderad längd: 8–12 punkter."
  - "Inget Face ID eller Touch ID, eftersom biometri kan tvingas fram."
  - "Ditt mönster är också grunden för valvets krypteringsnyckel."
primaryKeyword: "mönsterlås app iphone"
keywords: ["mönsterlås fotovalv", "5x5 mönsterlås", "fotovalv utan face id", "rita mönster för att låsa upp app", "starkt upplåsningsmönster"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Lås upp med ett mönster på ett 5×5-rutnät. Minst 6 punkter och en sväng; 8–12 punkter rekommenderas. Inget Face ID, med avsikt."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "Hur många punkter behöver ett mönster i Velcrypt?"
    a: "Minst 6 punkter, ritade som en sammanhängande linje med minst ett riktningsbyte. För bättre skydd bör du använda 8–12 punkter och flera svängar."
  - q: "Varför har Velcrypt inte Face ID eller Touch ID?"
    a: "Ett ansikte eller ett finger kan användas utan ditt samtycke, till exempel när du sover eller hålls fast. Ett mönster finns bara i ditt minne, så ingen kan ta det från dig fysiskt. Velcrypt utelämnar biometri med flit."
  - q: "Vad händer om jag glömmer mitt mönster?"
    a: "Valvet kan inte öppnas igen, varken av dig eller av Velcrypt. Mönstret är en del av hur krypteringsnyckeln tas fram, och det finns ingen återställningsfras eller något konto att återställa med. Välj ett mönster du säkert kommer ihåg."
  - q: "Är ett mönsterlås på 5×5 säkrare än ett vanligt 3×3-mönster?"
    a: "Det kan det vara. Ett 5×5-rutnät har 25 punkter i stället för 9, så antalet möjliga mönster är mycket större. Hur säkert just ditt mönster är beror ändå på längden, antalet svängar och hur förutsägbar formen är."
  - q: "Kan jag testa mitt mönster någonstans innan jag använder det?"
    a: "Du kan prova liknande mönster i Velcrypts mönsterstyrkekontroll, som körs lokalt i webbläsaren. Skriv aldrig in ditt riktiga mönster på en webbplats; testa ett som liknar det i stället."
---

De flesta appar ber om en sifferkod. Velcrypt ber dig rita. Mönsterlåset är ytterdörren till varje valv, och det är också hemligheten som valvets krypteringsnyckel härleds ur. Därför är det värt några minuters eftertanke.

## Så fungerar mönsterlåset på 5×5

Ett mönsterlås är en upplåsningsmetod där du drar en linje mellan punkter i stället för att skriva en kod. I Velcrypt har rutnätet 25 punkter i fem rader och fem kolumner. Du sätter ner fingret, drar genom de punkter du väljer och lyfter fingret när du är klar.

Två regler gäller för alla mönster:

1. **Minst 6 punkter.** Kortare linjer godkänns inte.
2. **Minst ett riktningsbyte.** En enda rak linje är inte tillåten.

Det är minimikraven. Velcrypt rekommenderar mönster på **8–12 punkter**, eftersom varje extra punkt mångfaldigar antalet mönster som någon skulle behöva prova.

Varje mönster gör också något mer än att låsa upp: det avgör vilket valv som öppnas. Den idén förklaras på sidan om [dolda valv](id:hidden-vaults).

## Vad som gör ett mönster starkt

Ett starkt mönster är långt, svänger ofta och liknar ingenting. Rutnätet är stort, men människor upprepar gärna samma vanor: de börjar i övre vänstra hörnet, ritar bokstäver eller gör prydliga rutor. Det är precis de vanorna som en iakttagare eller gissare provar först.

| Vana | Varför den är svag | Bättre alternativ |
| --- | --- | --- |
| Börja i ett hörn | Hörn är de vanligaste startpunkterna | Börja på en inre punkt eller en kantpunkt |
| Bokstäver och former (L, Z, S, U, en kvadrat) | Lätta att gissa och lätta att känna igen över axeln | Använd en oregelbunden väg utan tydlig form |
| Långa raka sträckor | Få val, liten osäkerhet | Byt riktning varannan eller var tredje punkt |
| Hålla sig inom ett område | Använder bara en liten del av rutnätet | Korsa flera rader och kolumner |
| Mycket korta mönster | Färre kombinationer att prova | Sikta på 8–12 punkter |

Några praktiska tips:

- **Korsa din egen linje.** Linjer som går över tidigare delar är svårare att läsa av från fingeravtryck på skärmen eller vid en snabb blick.
- **Gör rytmen begriplig för dig, inte för andra.** Ett mönster du kan rita på känsla är lättare att minnas än ett slumpmässigt som du måste tänka på.
- **Rita det några gånger innan du förlitar dig på det.** Det är upprepningen som gör ett nytt mönster till muskelminne.
- **Skydda skärmen.** Inget mönster hjälper om någon ser dig rita det. Vinkla telefonen eller täck rutnätet när du är ute.

Vill du ha en andra åsikt ger [mönsterstyrkekontrollen](id:pattern-strength-checker) ett ungefärligt betyg och en uppskattning i bitar utifrån längd, svängar, korsningar och hur mycket av rutnätet som används. Det är en tumregel, ingen garanti, och du bör testa ett mönster som liknar ditt i stället för det riktiga.

## Varför det inte finns Face ID eller Touch ID

Velcrypt saknar biometrisk upplåsning, och det är ett medvetet beslut. Biometri är bekvämt just för att du alltid har den med dig, och det är också svagheten: ett ansikte kan hållas framför en telefon och ett finger kan tryckas mot en sensor utan ditt medgivande.

Ett mönster finns bara i ditt huvud. Ingen kan ta det från din hand eller rikta telefonen mot ditt ansikte för att få det. För ett valv som ska skydda dina mest privata filer väger den skillnaden tyngre än att spara en sekund vid upplåsning. Avvägningarna jämförs mer ingående i [mönsterlås, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Ditt mönster och krypteringsnyckeln

Mönstret kontrolleras inte bara och glöms sedan bort. Velcrypt kör det genom en långsam nyckelhärledningsfunktion för att ta fram den nyckel som låser upp valvets huvudnyckel, som i sin tur skyddar varje fil. Hela kedjan beskrivs på sidan om [kryptering](id:encryption).

Det får en ärlig konsekvens. Eftersom mönstret är en del av nyckeln finns det ingen länk för att återställa mönstret och inget konto att falla tillbaka på. Glömmer du det förblir valvet låst för gott. Läs [vad du gör om du glömmer ditt valvmönster](id:forgot-vault-pattern) innan du väljer ett, och välj något du fortfarande minns om ett halvår.

## Vad ett mönster inte kan skydda mot

Ett starkt mönster höjer ribban, men det är bara ett lager. Det kan inte stoppa någon som filmar eller ser dig rita det, någon du räcker telefonen till medan ett valv är öppet, eller skadlig kod på en jailbreakad enhet. [Säkerhetssidan](id:security#what-velcrypt-does-not-protect-against) listar de här begränsningarna i sin helhet. Kombinerar du mönstret med [automatisk låsning](id:auto-lock) täpper du till den vanligaste luckan: ett valv som lämnas öppet när du lägger ifrån dig telefonen.
