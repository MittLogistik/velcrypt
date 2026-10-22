---
pageId: which-apps-can-see-your-photos-iphone
title: "Vilka appar kan se mina bilder på iPhone? Så kollar du"
description: "Se vilka iPhone-appar som har full, begränsad eller bara tilläggsåtkomst till dina bilder, hur bildväljaren fungerar och hur du stramar åt åtkomsten."
h1: "Vilka appar kan se dina bilder på iPhone?"
navTitle: "Vilka appar ser dina bilder"
answer: "Öppna Inställningar › Integritet och säkerhet › Bilder för att se alla appar som har bett om åtkomst till bilder och vilken nivå de har: Full åtkomst, Begränsad åtkomst, Lägg endast till bilder eller Ingen. Appar med full åtkomst kan läsa hela biblioteket; appar som använder systemets bildväljare får bara de objekt du väljer och behöver ingen behörighet alls."
keyFacts:
  - "Inställningar › Integritet och säkerhet › Bilder listar appar med Full åtkomst, Begränsad åtkomst, Lägg endast till bilder eller Ingen."
  - "Full åtkomst låter en app läsa alla bilder och videor i biblioteket, inklusive metadata som plats."
  - "Begränsad åtkomst ger en app bara de objekt du väljer; du kan ändra urvalet när som helst."
  - "Lägg endast till bilder låter en app spara i biblioteket utan att kunna läsa det."
  - "Appar som använder systemets bildväljare får bara de objekt du väljer och behöver ingen bildbehörighet."
primaryKeyword: "vilka appar kan se mina bilder iphone"
keywords:
  - "bildbehörigheter iphone"
  - "appars åtkomst till bilder iphone"
  - "begränsad åtkomst bilder iphone"
  - "full åtkomst bilder iphone"
  - "kolla vilka appar har åtkomst till bilder"
  - "behörighet lägg endast till bilder"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Så ser du vilka appar som kan läsa ditt bildbibliotek, vad full, begränsad och tilläggsåtkomst betyder och hur du stramar åt dem på några minuter."
category: apple
order: 13
related:
  - is-iphone-hidden-album-private
  - remove-photo-metadata-iphone
  - are-photo-vault-apps-safe
  - offline-no-account
  - hide-photos
faq:
  - q: "Hur ser jag vilka appar som har åtkomst till mina bilder?"
    a: "Gå till Inställningar › Integritet och säkerhet › Bilder. Alla appar som har bett om åtkomst till bilder listas med sin nuvarande nivå, och du kan trycka på en app för att ändra den."
  - q: "Vad är skillnaden mellan full och begränsad åtkomst?"
    a: "Full åtkomst låter en app läsa hela bildbiblioteket, även nya bilder du tar senare. Begränsad åtkomst låter den bara se de bilder och videor du uttryckligen har valt för just den appen."
  - q: "Behöver en app bildbehörighet för att jag ska kunna ladda upp en bild?"
    a: "Inte om den använder systemets bildväljare. Väljaren körs utanför appen, och appen får bara de objekt du väljer, så den behöver aldrig åtkomst till resten av biblioteket."
  - q: "Kan en app med Lägg endast till bilder se mina bilder?"
    a: "Nej. Med den nivån kan en app spara nya bilder eller videor i biblioteket, till exempel en redigerings- eller kameraapp, men den kan inte bläddra i eller läsa det som redan finns där."
  - q: "Slutar en app fungera om jag byter till begränsad åtkomst?"
    a: "Oftast inte. De flesta appar fungerar med begränsad åtkomst och visar helt enkelt de bilder du har valt. Vissa funktioner, som automatisk säkerhetskopiering eller sökning i hela biblioteket, kräver faktiskt full åtkomst, så bestäm om du vill ha de funktionerna."
  - q: "Kan appar se bilder i mitt album Gömda?"
    a: "Se inte att gömma som ett skydd mot appar. Att gömma är en visningsinställning i appen Bilder, inte en behörighetsnivå, så det säkra är att ge känsliga appar begränsad åtkomst eller ingen alls."
---

Ditt bildbibliotek är förmodligen den mest personliga informationen på telefonen: ansikten, platser, dokument, skärmdumpar av konversationer. iOS ger dig ganska exakt kontroll över vilka appar som kan läsa det, men inställningarna är utspridda över frågor som du tryckte dig förbi för flera månader sedan. Den här guiden förklarar åtkomstnivåerna och visar hur du granskar dem.

## De fyra åtkomstnivåerna

När en app ber om att få använda dina bilder låter iOS dig välja en av flera nivåer. Varje apps nivå visas i Inställningar › Integritet och säkerhet › Bilder.

| Nivå | Vad appen kan göra | Typisk användning |
| --- | --- | --- |
| **Full åtkomst** | Läsa alla bilder och videor i biblioteket, även framtida, plus deras metadata | Säkerhetskopieringsappar, alternativa gallerier, vissa redigerare |
| **Begränsad åtkomst** | Läsa bara de objekt du har valt åt den | Sociala appar, meddelandeappar, de flesta redigerare |
| **Lägg endast till bilder** | Spara nya objekt i biblioteket utan att läsa det | Kameraappar, appar som exporterar bilder |
| **Ingen** | Ingen åtkomst alls | Allt som inte behöver bilder |

<!-- TODO verify iOS label -->

Äldre iOS-versioner använde lite andra ord: det som nu heter begränsad åtkomst hette **Valda bilder**, och full åtkomst hette **Alla bilder**. Beteendet är detsamma.

Full åtkomst spelar större roll än många tror. Bilder bär metadata, och de innehåller ofta GPS-positionen där bilden togs, datum och tid samt vilken enhet som användes. En app med full åtkomst kan i princip läsa allt detta för hela biblioteket. Oroar det dig förklarar vår guide om att [ta bort metadata från bilder på iPhone](id:remove-photo-metadata-iphone) vad som lagras och hur du tar bort det innan du delar.

## Bildväljaren: åtkomst utan behörighet

Många appar behöver aldrig någon av nivåerna ovan. Sedan iOS 14 erbjuder Apple en **bildväljare i systemet**: en bläddrare för biblioteket som körs utanför appen. Du väljer de bilder du vill dela, och bara de lämnas över. Appen ser aldrig resten av biblioteket och behöver inte be om bildbehörighet.

Du känner oftast igen väljaren eftersom den ser ut precis som appen Bilder, med egen sökning och egna album, och eftersom ingen behörighetsfråga dyker upp först. Appar som bara använder väljaren kanske inte syns i integritetslistan för Bilder alls, och det är helt i sin ordning: det finns ingenting att återkalla.

Kom ihåg att de objekt du faktiskt väljer ändå lämnar biblioteket. Det du skickar till en app finns nu på dess servrar eller i dess lagring och styrs av dess egen integritetspolicy.

## Så granskar du vilka appar som kan se dina bilder

Avsätt fem minuter och gå igenom listan en gång. Det är en av de mest värdefulla integritetskontrollerna på en iPhone.

1. Öppna **Inställningar › Integritet och säkerhet › Bilder**.
2. Läs nivån som visas under varje apps namn.
3. Tryck på varje app med **Full åtkomst** och fråga dig om den verkligen behöver hela biblioteket. Om inte, välj **Begränsad åtkomst** eller **Ingen**.
4. För appar med **Begränsad åtkomst** trycker du på alternativet för att redigera valda bilder för att se exakt vad de kan läsa, och tar bort allt som inte längre behöver finnas där.
5. Byt kameraliknande appar eller appar som bara exporterar till **Lägg endast till bilder** där det alternativet finns.
6. Upprepa kontrollen med några månaders mellanrum och efter att du har installerat nya appar.

<!-- TODO verify iOS label -->

Du når också samma inställning från en enskild apps sida i Inställningar, som i iOS 18 och senare ligger under Inställningar › Appar.

## Vad som har ändrats i senare iOS-versioner

Apple har gradvis gjort åtkomsten till bilder tydligare:

- **iOS 14** införde begränsad åtkomst (då kallad Valda bilder) och bildväljaren som körs utanför appen.
- **iOS 17** förnyade behörighetsflödet och gjorde det enklare för appar att låta dig lägga till fler objekt i ett begränsat urval utan att ge full åtkomst.
- **Senare versioner**, även iOS 18, gör valet av full åtkomst mer medvetet genom att tydligare visa vad en app skulle få, och iOS 18 införde en liknande modell för att välja vad som delas för Kontakter.
- **iOS 18** flyttade också albumen Gömda och Nyligen raderade till **Verktyg** i den omgjorda appen Bilder, men deras Face ID-lås fungerar som förut.

Den exakta formuleringen i frågorna varierar mellan versioner, så läs varje fråga i stället för att av vana trycka på den markerade knappen.

## Det som bildbehörigheter inte styr

Behörigheter avgör vilka appar som kan läsa biblioteket på telefonen. De täcker inte:

- **iCloud.** Om iCloud-bilder är på finns biblioteket, gömda objekt inräknade, också i iCloud. Se [sparas gömda bilder i iCloud?](id:are-hidden-photos-saved-to-icloud)
- **Personer som kan låsa upp telefonen.** Den som kan lösenkoden kan öppna Bilder och, i nyare versioner, albumet Gömda. Se [är albumet Gömda privat?](id:is-iphone-hidden-album-private)
- **Kopior som redan har delats.** Bilder som har skickats i chattar eller laddats upp till tjänster ligger kvar där även om du återkallar åtkomsten senare.
- **Skärmdumpar och delningsmenyn.** Delar du en bild från Bilder till en app skickas det objektet, oavsett appens bildbehörighet.

## Håll känsliga bilder utom räckhåll för alla appar

Om vissa bilder inte ska kunna läsas av någon app med full åtkomst är den renaste lösningen att ta ut dem ur bildbiblioteket helt. Filer som lagras i en annan apps privata lagring ingår inte i bildbiblioteket, så andra appars bildbehörigheter når dem inte.

Velcrypt fungerar så. Du importerar bilder och videor till ett krypterat valv på enheten ([dölj bilder](id:hide-photos)), och valvinnehållet krypteras med nycklar som härleds från ditt upplåsningsmönster. Import kopierar ett objekt, så originalet ligger kvar i Bilder tills du raderar det och tömmer Nyligen raderade, vilket vår [guide om att radera originalen](id:delete-original-photos-after-import) går igenom. Velcrypt har inget konto och laddar inte upp något ([på enheten, utan konto](id:offline-no-account)).

Vilket valv du än överväger bör du kontrollera vad det ber om och varför. Vår checklista om [huruvida fotovalv-appar är säkra](id:are-photo-vault-apps-safe) förklarar vad du ska titta efter i behörigheter, integritetsetiketter och lagring.
