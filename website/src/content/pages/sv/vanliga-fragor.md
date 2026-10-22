---
pageId: faq
title: "Vanliga frågor om Velcrypt: valv, mönster, kryptering"
description: "Svar på vanliga frågor om Velcrypt: mönstervalv, kryptering, säkerhetskopior, integritet, priser och vilka iPhone-modeller appen fungerar på."
h1: "Vanliga frågor om Velcrypt"
navTitle: "Vanliga frågor"
answer: "Velcrypt är en iPhone-app (iOS 17 eller senare) som sparar bilder, videor och dokument i krypterade valv på din enhet. Varje valv öppnas med ett eget mönster, det finns inget konto och inget laddas upp – vilket också betyder att ett glömt mönster inte kan återställas."
keyFacts:
  - "iPhone-app, iOS 17 eller senare."
  - "Varje mönster öppnar ett eget valv; okända mönster öppnar ett tomt."
  - "AES-256-GCM-kryptering, bara på enheten, inget konto."
  - "Ingen återställning om du glömmer mönstret eller tappar bort telefonen."
  - "Gratisversion plus valfri Premium; priser meddelas senare."
primaryKeyword: "velcrypt vanliga frågor"
keywords: ["velcrypt frågor", "hur fungerar velcrypt", "fotovalv app frågor", "velcrypt mönster hjälp", "velcrypt säkerhetskopia"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Grunderna"
    items:
      - q: "Vad är Velcrypt?"
        a: "Velcrypt är en iPhone-app som förvarar privata bilder, videor och dokument i krypterade valv på din enhet. Du öppnar ett valv genom att rita ett mönster på ett 5×5-rutnät av punkter."
      - q: "Vad kan jag spara i Velcrypt?"
        a: "Bilder och videor från ditt bildbibliotek och dokument från appen Filer. I ett valv kan du ordna objekt i album, visa bilder och videor med zoom och svep samt flytta eller exportera objekt på ett säkert sätt."
      - q: "Försvinner en bild från Bilder när jag importerar den till Velcrypt?"
        a: "Nej. Importen skapar en krypterad kopia, och originalet ligger kvar i Bilder tills du raderar det. Töm sedan även Nyligen raderade, där objekt annars ligger kvar i cirka 30 dagar."
      - q: "Har Velcrypt en inbyggd kamera?"
        a: "Nej. Velcrypt har ingen kamera. Du tar bilder med iPhones Kamera-app och importerar dem sedan till ett valv."
      - q: "Är Velcrypt samma sak som albumet Gömda på iPhone?"
        a: "Nej. Albumet Gömda tar bara bort bilder från huvudvyn i biblioteket och öppnas med Face ID eller din lösenkod. Velcrypt krypterar filerna med en nyckel som härleds från ett separat mönster som inte är enhetens lösenkod."
  - title: "Mönster och valv"
    items:
      - q: "Vad räknas som ett giltigt mönster i Velcrypt?"
        a: "En sammanhängande linje genom minst 6 punkter på 5×5-rutnätet, med minst ett riktningsbyte. Längre mönster på 8–12 punkter rekommenderas."
      - q: "Hur skapar jag ett andra valv?"
        a: "Rita ett nytt mönster som du inte har använt tidigare. Varje mönster är ett eget valv, så ett nytt mönster öppnar ett nytt, tomt valv som du kan börja fylla."
      - q: "Varför öppnade mitt mönster ett tomt valv?"
        a: "Troligen ritade du ett något annorlunda mönster, och Velcrypt behandlar det som ett annat valv. Försök igen långsamt; appen visar aldrig något meddelande om ”fel mönster”, med avsikt."
      - q: "Kan jag se en lista över mina valv?"
        a: "Nej. Velcrypt har ingen valvlista, så ingenting i appen avslöjar hur många valv som finns. Du måste själv komma ihåg varje mönster."
      - q: "Vad är ett lockvalv?"
        a: "Ett lockvalv är ett vanligt utseende valv med harmlöst innehåll som du kan öppna om du blir pressad, medan ditt privata valv ligger bakom ett annat mönster. Ingenting i Velcrypt bevisar att det andra valvet finns."
      - q: "Vad är tvångsmönstret?"
        a: "Tvångsmönstret är en planerad Premium-funktion som kommer snart. Om du ritar det öppnas ett valv du valt, och åtkomsten till de andra tas bort i tysthet."
      - q: "Kan jag ordna objekt i ett valv?"
        a: "Ja. Varje valv kan innehålla album, och du kan markera flera objekt och flytta dem mellan album i samma valv."
      - q: "Varför använder Velcrypt inte Face ID eller Touch ID?"
        a: "Det är ett medvetet val. Ett ansikte eller ett finger kan användas utan ditt samtycke, till exempel medan du sover eller under press, medan ett mönster bara finns i ditt minne."
  - title: "Säkerhet och kryptering"
    items:
      - q: "Hur krypterar Velcrypt mina filer?"
        a: "Med AES-256-GCM via Apple CryptoKit. Varje valv har en egen slumpmässig 256-bitars huvudnyckel, och varje fil får en egen nyckel som härleds med HKDF."
      - q: "Hur blir mitt mönster en nyckel?"
        a: "Velcrypt kör mönstret genom PBKDF2-HMAC-SHA512 med minst 600 000 iterationer och ett slumpmässigt salt som är unikt för din enhet och sparas i iOS-nyckelringen. Själva mönstret sparas aldrig."
      - q: "Använder Velcrypt iOS Dataskydd?"
        a: "Ja. Valvfilerna använder klassen fullständigt skydd, så iOS håller dem krypterade när iPhonen är låst, utöver Velcrypts egen kryptering."
      - q: "Låses Velcrypt automatiskt?"
        a: "Ja. Appen låses när den går till bakgrunden, efter en fördröjning du kan ställa in, och valvinnehållet döljs i appväxlaren."
      - q: "Har Velcrypt genomgått en säkerhetsgranskning?"
        a: "Ingen oberoende granskning har gjorts ännu. Velcrypt använder standardalgoritmer och Apples CryptoKit, och vi välkomnar en extern granskning."
      - q: "Vad kan Velcrypt inte skydda mot?"
        a: "Någon som ser dig rita mönstret, tvång att låsa upp, en telefon som lämnas över med ett valv öppet, skadlig kod på en komprometterad eller jailbreakad enhet, foton av skärmen och kopior som fortfarande finns på andra ställen. Säkerhetssidan listar alla begränsningar."
  - title: "Säkerhetskopiering och återställning"
    items:
      - q: "Vad händer om jag glömmer mitt mönster i Velcrypt?"
        a: "Valvet kan inte öppnas igen. Velcrypt sparar aldrig ditt mönster eller dina nycklar, så varken du eller Velcrypt kan återställa det."
      - q: "Ingår mitt valv i iCloud-säkerhetskopian?"
        a: "Nej. I första versionen undantas valvdata från iCloud-säkerhetskopior, så krypterade filer lämnar aldrig din enhet."
      - q: "Ingår mitt valv i en säkerhetskopia via Finder eller iTunes?"
        a: "Nej. Valvdata undantas även från datorsäkerhetskopior i första versionen."
      - q: "Vad händer med mina valv om jag skaffar en ny iPhone?"
        a: "Valv följer inte med till en ny enhet i första versionen. Exportera det du vill behålla innan du byter telefon och förvara det på ett ställe du litar på."
      - q: "Kommer Velcrypt att erbjuda krypterad säkerhetskopiering?"
        a: "Ett alternativ för krypterad säkerhetskopiering är planerat som en del av Premium. Vi har inget datum ännu och lovar inget förrän det är klart."
      - q: "Kan Velcrypts support nollställa mitt mönster?"
        a: "Nej. Supporten har ingen åtkomst till dina valv, mönster eller nycklar, så det finns ingenting att nollställa hos oss."
  - title: "Integritet"
    items:
      - q: "Behöver jag ett konto för att använda Velcrypt?"
        a: "Nej. Det finns ingen registrering, ingen e-postadress och ingen inloggning. Du installerar appen och ritar ett mönster."
      - q: "Laddar Velcrypt upp mina bilder?"
        a: "Nej. Velcrypt har inga servrar för ditt innehåll, och valvfilerna lämnar aldrig din iPhone."
      - q: "Samlar Velcrypt in analysdata?"
        a: "Velcrypt samlar inte in någon analysdata om valvinnehållet. Om du har valt att dela analysdata med apputvecklare i iOS-inställningarna kan Apple dela krasch- och diagnostikdata med oss."
      - q: "Kan andra se att jag använder Velcrypt?"
        a: "Appikonen syns på hemskärmen, och forensiska verktyg kan eventuellt se att Velcrypt innehåller krypterade data och ungefär hur mycket. Velcrypt döljer antalet valv och deras innehåll, inte att appen finns."
      - q: "Visar Velcrypt annonser eller säljer data?"
        a: "Nej. Velcrypt har inga annonser och säljer inga data. Appen samlar inte ens in ditt innehåll."
  - title: "Priser och tillgänglighet"
    items:
      - q: "Är Velcrypt gratis?"
        a: "Det finns en gratisversion plus en valfri Premium-uppgradering. Priset för Premium meddelas senare."
      - q: "Vad kommer Premium att innehålla?"
        a: "Planerat i Premium är obegränsat antal objekt, fler valv, tvångsmönstret (kommer snart) och en framtida krypterad säkerhetskopiering."
      - q: "Var kan jag skaffa Velcrypt?"
        a: "Velcrypt är en iPhone-app som distribueras via App Store. Se App Store-knappen på den här webbplatsen för aktuell tillgänglighet."
      - q: "Vem hanterar betalningarna?"
        a: "Apple hanterar alla köp via App Store. Velcrypt ser aldrig dina betalningsuppgifter."
  - title: "Kompatibilitet"
    items:
      - q: "Vilken iOS-version kräver Velcrypt?"
        a: "Velcrypt kräver iOS 17 eller senare på iPhone."
      - q: "Finns Velcrypt för iPad, Mac eller Android?"
        a: "Nej. Velcrypt är bara en iPhone-app, och det finns ingen webbversion."
      - q: "Synkar Velcrypt mellan enheter?"
        a: "Nej. Det finns ingen molnsynkning; varje valv finns bara på den iPhone där det skapades."
      - q: "Kan jag importera dokument från appen Filer?"
        a: "Ja. Du kan importera dokument från appen Filer till vilket valv som helst, tillsammans med bilder och videor."
---

Det här är de frågor som oftast ställs om Velcrypt, sorterade efter ämne. Varje svar står på egna ben, så du kan hoppa direkt till avsnittet du behöver.

Vill du ha hela den tekniska bilden förklarar sidan om [säkerhetsmodellen](id:security) hur ditt mönster blir en nyckel och hur filerna krypteras, och vad Velcrypt inte kan skydda mot. Vad som ingår i varje version ser du under [priser](id:pricing). Om du tror att du har förlorat åtkomsten till ett valv, läs [glömt valvmönstret](id:forgot-vault-pattern) innan du provar något annat – och kom ihåg att ett okänt mönster helt enkelt öppnar ett nytt, tomt valv i stället för att visa ett fel.

Hittar du inte din fråga här? [Kontakta supporten](id:support) så hjälper vi till där vi kan. Vi kan svara på frågor om hur appen fungerar, men vi kan aldrig öppna, nollställa eller återställa ett valv åt dig.
