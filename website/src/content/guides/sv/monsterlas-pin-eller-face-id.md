---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Mönsterlås, PIN-kod eller Face ID: vad är säkrast?"
description: "Mönster, PIN-kod, lösenord eller Face ID? Jämför antal kombinationer, kikande, fingeravtryck på skärmen och tvingad upplåsning för privata data."
h1: "Mönsterlås, PIN-kod, lösenord eller Face ID: vad är säkrast?"
navTitle: "Mönster, PIN eller Face ID"
answer: "Inget lås vinner på alla punkter. Ett långt, slumpmässigt lösenord står bäst emot gissningar; Face ID och Touch ID står bäst emot kikande men kan användas utan ditt samtycke; en sexsiffrig PIN-kod slår en fyrsiffrig med en faktor 100; och ett mönster är bara så starkt som den form en människa faktiskt väljer – långa, oregelbundna mönster håller, enkla bokstäver och hörn gör det inte."
keyFacts:
  - "En fyrsiffrig PIN-kod har 10 000 kombinationer; en sexsiffrig har 1 000 000."
  - "Mönster som människor väljer är mycket svagare än det teoretiska maxvärdet: vi föredrar hörn, bokstäver och korta former."
  - "Biometri är smidigt och svårt att kika på, men ett ansikte eller finger kan användas medan du sover, hålls fast eller tvingas."
  - "Fettfläckar på skärmen kan avslöja mönster lättare än PIN-koder."
  - "Velcrypt använder ett mönster på ett 5×5-rutnät (minst 6 punkter) och har medvetet inget Face ID eller Touch ID."
primaryKeyword: "mönsterlås eller pin-kod"
keywords: ["pin-kod eller face id säkerhet", "är mönsterlås säkert", "mönster eller lösenord", "face id eller lösenkod", "säkraste låset för mobilen", "tvingad biometri"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Antal kombinationer, kikande, fettfläckar och tvingad biometri: en ärlig jämförelse av de fyra vanligaste sätten att låsa privata data."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Är mönsterlås säkrare än en PIN-kod?"
    a: "Det beror på det specifika mönstret och den specifika koden. Ett långt, oregelbundet mönster på ett stort rutnät kan slå en sexsiffrig PIN-kod, men ett kort mönster format som en bokstav är lättare att gissa än en slumpmässig sexsiffrig kod. Längd och oförutsägbarhet betyder mer än typen av lås."
  - q: "Är Face ID säkrare än en lösenkod?"
    a: "Face ID är mycket svårt att lura med ett foto och omöjligt att kika på, så det skyddar väl mot tillfälligt snokande. Svagheten är samtycket: någon kan hålla upp telefonen framför ditt ansikte. En lösenkod fungerar bara om du skriver in den."
  - q: "Hur många kombinationer har en sexsiffrig PIN-kod?"
    a: "En sexsiffrig PIN-kod har 1 000 000 möjliga kombinationer (000000 till 999999), jämfört med 10 000 för en fyrsiffrig. Vanliga val som 123456 eller födelsedagar krymper det verkliga antalet dramatiskt."
  - q: "Kan någon lista ut mitt mönster från fläckar på skärmen?"
    a: "Ibland. I rätt ljus kan fingerspår på en glasskärm avslöja mönstrets väg. Att torka av skärmen, använda ett matt skärmskydd och välja ett mönster som korsar sig själv gör sådana attacker svårare."
  - q: "Varför har Velcrypt inte Face ID?"
    a: "Det är medvetet. Ett ansikte eller fingeravtryck kan användas för att låsa upp en enhet utan ditt medgivande, medan ett mönster bara finns i ditt minne. Velcrypt valde ett mönster så att det alltid krävs ditt eget beslut för att öppna ett valv."
---

Varje lås är en avvägning mellan hur svårt det är att gissa, hur lätt det är att se och hur lätt någon kan tvinga dig att öppna det. De flesta jämförelser tittar bara på det första. Den här guiden tittar på alla tre, med riktiga siffror där siffror finns och ärliga förbehåll där de saknas.

## De fyra alternativen

- **PIN-kod** är en kort följd av siffror, oftast 4 eller 6 på en iPhone.
- **Alfanumeriskt lösenord** är en sträng av bokstäver, siffror och symboler av valfri längd.
- **Mönster** är en väg som ritas genom ett rutnät av punkter. Android gjorde 3×3-rutnätet populärt; [Velcrypts mönsterlås](id:pattern-lock) använder ett 5×5-rutnät.
- **Biometri** (Face ID, Touch ID) låser upp med ditt ansikte eller fingeravtryck, med en lösenkod i botten.

## Sökutrymme: hur många gissningar skulle det krävas?

Sökutrymmet är antalet möjliga hemligheter en angripare i värsta fall måste prova. Det är det tydligaste måttet för att jämföra lås, men bara om du kommer ihåg att människor inte väljer hemligheter slumpmässigt.

### PIN-koder

En fyrsiffrig PIN-kod har 10 × 10 × 10 × 10 = **10 000** möjligheter. En sexsiffrig har **1 000 000**. Det hundrafaldiga hoppet är den enklaste säkerhetsförbättringen de flesta kan göra.

Haken är fördelningen. Analyser av läckta PIN-koder visar gång på gång att en handfull koder (1234, 0000, 1111, födelseår, 123456) står för en stor del av de verkliga valen. En angripare provar dem först.

### Alfanumeriska lösenord

Med ungefär 70 möjliga tecken per position ger varje tecken cirka 6 bitar. Ett verkligt slumpmässigt lösenord på 10 tecken har fler kombinationer än någon PIN-kod eller något praktiskt mönster. Problemet är att minnas det: människor väljer ord, namn och förutsägbara utbyten, och långa lösenord är tröttsamma att skriva på en telefon många gånger om dagen.

### Mönster: teori mot verklighet

Här är ärligheten viktig. Det teoretiska antalet mönster kan låta enormt. På Androids klassiska 3×3-rutnät (4 till 9 punkter, ingen punkt återanvänd) finns 389 112 giltiga mönster, fler än en femsiffrig PIN-kod. På ett 5×5-rutnät med 25 punkter är det teoretiska antalet oerhört mycket större.

Verkliga mönster är mycket svagare än siffrorna antyder. Forskning om Android-mönster har upprepade gånger visat att människor:

- börjar i övre vänstra hörnet betydligt oftare än slumpen skulle ge,
- ritar korta mönster nära minimilängden,
- ritar bokstäver (L, Z, S, C, U, N) eller enkla rutor,
- rör sig från vänster till höger och uppifrån och ned, som när de läser.

Därför ligger den effektiva styrkan hos ett typiskt mänskligt valt 3×3-mönster närmare en kort PIN-kod än sitt teoretiska maxvärde. Ett större rutnät hjälper bara om du faktiskt använder det: ett ”L” med 6 punkter på ett 5×5-rutnät är fortfarande lätt att gissa.

Det som gör ett mönster starkt är detsamma som gör vilken hemlighet som helst stark: längd och oförutsägbarhet. På ett 5×5-rutnät är ett mönster med 8–12 punkter som byter riktning flera gånger, inte börjar i ett hörn, inte bildar en bokstav och helst korsar sin egen väg verkligt svårt att gissa. Du kan testa en liknande form (aldrig ditt riktiga mönster) med [verktyget för mönsterstyrka](id:pattern-strength-checker).

### Gissningstakten betyder lika mycket som antalet gissningar

Antalet kombinationer är bara halva historien. Den andra halvan är hur snabbt en angripare kan prova dem. I en iPhone tvingar Secure Enclave fram allt längre väntetider för enhetens lösenkod. Inne i en app är försvaret oftast nyckelhärledning: Velcrypt kör varje mönster genom PBKDF2 med minst 600 000 iterationer, vilket gör varje gissning avsiktligt långsam. [AES-256-kryptering förklarad](id:aes-256-encryption-explained) beskriver varför det steget betyder mer än själva chiffret.

## Kikande och fläckar

**Kikande** (shoulder surfing) betyder att någon tittar när du låser upp. Det är den vanligaste verkliga attacken mot telefonlås, eftersom de som är mest motiverade att ta sig in i din telefon ofta sitter bredvid dig.

- **Mönster** är lättast att se. En form fastnar i minnet vid en enda blick, även från andra sidan bordet.
- **PIN-koder** är ganska lätta att se, särskilt fyrsiffriga som skrivs med en tumme.
- **Lösenord** är svårare att uppfatta vid ett tillfälle eftersom de är längre och tangentbordet växlar mellan layouter.
- **Biometri** går inte att kika på alls.

**Fläckattacker** läser det feta spår ditt finger lämnar på glaset. Mönster är mer utsatta här än PIN-koder, eftersom en sammanhängande linje lämnar ett sammanhängande spår. Mönster som korsar sig själva, vänder tillbaka eller passerar punkter i en tvetydig ordning är mycket svårare att rekonstruera från ett spår.

Praktiska försvar: vinkla bort skärmen, skyl den med andra handen, torka av skärmen då och då och lås upp känsliga appar när du är ensam.

## Tvingad upplåsning: frågan de flesta jämförelser hoppar över

Biometri har en svaghet som ingen teknik kan ta bort: den kräver inte ditt deltagande. Någon kan hålla telefonen framför ditt ansikte medan du sover, trycka ditt finger mot sensorn eller tvinga dig fysiskt. I hemmet, på en fest eller vid ett rån är det en realistisk risk.

På vissa platser kan myndigheter också lagligt kräva att du lämnar ett fingeravtryck eller visar ditt ansikte, medan en kod du har i huvudet behandlas annorlunda. Det rättsliga läget skiljer sig mycket mellan länder och har ändrats över tid, så den här guiden ger ingen juridisk rådgivning. Den tekniska poängen är enkel: en hemlighet i ditt minne kräver ett beslut av dig; en kroppsdel gör det inte.

Om du använder Face ID bör du känna till nödutgången. På iPhone 8 och senare stängs Face ID och Touch ID tillfälligt av tills lösenkoden anges om du håller in sidoknappen och en av volymknapparna tills skärmen för avstängning och nödsamtal visas (och sedan avbryter). Läs [integritet i mobilen vid gränsen](id:phone-privacy-border-crossing) om när det spelar roll.

## Jämförelse sida vid sida

| | Fyrsiffrig PIN | Sexsiffrig PIN | Långt lösenord | Mönster (5×5, 8+ punkter) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Möjliga kombinationer | 10 000 | 1 000 000 | Mycket många om slumpmässigt | Mycket många i teorin; betydligt färre för förutsägbara former | Ej tillämpligt |
| Gissningsbarhet i verkligheten | Hög (vanliga koder) | Måttlig | Låg om slumpmässigt | Låg om oregelbundet, hög om en bokstav | Mycket låg |
| Kikande | Lätt | Måttligt | Svårt | Lätt | Inte möjligt |
| Läckage via fläckar | Visst | Visst | Lågt | Högt om vägen inte korsar sig själv | Inget |
| Kan användas utan ditt samtycke | Nej | Nej | Nej | Nej | Ja |
| Snabbhet och bekvämlighet | Snabbt | Snabbt | Långsamt på en telefon | Snabbt | Snabbast |

## Välj rätt lås för varje lager

Du behöver inte välja ett enda lås för allt. En förnuftig uppsättning för de flesta:

1. **Enheten:** en sexsiffrig (eller längre) lösenkod, med Face ID eller Touch ID för bekvämlighetens skull om din situation tillåter det.
2. **Privat innehåll:** en separat hemlighet som inte är enhetens lösenkod, så att den som lär sig eller ser din lösenkod inte automatiskt får tillgång till allt.
3. **Lär dig stänga av biometrin snabbt** när du befinner dig någonstans där du kan bli pressad.

## Var Velcrypt passar in

Velcrypt gör ett medvetet val: den enda vägen in i ett valv är ett mönster på ett rutnät med 5×5 punkter, en sammanhängande linje genom minst 6 punkter med minst en riktningsändring. Längre mönster med 8–12 punkter rekommenderas. Det finns inget Face ID eller Touch ID, eftersom ett mönster inte kan tas från din kropp.

Designen ändrar också vad ”gissa” betyder. Varje mönster är ett eget valv, och ett mönster som Velcrypt aldrig har sett öppnar helt enkelt ett tomt valv, utan felmeddelande. En felaktig gissning avslöjar alltså inte att den är fel, och du kan ha ett [lockbetesvalv](id:what-is-a-decoy-vault) under ett andra mönster. Sidan om [dolda valv](id:hidden-vaults) förklarar modellen, och [säkerhetsöversikten](id:security) räknar upp vad den inte kan skydda mot, bland annat att någon ser dig rita.
