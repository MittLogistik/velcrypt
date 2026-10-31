---
pageId: icloud-access-data-on-web
title: "Kom åt iCloud-data på webben: på eller av? (2026)"
description: "Vad inställningen Kom åt iCloud-data på webben (från iOS 26.4 Tillåt dataåtkomst) gör, hur den hänger ihop med ADP och hur du stänger av den."
h1: "”Kom åt iCloud-data på webben”: vad inställningen gör och om iCloud är säkert"
navTitle: "Kom åt iCloud-data på webben"
answer: "”Kom åt iCloud-data på webben” avgör om iCloud.com får visa dina bilder, mejl, anteckningar, filer och annan iCloud-data i en webbläsare. Från iOS 26.4 heter den Tillåt dataåtkomst, under Inställningar › [ditt namn] › iCloud › iCloud.com. Att stänga av den ger ingen extra kryptering men stänger en väg in. Med Avancerat dataskydd är den avstängd som standard."
keyFacts:
  - "Från iOS 26.4: Inställningar › [ditt namn] › iCloud › iCloud.com › Tillåt dataåtkomst. Tidigare: Inställningar › [ditt namn] › iCloud › Kom åt iCloud-data på webben."
  - "Avstängd visar iCloud.com varken mejl, kontakter, kalendrar, bilder, anteckningar, påminnelser eller filer; Hitta via iCloud.com/find fungerar fortfarande."
  - "Slår du på Avancerat dataskydd stängs webbåtkomsten av automatiskt."
  - "Med ADP och webbåtkomst på godkänner en betrodd enhet varje session och delar bara de nycklar som behövs, en timme i taget."
  - "Att stänga av webbåtkomst gör inte datan totalsträckskrypterad; det gör bara ADP och de kategorier Apple redan krypterar som standard."
primaryKeyword: "kom åt icloud-data på webben"
keywords:
  - "tillåt dataåtkomst icloud"
  - "stäng av webbåtkomst icloud"
  - "icloud.com dataåtkomst"
  - "är icloud säkert"
  - "icloud säkerhet iphone"
  - "icloud kryptering"
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Vad iCloud-inställningen för webbåtkomst gör, hur den fungerar med Avancerat dataskydd, när du bör stänga av den och hur säkert iCloud är."
category: apple
order: 64
related:
  - icloud-advanced-data-protection-explained
  - advanced-data-protection-uk
  - are-hidden-photos-saved-to-icloud
  - which-apps-can-see-your-photos-iphone
  - offline-no-account
faq:
  - q: "Vad gör ”Kom åt iCloud-data på webben”?"
    a: "Den avgör om du kan se din iCloud-data, som bilder, mejl, anteckningar, påminnelser och filer i iCloud Drive, genom att logga in på iCloud.com i en webbläsare. Är den avstängd finns datan bara på dina betrodda Apple-enheter."
  - q: "Ska jag stänga av webbåtkomst till iCloud?"
    a: "Använder du aldrig iCloud.com är det ett vettigt steg som kostar lite: den som kommer över ditt Apple-kontolösenord och en kod kan inte bläddra i din data på webben. Behöver du iCloud.com på en Windows-dator eller jobbdator, låt den vara på och skydda kontot väl."
  - q: "Varför ser jag inte mina bilder på iCloud.com?"
    a: "Troligen är webbåtkomsten avstängd, antingen för att du stängde av den eller för att du slog på Avancerat dataskydd, som stänger av den automatiskt. Slå på Tillåt dataåtkomst (eller Kom åt iCloud-data på webben) och godkänn med ADP sessionen på en betrodd enhet."
  - q: "Krypteras min iCloud-data om jag stänger av webbåtkomst?"
    a: "Nej. Det tar bort ett sätt att se datan i en webbläsare, men krypteringen är densamma. Med standarddataskydd har Apple fortfarande nycklarna till Bilder, iCloud-säkerhetskopiering och iCloud Drive. Bara Avancerat dataskydd ändrar det."
  - q: "Är iCloud säkert för privata bilder?"
    a: "iCloud krypterar dina bilder under överföring och på Apples servrar, och med Avancerat dataskydd har bara dina enheter nycklarna. De större riskerna i praktiken är kontokapning, delade album och synkade kopior. För några få mycket privata filer är ett valv som aldrig laddar upp dem ett starkare val."
  - q: "Kan jag använda Hitta på webben när webbåtkomsten är avstängd?"
    a: "Ja. Enligt Apple kan du fortfarande hitta dina enheter på iCloud.com/find när webbåtkomsten till din iCloud-data är avstängd."
howTo:
  name: "Stäng av eller slå på webbåtkomst till iCloud-data"
  steps:
    - name: "Öppna iCloud-inställningarna"
      text: "Öppna Inställningar, tryck på ditt namn högst upp och sedan på iCloud."
    - name: "Hitta inställningen"
      text: "I iOS 26.4 eller senare trycker du på iCloud.com. I tidigare versioner hittar du reglaget Kom åt iCloud-data på webben direkt på iCloud-skärmen."
    - name: "Slå om reglaget"
      text: "Stäng av Tillåt dataåtkomst så att iCloud.com inte visar din data, eller slå på den för att använda den. I iOS 26.4 eller senare kan du även slå på eller av Tillåt Sök."
    - name: "Godkänn sessioner om du använder ADP"
      text: "Är Avancerat dataskydd på loggar du in på iCloud.com och godkänner begäran på en betrodd iPhone, iPad eller Mac varje gång du använder webbplatsen."
---

Under Inställningar › [ditt namn] › iCloud finns en inställning som de flesta aldrig tänker på: **Kom åt iCloud-data på webben**, som i iOS 26.4 bytte namn till **Tillåt dataåtkomst**. Den avgör om din iCloud-data kan öppnas i vilken webbläsare som helst, på vilken dator som helst, av vem som helst som kan logga in på ditt Apple-konto. Här går vi igenom vad den faktiskt gör, hur den fungerar med Avancerat dataskydd och vad det betyder för den större frågan om iCloud är säkert.

## Vad inställningen gör

På iCloud.com kan du använda Mail, Bilder, iCloud Drive, Anteckningar, Påminnelser, Kontakter och Kalender i en webbläsare. Smidigt på en Windows-dator eller en lånad laptop, men det betyder också att din data går att nå varifrån som helst med en webbläsare och dina inloggningsuppgifter.

Sedan iOS 16.2 kan du stänga av det. Enligt Apple gäller med webbåtkomst avstängd:

- din iCloud-data som normalt finns på iCloud.com, till exempel mejl, kontakter, kalender, bilder, anteckningar, påminnelser, filer och dokument, kan bara nås från dina betrodda enheter;
- loggar du in på iCloud.com får du en varning om att webbåtkomsten är avstängd, med en länk för att slå på den igen från en betrodd enhet;
- du kan fortfarande hitta dina enheter på **iCloud.com/find**;
- din iCloud-data syns inte längre i listan över data du kan begära ut via privacy.apple.com förrän du slår på webbåtkomsten igen.

Viss data, som hälsodata och lösenord i iCloud-nyckelringen, finns aldrig på iCloud.com, oavsett inställning.

## Var du hittar den: iOS 26.4 bytte namn

Inställningen flyttade i iOS 26.4. Apples supportsida beskriver båda varianterna:

| iOS-version | Sökväg | Namn |
| --- | --- | --- |
| iOS 26.4 eller senare | Inställningar › [ditt namn] › iCloud › iCloud.com | **Tillåt dataåtkomst** (plus **Tillåt Sök**) |
| iOS 16.2 till 26.3 | Inställningar › [ditt namn] › iCloud | **Kom åt iCloud-data på webben** |

På en Mac med macOS 26.4 eller senare öppnar du Systeminställningar › [ditt namn] › iCloud och sedan valet för dataåtkomst på iCloud.com.

**Tillåt Sök** är nytt i iOS 26.4. När webbåtkomsten är på låter det dina betrodda enheter leverera sökresultat för iCloud Drive och iCloud-bilder på iCloud.com.

## Hur den fungerar med Avancerat dataskydd

[Avancerat dataskydd](id:icloud-advanced-data-protection-explained) (ADP) totalsträckskrypterar de flesta iCloud-kategorier, så Apples servrar har inte längre nycklarna som krävs för att visa dina bilder eller filer på en webbsida. Därför stängs webbåtkomsten av automatiskt när du slår på ADP.

Du kan slå på den igen. Då fungerar det enligt Apples dokumentation så här:

1. Du loggar in på iCloud.com.
2. En betrodd iPhone, iPad eller Mac ber dig godkänna tillfällig åtkomst.
3. Under den följande timmen godkänner enheten varje ny kategori du öppnar, som Bilder eller Anteckningar, och du får en notis varje gång. Den laddar bara upp de nycklar som behövs för just den datan, krypterade med en nyckel som är knuten till din webbläsarsession.
4. Efter en timme kräver en ny kategori ett nytt godkännande. En kategori du redan öppnat är tillgänglig tills du loggar ut eller stänger webbläsarsessionen.

I praktiken gör ADP iCloud.com till en dörr du låser upp medvetet, med en enhet i handen och under begränsad tid, i stället för en dörr som alltid står öppen.

Bor du i Storbritannien kan nya användare inte slå på ADP alls; se [Avancerat dataskydd i Storbritannien](id:advanced-data-protection-uk).

## Säkerhetsavvägningen

Att stänga av webbåtkomst är inte kryptering. Med **standarddataskydd** har Apple nycklarna till Bilder, iCloud-säkerhetskopiering, iCloud Drive och Anteckningar oavsett om webbåtkomsten är på eller av. Det inställningen ändrar är antalet vägar in till din data.

Det viktigaste hotet den skyddar mot är **kontokapning**: någon får tag på ditt Apple-kontolösenord, via nätfiske, ett återanvänt lösenord eller en delad dator där du glömde logga ut, och tar sig förbi tvåfaktorsautentiseringen. Med webbåtkomst på kan personen bläddra i dina bilder från vilken webbläsare som helst. Utan behöver den en av dina betrodda enheter.

Priset är bekvämlighet. Använder du iCloud.com på jobbet, på en Windows-dator eller en Chromebook måste du slå på inställningen igen, eller med ADP godkänna varje session.

En rimlig tumregel: använder du inte iCloud.com, stäng av det. Använder du det, låt det vara på men skydda kontot ordentligt.

## Så stänger du av eller slår på den

1. Öppna **Inställningar** och tryck på ditt namn.
2. Tryck på **iCloud**.
3. I iOS 26.4 eller senare trycker du på **iCloud.com** och stänger av eller slår på **Tillåt dataåtkomst**. I tidigare versioner slår du om **Kom åt iCloud-data på webben** direkt på iCloud-skärmen.
4. Använder du ADP och har slagit på den loggar du in på iCloud.com och godkänner begäran på en betrodd enhet.

## Är iCloud säkert, då?

Det beror på vad du menar med säkert, och mot vem.

- **Mot intrång på Apples servrar:** iCloud-data är krypterad under överföring och i vila. Med ADP är det mesta totalsträckskrypterat, och enligt Apple är 15 kategorier, bland annat nyckelringslösenord och hälsodata, det även utan ADP.
- **Mot Apple och rättsliga begäranden:** med standardskydd har Apple nycklarna till Bilder, säkerhetskopiering och iCloud Drive. Bara ADP tar bort den möjligheten. Mail, Kontakter och Kalender är inte totalsträckskrypterade i något läge.
- **Mot någon som tar sig in på ditt konto:** det är den vanligaste risken i verkligheten. Använd ett unikt lösenord, behåll tvåfaktorsautentiseringen, kontrollera vilka enheter som är inloggade på kontot och stäng av webbåtkomsten om du inte behöver den.
- **Mot bortglömda kopior:** delade album är inte totalsträckskrypterade, inte ens med ADP. Bilder du skickat i chattar eller synkat till andra enheter ligger utanför din kontroll. Vår guide om [huruvida gömda bilder sparas i iCloud](id:are-hidden-photos-saved-to-icloud) tar upp synkningen, och [vilka appar som kan se dina bilder](id:which-apps-can-see-your-photos-iphone) åtkomsten på själva telefonen.

För vardagsbilder är iCloud med ADP och ett väl skyddat konto ett stabilt val.

## När filer inte alls hör hemma i iCloud

Vissa filer vill du inte synka någonstans, oavsett inställningar. Ett valv på enheten håller dem kvar på iPhonen. Velcrypt krypterar bilder, videor och dokument med AES-256-GCM, med nycklar som härleds från ett mönster du ritar; det finns inget konto, inget laddas upp och valvets innehåll är undantaget från iCloud- och datorsäkerhetskopior ([på enheten, utan konto](id:offline-no-account)). Det som aldrig nått molnet kan ingen webbinställning exponera. Priset är återställning: tappar du telefonen kan bara en krypterad säkerhetskopiefil som du själv skapat få tillbaka valvet.
