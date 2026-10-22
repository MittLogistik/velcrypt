---
pageId: private-documents
title: "Kryptera dokument på iPhone: PDF:er, skanningar och id"
description: "Importera PDF:er, skanningar och id-handlingar från appen Filer till ett krypterat valv i Velcrypt, visa dem offline och exportera bara när du behöver."
h1: "Förvara privata dokument i ett krypterat valv"
navTitle: "Privata dokument"
answer: "Velcrypt importerar dokument som PDF:er, skanningar och id-kopior från appen Filer i iOS till ett krypterat valv. Du kan visa dem i appen, ordna dem i album och exportera en kopia när du behöver skicka eller skriva ut något. Originalet i Filer ligger kvar tills du raderar det."
keyFacts:
  - "Importera dokument från appen Filer, även PDF:er och skannade sidor."
  - "Varje dokument krypteras på enheten med AES-256-GCM."
  - "Visa dokumenten i valvet, helt offline."
  - "Export skapar en kopia utanför valvet; hantera den varsamt."
  - "Originalet i Filer ligger kvar tills du raderar det."
primaryKeyword: "kryptera dokument iphone"
keywords: ["kryptera pdf iphone", "spara id-handlingar säkert iphone", "säkert dokumentvalv iphone", "dölja dokument iphone", "krypterad passkopia iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Importera PDF:er, skanningar och id-kopior från Filer till ett krypterat valv, visa dem offline och exportera bara vid behov."
status: available
schemaType: WebPage
order: 8
related: [scan-documents-privately-iphone, medical-and-id-documents, password-protect-folder-iphone, encryption, albums]
faq:
  - q: "Vilka dokument kan jag spara i Velcrypt?"
    a: "Dokument som du når i appen Filer i iOS, som PDF:er och skannade sidor, samt bilder av dokument. Typiska exempel är kopior av pass och id-kort, läkarintyg, avtal och skattepapper."
  - q: "Kan jag skanna ett dokument direkt till Velcrypt?"
    a: "Velcrypt har ingen inbyggd dokumentskanner. Du kan fotografera dokumentet med kameran i valvet, så att bilden aldrig hamnar i bildbiblioteket, eller skanna med en app som sparar till Filer, importera skanningen och radera sedan filen som skapades."
  - q: "Kan jag skicka ett dokument från mitt valv till någon?"
    a: "Ja, genom att exportera det. Export lägger en dekrypterad kopia utanför valvet, till exempel i Filer eller i ett mål i delningsmenyn. Den kopian skyddas inte längre av Velcrypt, så radera den när du är klar."
  - q: "Laddas mina krypterade dokument upp eller synkas de?"
    a: "Nej. Velcrypt har inga servrar, inget konto och ingen molnsynkning. Dokumenten stannar krypterade i din iPhone och undantas från iCloud- och datorsäkerhetskopior."
---

Pass, försäkringskort, läkarintyg och påskrivna avtal hamnar ofta som lösa filer i Hämtade filer eller som bilder i kamerarullen. Velcrypt ger dem en egen, krypterad plats i din iPhone, åtskild från allt du bläddrar i varje dag.

## Import från appen Filer

Velcrypt importerar dokument via dokumentväljaren i iOS, samma vy som du ser i appen Filer. Du kan välja filer från På min iPhone, iCloud Drive eller andra platser som Filer visar, och Velcrypt sparar en krypterad kopia i det valv du har öppet.

Vanliga saker att förvara:

- **PDF:er** som avtal, lönebesked, deklarationer och brev från banken.
- **Skanningar** av pappersdokument.
- **Id-kopior**: pass, körkort, uppehållstillstånd, försäkringskort.
- **Vårdpapper**: provsvar, recept, remisser.

Varje dokument krypteras på enheten med AES-256-GCM, med en egen nyckel härledd ur valvets huvudnyckel. Sidan om [kryptering](id:encryption) förklarar hur.

## Skanna privat

Velcrypt har ingen dokumentskanner, men kameran i valvet kan fotografera ett dokument direkt in i valvet. Vill du ha en riktig skanning är det säkraste flödet att skanna med ett verktyg som sparar till Filer, importera resultatet till Velcrypt och sedan radera skanningen på dess ursprungliga plats. Om skannern också sparade en kopia i Bilder eller i en molnmapp, radera den också.

Guiden om [att skanna dokument privat på iPhone](id:scan-documents-privately-iphone) jämför de inbyggda skanningsalternativen i iOS och var vart och ett sparar resultatet.

## Visa dokument i valvet

Dokumenten öppnas i Velcrypt, så du kan kontrollera ett passnummer eller läsa ett brev utan att exportera något. Allt sker offline, och inget skickas någonstans för att visa filen.

Du kan gruppera dokument i [album](id:albums), till exempel ”Id”, ”Hälsa” och ”Hem”, och flytta dem mellan album med flerval. När du lämnar appen stänger [automatisk låsning](id:auto-lock) valvet, och appväxlaren visar ingen förhandsvisning av det öppna dokumentet.

## Exportera ett dokument

Export är ett sätt att ta ut ett dokument ur valvet igen, till exempel för att mejla det till en myndighet, ladda upp det i ett formulär eller skriva ut det. När du exporterar skriver Velcrypt en **dekrypterad kopia** utanför valvet.

Den kopian skyddas inte längre av Velcrypt. Behandla den som vilken fil som helst:

1. **Exportera bara det du behöver**, och bara när du behöver det.
2. **Skicka eller skriv ut det.**
3. **Radera den exporterade kopian** från Filer, Hämtade filer eller var den nu hamnade.
4. **Tänk på mottagarens kopia.** När ett dokument väl är skickat finns det på mottagarens enhet och i dennes inkorg, utom din kontroll.

Originalet ligger kvar i ditt valv hela tiden.

## Ta bort originalen från Filer

Import kopierar en fil; den flyttar den inte. När du kontrollerat att dokumentet öppnas i Velcrypt raderar du originalet i appen Filer. Filer som raderas från iCloud Drive eller På min iPhone hamnar under Nyligen raderade i Filer, där de oftast kan återställas i upp till 30 dagar, så ta bort dem därifrån också.

<!-- TODO verify iOS label -->

## Velcrypt jämfört med en låst mapp eller anteckning

| Alternativ | Hur det skyddas | Kommentar |
| --- | --- | --- |
| Mapp i appen Filer | Bara enhetens lösenkod | Alla som använder din upplåsta telefon kan öppna den |
| Låst anteckning i Anteckningar | Enhetens lösenkod eller ett separat lösenord för anteckningar | Krypterad, men begränsad till anteckningar |
| Valv i Velcrypt | Ditt mönster, separat från enhetens lösenkod | Krypterat per fil, separata valv per mönster |

Om du väljer mellan dessa går [så lösenordsskyddar du en mapp på iPhone](id:password-protect-folder-iphone) igenom varje alternativ, och användningsfallet [vård- och id-handlingar](id:medical-and-id-documents) visar en komplett uppsättning.

## Bra att veta

- Valvdata ingår inte i iCloud- eller datorsäkerhetskopior. Skapa en krypterad säkerhetskopia av valvet, eller spara en andra kopia av oersättliga original, som en skanning av ditt pass, någonstans du litar på.
- Ett valv kan inte skydda ett dokument som någon fotograferar medan det är öppet på din skärm.
