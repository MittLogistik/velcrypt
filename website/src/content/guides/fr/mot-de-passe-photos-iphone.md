---
pageId: password-protect-photos-iphone
title: "Mettre un mot de passe sur ses photos iPhone"
description: "iOS ne permet pas de mot de passe par photo. Voici les vraies solutions pour protéger certaines photos sur iPhone, et ce que chacune protège vraiment."
h1: "Comment mettre un mot de passe sur des photos iPhone"
navTitle: "Mot de passe sur ses photos"
answer: "iOS ne peut pas mettre de mot de passe sur une photo précise. Les options intégrées les plus proches sont de la masquer dans l’album Masqués verrouillé par Face ID, ou de l’ajouter à une note verrouillée avec son propre mot de passe Notes. Pour protéger certaines photos avec un secret autre que le code de l’appareil, copiez-les dans une app de coffre-fort chiffré et supprimez les originaux."
keyFacts:
  - "L’app Photos ne propose aucun mot de passe par photo ou par album."
  - "L’album Masqués s’ouvre avec Face ID, Touch ID ou le code de l’appareil, pas avec un mot de passe distinct."
  - "Une note verrouillée peut utiliser son propre mot de passe Notes, distinct du code de l’iPhone."
  - "Ajouter une photo à une note ou à un coffre crée une copie ; l’original reste dans Photos jusqu’à sa suppression."
  - "Une app de coffre-fort chiffré donne à certaines photos un verrou indépendant de l’appareil."
primaryKeyword: "mettre un mot de passe sur ses photos iphone"
keywords: ["mot de passe photos iphone", "protéger une photo par mot de passe iphone", "mettre un code sur une photo iphone", "verrouiller une photo iphone", "photo protégée par mot de passe iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Pourquoi iOS n’a pas de mot de passe par photo, et trois façons concrètes de mettre un vrai verrou sur certaines photos."
category: hiding
order: 4
related: [lock-photos-iphone, hide-photos-iphone, velcrypt-vs-apple-notes-locked-notes, pattern-lock, encryption, delete-original-photos-after-import]
faq:
  - q: "Peut-on mettre un mot de passe sur une seule photo sur iPhone ?"
    a: "Pas dans l’app Photos. iOS ne verrouille que les albums Masqués et Suppressions récentes, avec Face ID, Touch ID ou le code de l’appareil. Une photo ne peut avoir son propre mot de passe que si vous en placez une copie dans une note verrouillée ou une app de coffre-fort."
  - q: "Peut-on définir un autre mot de passe pour l’album Masqués ?"
    a: "Non. L’album Masqués utilise toujours Face ID, Touch ID ou le code de l’appareil. Aucun réglage ne permet de lui donner un mot de passe distinct."
  - q: "Les photos dans les notes verrouillées sont-elles chiffrées ?"
    a: "Oui. Apple chiffre le contenu des notes verrouillées, images jointes comprises. Si vous utilisez un mot de passe Notes distinct et l’oubliez, Apple ne peut pas récupérer ces notes."
  - q: "Si je protège une photo par mot de passe, disparaît-elle de ma pellicule ?"
    a: "Pas automatiquement. Les notes verrouillées et les apps de coffre-fort créent une copie : vous devez supprimer l’original de Photos, puis de Suppressions récentes, pour qu’il disparaisse."
  - q: "Un mot de passe est-il plus sûr que Face ID pour ses photos ?"
    a: "Face aux personnes physiquement présentes, souvent oui. Face ID peut être utilisé pendant votre sommeil ou sous la pression, et le verrou de Photos se rabat sur le code de l’appareil que d’autres connaissent parfois. Un secret distinct évite ces deux écueils."
---

Beaucoup cherchent à mettre un mot de passe sur une seule photo, comme on le ferait sur un PDF. iOS ne le propose pas. Il offre en revanche quelques fonctions voisines, et la bonne dépend de ce que vous entendez par « mot de passe » et de la personne dont vous protégez la photo.

## Pourquoi il n’existe pas de mot de passe par photo

Le modèle de sécurité de l’iPhone protège tout l’appareil avec un seul code. Quand le téléphone est verrouillé, vos données sont chiffrées ; une fois déverrouillé, les apps que vous ouvrez peuvent afficher leur contenu. Les photos n’ont pas de verrou individuel. L’app Photos ajoute une seconde demande uniquement pour deux albums système, Masqués et Suppressions récentes, et cette demande utilise les mêmes Face ID, Touch ID ou code que l’écran verrouillé.

Derrière la question se cachent donc en réalité deux besoins distincts :

1. **« Je ne veux pas qu’elle soit dans ma pellicule. »** C’est un problème de visibilité, et le masquage le règle.
2. **« Je veux qu’elle exige un secret que je suis seul à connaître. »** C’est un problème d’accès, qui demande un verrou différent du code de l’appareil.

## Option 1 : la masquer derrière Face ID

Si vous craignez surtout que quelqu’un tombe dessus en faisant défiler vos photos, la masquer est rapide :

1. Ouvrez la photo dans **Photos**.
2. Touchez **Plus (•••)** › **Masquer**.
3. Vérifiez que **Utiliser Face ID** est activé dans **Réglages › Apps › Photos** (Réglages › Photos avant iOS 18).

<!-- TODO verify iOS label -->

La photo se trouve alors dans l’album Masqués, derrière une authentification biométrique. Ce n’est pas un mot de passe au sens habituel : toute personne qui connaît le code de votre iPhone peut choisir le code de secours et ouvrir l’album. Plus de détails dans [comment cacher des photos sur iPhone](id:hide-photos-iphone).

## Option 2 : une note verrouillée avec son propre mot de passe

Notes est la seule app intégrée qui permet de définir un mot de passe distinct du code de l’appareil pour un contenu de votre choix. Une note verrouillée est chiffrée, photos jointes comprises.

1. Allez dans **Réglages › Apps › Notes › Mot de passe** (Réglages › Notes › Mot de passe sur les versions plus anciennes) et choisissez un mot de passe personnalisé plutôt que le code de l’iPhone. Ajoutez un indice que vous comprendrez et que les autres ne comprendront pas.
2. Dans **Notes**, créez une note. Touchez le bouton appareil photo et prenez une photo directement dans la note, ou choisissez-en une dans la photothèque.
3. Touchez **Plus (•••)** › **Verrouiller**.
4. Revenez dans Photos et supprimez l’original, puis supprimez-le à nouveau dans **Suppressions récentes**.

<!-- TODO verify iOS label -->

Prendre la photo directement dans la note est la voie la plus propre, car elle n’arrive jamais dans votre pellicule.

Gardez les contreparties en tête. Notes se synchronise via iCloud si vous utilisez iCloud pour Notes, et l’app n’est pas conçue pour regarder beaucoup de photos ou de vidéos. Si vous oubliez le mot de passe personnalisé, ces notes ne pourront plus être ouvertes. [Velcrypt ou les notes verrouillées d’Apple Notes](id:velcrypt-vs-apple-notes-locked-notes) détaille la comparaison.

## Option 3 : une app de coffre-fort chiffré

Un coffre-fort photo est une app qui conserve sa propre copie chiffrée de vos images, verrouillée par un secret qu’elle gère. C’est ce qui se rapproche le plus d’un vrai mot de passe par photo : vous décidez exactement quelles photos y entrent, et le code de l’appareil ne les ouvre pas.

Vérifiez quelques points avant de lui faire confiance :

- **Un vrai chiffrement,** pas seulement un dossier caché. L’app doit chiffrer les fichiers sur l’appareil avec un algorithme moderne authentifié.
- **Un verrou indépendant de l’appareil.** Si le coffre s’ouvre avec Face ID seul, il hérite du même problème de code de secours que l’album Masqués.
- **Une gestion claire des données.** Envoie-t-elle les fichiers sur un serveur ? Exige-t-elle un compte ? Que se passe-t-il si vous oubliez le code ?

[Les apps coffre-fort photo sont-elles fiables ?](id:are-photo-vault-apps-safe) approfondit ces questions.

## Comparer les options

| | Masquer | Note verrouillée | App de coffre-fort |
| --- | --- | --- | --- |
| Distinct du code de l’appareil | Non | Oui, avec un mot de passe Notes personnalisé | En général |
| Retire la photo de la pellicule | Oui, la déplace dans Masqués | Seulement si vous supprimez l’original | Seulement si vous supprimez l’original |
| Confortable pour beaucoup de photos | Oui | Non | Oui |
| Gère bien les vidéos | Oui | Mal | En général |
| Intégré à iOS | Oui | Oui | Non |

## Choisir un secret qui vaut quelque chose

Un mot de passe distinct n’aide que s’il est vraiment distinct. Quelques habitudes font la différence :

- **Ne réutilisez pas le code de votre iPhone.** Si les personnes dont vous vous protégez connaissent votre code, un mot de passe Notes ou un code de coffre identique leur donne les deux.
- **Évitez l’évident.** Dates de naissance, anniversaires, suites du type 1234 et code identique à celui de votre app bancaire sont les premières choses que l’on essaie.
- **Rendez-le mémorable pour vous seul.** Dans la plupart des cas, vous ne pourrez pas le réinitialiser : choisissez quelque chose dont vous vous souviendrez dans plusieurs mois sans le noter sur un papier glissé dans la coque.
- **Faites attention à votre entourage.** Tout secret peut être lu par-dessus votre épaule. Saisissez-le quand personne ne regarde l’écran.

## Un mot sur les originaux

Quel que soit le verrou choisi, une copie protégée ne sert à rien si une copie non protégée traîne encore. Après avoir placé une photo dans une note ou un coffre, supprimez-la de Photos, videz-la de Suppressions récentes et pensez aux autres endroits où elle pourrait exister : un album partagé iCloud, une conversation, une app de stockage en ligne. Le guide pour [supprimer les originaux après l’import](id:delete-original-photos-after-import) détaille chaque étape.

## La place de Velcrypt

Velcrypt répond au second besoin : un secret que vous êtes seul à connaître. Au lieu d’un mot de passe tapé, vous tracez un [schéma](id:pattern-lock) sur une grille de 5×5 points. Il doit passer par au moins six points avec au moins un changement de direction, et des schémas de huit à douze points sont recommandés. Velcrypt n’utilise ni Face ID ni Touch ID : ni le code de votre iPhone ni votre visage ne peuvent l’ouvrir.

Chaque schéma ouvre son propre coffre, et les photos qu’il contient sont [chiffrées](id:encryption) en AES-256-GCM avec des clés dérivées de ce schéma. Comme tout reste sur l’appareil et est exclu des sauvegardes, un schéma oublié ne peut pas être réinitialisé. Si vous préférez un mot de passe récupérable, cette limite mérite d’être pesée honnêtement avant d’y placer quoi que ce soit d’important.
