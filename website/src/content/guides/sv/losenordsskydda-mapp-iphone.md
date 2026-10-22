---
pageId: password-protect-folder-iphone
title: "Lösenordsskydda en mapp på iPhone: så gör du"
description: "Appen Filer kan inte lösenordsskydda mappar. Lås appen Filer i iOS 18, använd låsta anteckningar eller förvara dokument i ett krypterat valv i stället."
h1: "Så lösenordsskyddar du en mapp på iPhone"
navTitle: "Lösenordsskydda en mapp"
answer: "Du kan inte sätta lösenord på en mapp i iPhonens app Filer. De närmaste inbyggda alternativen är att låsa hela appen Filer med Kräv Face ID (iOS 18 och senare) eller att lägga innehållet i en låst anteckning med eget lösenord. För dokument som behöver ett lås som är oberoende av lösenkoden använder du en krypterad valvapp som kan importera från Filer."
keyFacts:
  - "Appen Filer har ingen inställning för att låsa eller lösenordsskydda enskilda mappar."
  - "I iOS 18 och senare kan själva appen Filer låsas bakom Face ID, Touch ID eller lösenkoden."
  - "Låsta anteckningar är krypterade och kan använda ett separat lösenord för Anteckningar."
  - "Lösenordsskyddade PDF:er och krypterade arkiv skyddar enskilda filer, inte mappar."
  - "En krypterad valvapp kan förvara dokument från Filer bakom en egen hemlighet."
primaryKeyword: "lösenordsskydda mapp iphone"
keywords: ["låsa appen filer iphone", "lösenord på mapp iphone", "låsa mapp iphone", "lösenordsskydda filer iphone", "säker mapp iphone", "dölja filer iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Vad appen Filer kan och inte kan låsa, och de praktiska sätten att skydda en mapp med dokument på iPhone."
category: hiding
order: 6
related: [private-documents, scan-documents-privately-iphone, lock-photos-iphone, secret-photo-album-iphone, medical-and-id-documents, offline-no-account]
faq:
  - q: "Kan jag låsa en mapp i appen Filer på iPhone?"
    a: "Nej. Filer har inga lösenord per mapp. I iOS 18 och senare kan du låsa hela appen Filer med Face ID, Touch ID eller lösenkoden, vilket skyddar alla mappar på en gång."
  - q: "Hur låser jag appen Filer på iPhone?"
    a: "Håll fingret på symbolen för Filer, välj Kräv Face ID (eller Touch ID eller lösenkod) och bekräfta. Det kräver iOS 18 eller senare."
  - q: "Kan jag lösenordsskydda en PDF på iPhone?"
    a: "Vissa appar kan exportera eller spara en PDF med lösenord, men iOS har inget generellt sätt att lägga till ett från appen Filer. En lösenordsskyddad PDF skyddar bara den filen, inte mappen den ligger i."
  - q: "Är filer i På min iPhone krypterade?"
    a: "De skyddas av iOS dataskydd medan telefonen är låst, som andra data på enheten. När iPhonen är upplåst kan den som använder den öppna appen Filer och läsa dem, om appen inte är låst."
  - q: "Är iCloud Drive ett säkert ställe för privata dokument?"
    a: "Filer i iCloud Drive är krypterade, men Apple har nycklarna om du inte slår på Avancerat dataskydd. Den som är inloggad med ditt Apple-konto på en annan enhet kan dessutom bläddra bland dem."
---

Appen Filer liknar en filhanterare på datorn, så det är naturligt att vänta sig samma alternativ: högerklicka på en mapp, ställ in ett lösenord, klart. Så fungerar inte iOS. Det finns inget mapplås i Filer och ingen dold inställning som lägger till ett. Det du kan göra är att låsa appen, låsa innehållet i en annan app eller flytta dokumenten till ett ställe som har ett eget lås.

## Därför har Filer inga mapplösenord

Appen Filer är en bläddrare för lagringsplatser: **På min iPhone**, **iCloud Drive** och de tjänster från andra leverantörer som du har anslutit. Den visar vad som finns där men överlåter åtkomstkontrollen till iOS. iPhonens säkerhet bygger på en enda lösenkod för enheten. Medan telefonen är låst krypteras fildata av iOS dataskydd; när den är upplåst kan appen Filer visa dem för den som håller i telefonen.

Den realistiska frågan är alltså inte ”hur lösenordsskyddar jag den här mappen” utan ”hur hindrar jag någon som använder min upplåsta telefon från att öppna de här dokumenten”.

## Alternativ 1: lås appen Filer (iOS 18 och senare)

iOS 18 införde applåsning, som sätter en autentiseringsfråga framför en app varje gång den öppnas.

1. Leta upp **Filer** på hemskärmen eller i appbiblioteket.
2. Håll fingret på symbolen.
3. Välj **Kräv Face ID** (formuleringen följer din enhet: Touch ID eller lösenkod).
4. Bekräfta.

<!-- TODO verify iOS label -->

Nu ber Filer om Face ID innan något visas. Det skyddar alla mappar i Filer, inte bara en, vilket är en fördel eller ett irritationsmoment beroende på hur ofta du använder appen.

Begränsningarna är de vanliga för inbyggda lås. Reservalternativet är enhetens lösenkod, så den som kan den kan öppna Filer. Låset gäller dessutom bara appen Filer; andra appar som kommer åt samma lagring, som molnlagringsappar eller appar med egna dokumentmappar, påverkas inte. Apples egna appar kan i regel inte flyttas till mappen med gömda appar, så Filer syns fortfarande på enheten.

## Alternativ 2: en låst anteckning

Apple Anteckningar kan låsa enskilda anteckningar, kryptera dem och skydda dem med ett lösenord som är skilt från iPhonens lösenkod. Anteckningar kan innehålla skannade dokument, bilder och bifogade filer, så en låst anteckning kan fungera som en liten skyddad mapp.

1. Ställ in ett eget lösenord i **Inställningar › Appar › Anteckningar › Lösenord** (Inställningar › Anteckningar › Lösenord före iOS 18), eller välj att använda enhetens lösenkod.
2. Skapa en anteckning och lägg till innehållet. Med kameraknappen kan du skanna dokument direkt in i anteckningen, så att ett pappersdokument aldrig hamnar i bildbiblioteket.
3. Tryck på **Mer (•••)** › **Lås**.

Du kan samla flera låsta anteckningar i en mapp i Anteckningar, men det är de enskilda anteckningarna som är låsta, inte mappen. En djupare jämförelse finns i [Velcrypt mot låsta anteckningar i Apple Anteckningar](id:velcrypt-vs-apple-notes-locked-notes), och för skanning specifikt i [skanna dokument privat på iPhone](id:scan-documents-privately-iphone).

## Alternativ 3: skydda enskilda filer

Vissa filtyper kan ha ett eget lösenord:

- **PDF:er.** Flera PDF-redigerare och kontorsappar kan spara en PDF med lösenord. iOS har inget eget generellt verktyg för det.
- **Kontorsdokument.** Vissa produktivitetsappar har stöd för dokumentlösenord; om du kan ställa in ett på iPhone beror på appen.
- **Krypterade arkiv.** Några filhanterarappar kan skapa lösenordsskyddade arkiv.

De skyddar en fil i taget, och beroende på appen kan avkrypterade kopior hamna i tillfälliga mappar när du öppnar och stänger dem. De är användbara när du ska skicka en skyddad fil till någon annan; som vardagslagring är de klumpiga.

## Alternativ 4: ett krypterat valv

En valvapp importerar dokument till sin egen lagring och krypterar dem under en hemlighet som bara du känner till. I praktiken är det den lösenordsskyddade mapp som Filer saknar, med den extra fördelen att låset inte är enhetens lösenkod.

När du väljer en bör du kontrollera att den faktiskt krypterar filerna (inte bara döljer dem), om den laddar upp något och om den kan importera från appen Filer, eftersom de flesta dokument ligger där. Kom ihåg att radera originalet från Filer efteråt; en importerad kopia tar inte bort källan. Om filen låg i iCloud Drive bör du också kontrollera **Nyligen raderade** bland platserna under Bläddra i appen Filer.

## Ställen där dokument samlas utan att du märker det

Att låsa en mapp är bara användbart om de känsliga filerna faktiskt ligger i den. På en iPhone brukar dokument samlas på några förutsägbara ställen:

- **Hämtade filer.** Safari och Mail sparar filer i en mapp för hämtade filer i Filer, antingen i iCloud Drive eller På min iPhone, beroende på dina inställningar för Safari.
- **Bilagor i Mail.** Att öppna en bilaga tar inte bort den från mejlet. Själva meddelandet finns kvar i inkorgen, på alla enheter som synkar den.
- **Meddelanden och chattappar.** PDF:er och skanningar du har skickat eller tagit emot ligger kvar i konversationen tills du raderar dem där.
- **Nyligen raderade i Filer.** Filer du raderar från iCloud Drive eller På min iPhone hamnar på platsen Nyligen raderade under fliken Bläddra, där de väntar innan de tas bort för gott.

<!-- TODO verify iOS label -->

Innan du bestämmer var din privata mapp ska ligga är det värt att gå igenom de här platserna en gång.

## Vilket alternativ passar

| Behov | Bäst lämpat |
| --- | --- |
| Stoppa tillfällig åtkomst till alla mina filer | Lås appen Filer |
| Skydda några anteckningar eller skanningar med separat lösenord | Låsta anteckningar |
| Skicka en skyddad fil till någon | Lösenordsskyddad PDF eller arkiv |
| Hålla id-skanningar, journaler eller avtal privata för dem som kan min lösenkod | Krypterat valv |

För id-handlingar och hälsodokument specifikt finns mer sammanhang i användningsfallet om [medicinska dokument och id-handlingar](id:medical-and-id-documents).

## Var Velcrypt passar in

Velcrypt förvarar [privata dokument](id:private-documents) i samma krypterade valv som bilder och videor. Du importerar dem från appen Filer, och de krypteras på enheten med AES-256-GCM under nycklar som härleds från ditt upplåsningsmönster. Det finns inget konto och ingenting skickas till en server; sidan om [lagring offline utan konto](id:offline-no-account) förklarar vad det innebär i praktiken.

Eftersom valvdata undantas från säkerhetskopior till iCloud och dator bör du ha en oberoende kopia av alla dokument du inte har råd att förlora, sparad någonstans du litar på. Om telefonen försvinner eller mönstret glöms bort kan valvet inte öppnas av någon, inte heller av Velcrypt.
