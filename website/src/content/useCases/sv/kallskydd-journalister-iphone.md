---
pageId: journalists-protecting-sources
title: "Journalister: skydda källornas bilder i iPhone"
description: "Källors bilder och dokument i en reporters iPhone: metadata, dataminimering, hotmodellering och de ärliga gränserna för ett krypterat valv."
h1: "Skydda källors bilder och dokument i en journalists iPhone"
navTitle: "Källskydd för journalister"
answer: "Börja med en hotmodell, ha så lite källmaterial i telefonen som möjligt, ta bort metadata innan något publiceras och förvara det du måste behålla på en krypterad plats skild från kamerarullen. Ett valv är ett lager; beslag av enheten, tvingad upplåsning, molnkopior och meddelandeappar kräver egna planer."
keyFacts:
  - "Hotmodellering innebär att fråga vem som kan vilja åt materialet, vad de kan göra och vad som händer om de får tag på det."
  - "Dataminimering, att spara mindre under kortare tid, är ofta det starkaste skyddet för källor."
  - "Bildens metadata kan avslöja var och när en bild togs, och med vilken enhet."
  - "Velcrypt har inget konto, inga servrar och ingen synkning; valven öppnas med ett mönster, inte Face ID."
  - "Ett valv skyddar inte kopior i iCloud, meddelandeappar, e-post eller i källans egen telefon."
primaryKeyword: "källskydd journalist iphone"
keywords: ["skydda källors bilder mobil", "journalist mobilsäkerhet", "källdokument iphone integritet", "reporter enhetssäkerhet", "hotmodellering journalister"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Hotmodellering, dataminimering och metadata för reportrar, och var ett krypterat iPhone-valv passar in som ett lager i källskyddet."
group: professional
schemaType: Article
order: 10
related: [phone-privacy-border-crossing, remove-photo-metadata-iphone, pattern-lock-vs-pin-vs-face-id, plausible-deniability-explained, security, scan-documents-privately-iphone]
faq:
  - q: "Bör journalister använda Face ID på sin iPhone?"
    a: "Det beror på din hotmodell. Biometri är bekvämt, men ett ansikte eller ett finger kan användas utan ditt samtycke. Många säkerhetsutbildare råder dig att kunna stänga av biometri snabbt, till exempel genom att hålla in sidoknappen och en volymknapp, varefter lösenkoden krävs."
  - q: "Hur tar jag bort metadata från en källas bild?"
    a: "Använd ett verktyg som sparar om bilden utan inbäddad data, till exempel vår webbläsarbaserade bildmetadataborttagare, som tar bort EXIF och GPS. Kom ihåg att det synliga innehållet, som ansikten, skyltar eller speglingar, ändå kan identifiera en plats eller person."
  - q: "Kan en valvapp skydda källor om min telefon beslagtas?"
    a: "Den lägger till ett lager: ett valv i Velcrypt öppnas bara med ditt mönster, och ett okänt mönster visar ett tomt valv. Den sätter inte lagen ur spel, hindrar inte påtryckningar att låsa upp och skyddar inte kopior som lagras på annat håll."
  - q: "Var kan journalister få utbildning i digital säkerhet?"
    a: "Organisationer för pressfrihet och journalistförbund publicerar guider om digital säkerhet och erbjuder ibland personlig hjälp. Redaktionens säkerhetsansvariga, om sådana finns, är en bra första kontakt."
---

Källor anförtror dig mer än information. En bild av ett dokument, en skärmbild av en chatt eller en bild tagen inne på en arbetsplats kan identifiera den som gav den till dig. I en reporters iPhone ligger sådant material ofta bredvid lunchbilder och bilder från presskonferenser, i ett bibliotek som är byggt för att synka, söka och lyfta fram innehåll.

Den här sidan är praktisk, inte uttömmande. Organisationer för pressfrihet och journalistförbund publicerar utförliga guider om digital säkerhet, och har din redaktion säkerhetsansvariga är det där du ska börja.

## Börja med en hotmodell

En hotmodell är ett strukturerat svar på några frågor: vad skyddar du, mot vem, vad kan de göra och vad händer om du misslyckas? För ett reportage om kommunen kan den största risken vara en borttappad telefon. För en granskning av en mäktig organisation eller en stat kan det handla om riktat dataintrång, rättsliga beslut eller beslag av enheter vid en gräns.

Svaren avgör dina verktyg. Att överdimensionera skyddet för en lågriskhistoria slösar tid; att underskydda en högriskhistoria kan skada någon.

## Där källmaterial läcker i iPhone

- **Kamerarullen och iCloud-bilder.** Bilder synkas till alla enheter på ditt Apple-konto och till Apples servrar. Utan [Avancerat dataskydd](id:icloud-advanced-data-protection-explained) har Apple nycklarna till iCloud-bilder.
- **Säkerhetskopior av enheten.** iCloud- och datorsäkerhetskopior kan innehålla meddelanden och bilagor.
- **Meddelandeappar.** Material som tagits emot i en chatt ligger kvar i den appen och ofta i dess säkerhetskopior, hos båda parter.
- **Metadata.** EXIF-data kan avslöja GPS-koordinater, tid och enhetsmodell. Se [ta bort bildmetadata](id:remove-photo-metadata-iphone).
- **Synligt innehåll.** Ansikten, speglingar, utsikt genom fönster, vattenmärken i dokument och skrivarpunkter kan identifiera en person eller plats även när metadata tagits bort.
- **Den upplåsta telefonen.** Har någon din lösenkod eller använder ditt ansikte eller finger exponeras allt som lösenkoden låser upp.

## Praktiska vanor

1. **Minimera.** Spara bara det du behöver, så länge du behöver det. Att radera material du inte längre behöver, även i Nyligen raderade och i chattkopior, skyddar källor bättre än någon kryptering.
2. **Separera.** Håll källmaterial utanför bildbiblioteket. Skannade dokument kan gå direkt till en skyddad plats i stället för till kamerarullen; se [att skanna dokument privat](id:scan-documents-privately-iphone).
3. **Ta bort metadata innan du publicerar,** och granska bilderna efter identifierande visuella detaljer.
4. **Använd en stark lösenkod** och lär dig hur du snabbt stänger av biometri.
5. **Planera för resor.** Kontroller vid gränsen är en känd risk; [mobilintegritet vid gränspassager](id:phone-privacy-border-crossing) går igenom alternativen och deras begränsningar.
6. **Kom överens med källorna om kanaler,** och berätta ärligt vad du kan och inte kan skydda.

## Var Velcrypt passar in

Velcrypt är ett lager i den planen. Appen förvarar bilder, videor och dokument i krypterade valv i din iPhone, med AES-256-GCM och nycklar som härleds ur ditt mönster. Det finns inget konto, ingen server, ingen synkning och ingen analys av valvinnehåll, så det finns inget på en server som någon kan begära ut.

Valven öppnas med ett mönster på ett 5×5-rutnät. Velcrypt stöder medvetet inte Face ID eller Touch ID, eftersom biometri kan användas utan ditt samtycke; ett mönster finns bara i ditt minne. Resonemanget finns i [mönster, PIN eller Face ID](id:pattern-lock-vs-pin-vs-face-id). Varje mönster öppnar sitt eget valv, och ett okänt mönster öppnar ett tomt valv utan felmeddelande, vilket stöder [trovärdig förnekelse](id:plausible-deniability-explained). Med Premium öppnar ett [nödmönster](id:duress-pattern) ett lockbetesvalv och raderar de andra permanent. Det är tänkt för situationer som gäller din personliga säkerhet, som stöld eller hot, inte för att radera material när myndigheter lagligen kräver åtkomst, vilket i sig kan vara ett brott; sök juridisk rådgivning om det är en risk för dig.

## Ärliga begränsningar

Ett valv är ingen strategi för källskydd i sig:

- **Beslag av enheten och tvingad upplåsning.** Lagarna skiljer sig åt. Du kan utsättas för rättsliga påtryckningar eller påföljder om du vägrar låsa upp. Ett valv ändrar inte lagen.
- **Kopior på annat håll.** Bilder som fortfarande finns i iCloud, meddelandeappar, e-post eller i källans egen telefon skyddas inte av ditt valv.
- **Komprometterade enheter.** Skadlig kod på en jailbreakad eller riktat attackerad telefon kan se det som visas på skärmen.
- **Iakttagelse.** Någon som ser dig rita ditt mönster, eller kameror i rummet, sätter det ur spel.
- **Synlig app.** Velcrypt-symbolen finns på hemskärmen om du inte använder iOS 18:s alternativ för att gömma appar.
- **Ingen automatisk återställning.** Valvdata ingår inte i iCloud- eller datorsäkerhetskopior. Tappar du telefonen eller glömmer mönstret är det borta, vilket kan vara en fördel för dataminimering och en risk för material du måste behålla. För sådant material kan du skapa en krypterad säkerhetskopia, men tänk på att filen då finns där du sparar den. Se [säkerhetssidan](id:security) för helhetsbilden.

Källskydd handlar mest om vanor. Bra verktyg hjälper, men beslutet att spara mindre, dela mindre och planera i förväg gör det mesta av jobbet.
