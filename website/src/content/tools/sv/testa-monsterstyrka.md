---
pageId: pattern-strength-checker
title: "Testa mönsterstyrka: kontrollera ett 5×5-upplåsningsmönster"
description: "Rita ett testmönster på ett 5×5-rutnät och få ett grovt styrkebetyg och en uppskattning i bitar. Körs lokalt. Ange aldrig ditt riktiga mönster online."
h1: "Testa hur starkt ditt mönster är"
navTitle: "Mönsterkontroll"
answer: "Rita ett mönster på 5×5-rutnätet för att se om det uppfyller Velcrypts minimikrav och få ett grovt betyg från För kort till Mycket starkt, plus en uppskattning i bitar. Det är en tumregel, ingen garanti. Ange aldrig ditt riktiga mönster på någon webbplats; testa ett liknande i stället."
keyFacts:
  - "Kontrollerar Velcrypts minimikrav: minst 6 punkter och minst ett riktningsbyte."
  - "Betygsätter mönster som För kort, Svagt, Godtagbart, Starkt eller Mycket starkt, med en grov uppskattning i bitar."
  - "Belönar fler punkter, riktningsbyten, korsningar av den egna linjen och bredare täckning av rutnätet."
  - "Drar ned för start i hörn, långa raka sträckor och enkla bokstavsformer som L, Z, S och U."
  - "Körs lokalt; ingenting sparas eller skickas. Testa ett liknande mönster, aldrig ditt riktiga."
primaryKeyword: "testa mönsterlås styrka"
keywords: ["hur starkt är mitt mönster", "upplåsningsmönster styrka", "mönsterlås säkerhet", "5x5 mönsterlås", "säkert mönster tips", "mönsterlösenord styrka"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Rita ett testmönster på ett 5×5-rutnät och se ett grovt styrkebetyg. Körs lokalt. Använd aldrig ditt riktiga mönster."
toolName: "Mönsterkontroll"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Kontrollera styrkan på ett testmönster"
  steps:
    - name: "Rita ett liknande mönster"
      text: "Tryck eller dra över 5×5-rutnätet och rita ett mönster i samma stil som det du har i tankarna, inte ditt riktiga."
    - name: "Kontrollera minimikraven"
      text: "Bekräfta att mönstret använder minst 6 punkter och byter riktning minst en gång."
    - name: "Läs betyget"
      text: "Titta på betyget från För kort till Mycket starkt och den grova uppskattningen i bitar."
    - name: "Justera och försök igen"
      text: "Lägg till punkter, svängar eller en korsning, undvik att börja i hörn och enkla bokstavsformer, och se hur betyget ändras."
faq:
  - q: "Är det säkert att ange mitt riktiga mönster här?"
    a: "Gör inte det. Kontrollen körs lokalt och sparar ingenting, men god praxis är att aldrig ange en riktig hemlighet på någon webbplats. Rita i stället ett mönster i liknande stil och använd det du lär dig."
  - q: "Hur beräknas styrkan?"
    a: "Det är en tumregel. Kontrollen räknar punkter och riktningsbyten, märker när linjen korsar sig själv, mäter hur många rader och kolumner den täcker och sänker poängen för start i hörn, långa raka sträckor och former som liknar enkla bokstäver."
  - q: "Vad betyder bitarna?"
    a: "Bitar är ett grovt mått på hur många gissningar en angripare kan behöva; varje extra bit fördubblar ungefär antalet. Uppskattningen här är ungefärlig och utgår från en person som känner till vanliga vanor, inte en helt slumpmässig gissning."
  - q: "Hur långt bör ett mönster i Velcrypt vara?"
    a: "Minimikravet är 6 punkter med minst ett riktningsbyte. Velcrypt rekommenderar 8 till 12 punkter för ett starkare mönster som du ändå kan komma ihåg säkert."
  - q: "Skyddar ett starkt mönster mot någon som tittar på?"
    a: "Nej. Om någon ser dig rita det spelar styrkan ingen roll. Skärma av skärmen och rita mönstret där du inte kan bli iakttagen eller filmad."
  - q: "Vad händer om jag glömmer ett komplicerat mönster?"
    a: "I Velcrypts första version kan ett glömt mönster inte återställas, varken av dig eller av Velcrypt. Välj något komplext men lätt att minnas, och öva på det innan du förlitar dig på det."
---

## Så fungerar det

Tryck eller dra över 5×5-rutnätet för att rita ett testmönster. Medan du ritar kontrollerar verktyget först Velcrypts minimikrav: en sammanhängande linje genom minst sex punkter, med minst ett riktningsbyte. Om mönstret inte uppfyller dem får det betyget **För kort**.

När mönstret klarar kraven ger kontrollen ett grovt betyg – **Svagt**, **Godtagbart**, **Starkt** eller **Mycket starkt** – plus en ungefärlig styrka i bitar. Allt körs i din webbläsare. Ingenting sparas och ingenting skickas någonstans.

## Det här tittar kontrollen på

Ett mönsters styrka är ungefär hur svårt det skulle vara för någon att gissa det, med tanke på vad människor brukar rita. Kontrollen väger samman flera signaler:

- **Antal punkter.** Fler punkter ger fler möjliga mönster.
- **Riktningsbyten.** Varje sväng gör mönstret mindre förutsägbart än en rak linje.
- **Korsningar.** En linje som korsar sin egen väg är ovanligare och svårare att gissa.
- **Täckning av rutnätet.** Mönster som sträcker sig över flera rader och kolumner får högre poäng än sådana som trängs ihop på en yta.
- **Start i hörn.** Att börja i ett hörn är mycket vanligt, så det sänker poängen något.
- **Långa raka sträckor.** Att dra längs en hel rad eller kolumn är lätt att gissa och lätt att se över axeln.
- **Enkla former.** Mönster som liknar ett L, Z, S, U eller en kvadrat hör till det första någon skulle prova.

Bitvärdet är en uppskattning, inte en mätning. Det är en tumregel som ska få dig att undvika vanliga vanor, ingen garanti för hur länge ett mönster står emot en målmedveten angripare.

## Varför mänskliga mönster är förutsägbara

På papperet erbjuder ett 5×5-rutnät ett enormt antal möjliga linjer. I praktiken väljer människor inte slumpmässigt. Forskning om det klassiska 3×3-mönstret på telefoner har gång på gång visat tydliga tendenser: att börja uppe till vänster, röra sig från vänster till höger och uppifrån och ned, använda få svängar och rita välbekanta bokstäver. Sådana vanor krymper det utrymme en angripare realistiskt behöver söka igenom.

Ett starkt mönster undviker de vanorna men är ändå lätt för dig att minnas. För en bredare jämförelse av upplåsningsmetoder, läs [mönsterlås, PIN-kod eller Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Tips för ett starkare mönster

1. **Sikta på 8–12 punkter.** Det är Velcrypts rekommendation: tillräckligt långt för att vara svårt att gissa, tillräckligt kort för att minnas.
2. **Lägg till två eller fler svängar.** Blanda vågräta, lodräta och diagonala drag.
3. **Korsa din egen linje en gång.** Det ökar komplexiteten utan att bli mycket svårare att minnas.
4. **Börja någon annanstans än i ett hörn.** Punkter i mitten eller längs kanten är mindre väntade.
5. **Använd hela rutnätet.** Berör minst tre rader och tre kolumner.
6. **Undvik bokstäver och former.** Initialer, L, Z, S, U och kvadrater är tidiga gissningar.
7. **Öva innan du förlitar dig på det.** Rita det flera gånger så att muskelminnet tar över.

## Ange aldrig ditt riktiga mönster

Den här kontrollen varken sparar eller skickar något, men vanan är viktigare än just den här sidan. Skriv eller rita aldrig ett riktigt lösenord, en PIN-kod eller ett mönster på någon webbplats. Rita i stället ett mönster i liknande stil (ungefär samma längd, antal svängar och startområde) och använd resultatet som vägledning.

## Styrkan är bara en del av helheten

I Velcrypt är ditt mönster nyckeln: krypteringsnycklarna härleds från det med PBKDF2-HMAC-SHA512 och minst 600 000 iterationer, vilket gör varje gissning långsam. Se [kryptering](id:encryption). Varje mönster öppnar dessutom ett eget valv, som förklaras under [dolda valv](id:hidden-vaults) och [mönsterlås](id:pattern-lock).

Ett starkt mönster kan inte skydda mot någon som ser dig rita det, en telefon som lämnas över med valvet öppet eller ett glömt mönster. I första versionen finns ingen återställning, så läs [glömt valvmönstret](id:forgot-vault-pattern) innan du väljer något du kanske inte kommer ihåg.
