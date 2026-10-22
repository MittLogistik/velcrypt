---
pageId: hidden-photos-search-memories-iphone
title: "Photos masquées : visibles dans Souvenirs ou widgets ?"
description: "Ce que l’album Masqués de l’iPhone exclut de la recherche, des Souvenirs, des Photos à la une et des widgets, où elles peuvent encore apparaître."
h1: "Les photos masquées apparaissent-elles dans la recherche, les Souvenirs et les widgets ?"
navTitle: "Photos masquées et Souvenirs"
answer: "Normalement, non. Les photos masquées sur iPhone sont exclues de la grille de la photothèque, de la recherche de Photos, des Souvenirs, des Photos à la une et du widget Photos. Elles peuvent toutefois réapparaître via des copies créées avant le masquage (fonds d’écran, vidéos de souvenirs enregistrées, albums partagés, Photothèque partagée, conversations) et sur vos autres appareils via Photos iCloud."
keyFacts:
  - "Masquer retire une photo de la Photothèque, des albums habituels, des Souvenirs, des Photos à la une et du widget Photos."
  - "Les copies créées avant le masquage, comme les fonds d’écran ou les vidéos de souvenirs exportées, sont des fichiers distincts qui restent visibles."
  - "Désactiver l’affichage du contenu à la une empêche Photos de suggérer photos et souvenirs."
  - "Les éléments masqués se synchronisent sur votre iPad et votre Mac via Photos iCloud."
  - "Les apps disposant d’un accès complet à la photothèque peuvent techniquement demander les éléments masqués."
primaryKeyword: "photos masquées souvenirs iphone"
keywords: ["photos masquées recherche iphone", "photos masquées dans les souvenirs", "photos masquées widget", "empêcher des photos d’apparaître dans souvenirs", "contenu à la une iphone", "masquer photos à la une"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Où les photos masquées restent cachées sur iPhone, où elles peuvent encore fuiter, et les réglages qui comblent ces failles."
category: hiding
order: 7
related: [hide-photos-iphone, is-iphone-hidden-album-private, which-apps-can-see-your-photos-iphone, family-shared-icloud, are-hidden-photos-saved-to-icloud, velcrypt-vs-iphone-hidden-album]
faq:
  - q: "Les photos masquées apparaissent-elles dans les Souvenirs sur iPhone ?"
    a: "Les nouveaux Souvenirs ne devraient pas inclure de photos masquées. Un souvenir enregistré, ajouté aux favoris ou exporté en vidéo avant le masquage de la photo peut encore la contenir : vérifiez-les ou supprimez-les."
  - q: "Les photos masquées apparaissent-elles dans le widget Photos ?"
    a: "Le widget Photos puise dans le contenu à la une de votre photothèque et laisse de côté les éléments masqués. Si une photo y apparaît malgré tout, c’est peut-être un doublon non masqué : cherchez les copies."
  - q: "À quoi sert le réglage du contenu à la une sur iPhone ?"
    a: "Lorsqu’il est désactivé, Photos cesse de suggérer des photos à la une et des souvenirs dans l’app et dans les widgets. Vos photos ne sont pas touchées ; elles ne sont simplement plus mises en avant automatiquement."
  - q: "Les apps peuvent-elles voir mes photos masquées ?"
    a: "Les apps limitées à certaines photos ne voient que celles que vous avez choisies. Les apps ayant un accès complet à la photothèque peuvent techniquement demander les éléments masqués via le framework photo d’Apple : n’accordez l’accès complet qu’aux apps de confiance."
  - q: "Les photos masquées apparaissent-elles sur mon Mac ?"
    a: "Oui, si Photos iCloud est activé. Elles apparaissent dans la collection Masqués de l’app Photos sur Mac, verrouillée par Touch ID ou votre mot de passe de session sur les versions récentes de macOS."
---

Masquer une photo a pour but de la retirer de la circulation, pas seulement de la grille. Pour l’essentiel, iOS s’en acquitte bien. Les mauvaises surprises viennent généralement de copies qui existaient avant que vous touchiez Masquer, et des fonctions qui partagent votre photothèque avec d’autres appareils ou d’autres personnes. Cette page fait le tour des deux.

## Là où les photos masquées restent cachées

Quand vous masquez un élément avec **Plus (•••) › Masquer**, Photos l’exclut des endroits qui mettent habituellement vos images sous vos yeux :

- la grille de la photothèque et ses vues par jour, mois et année ;
- les albums que vous avez créés, et les collections par type de média comme Vidéos ou Selfies ;
- les résultats de recherche de Photos ;
- les Souvenirs et Photos à la une créés après le masquage ;
- le widget Photos de l’écran d’accueil et de l’écran verrouillé.

L’élément ne reste qu’à un seul endroit : l’album Masqués, sous **Utilitaires** dans iOS 18 et versions ultérieures. Cet album est verrouillé par Face ID, Touch ID ou votre code tant que **Utiliser Face ID** est activé dans **Réglages › Apps › Photos** (Réglages › Photos sur les versions antérieures). La configuration est détaillée pas à pas dans [comment cacher des photos sur iPhone](id:hide-photos-iphone).

<!-- TODO verify iOS label -->

## Là où les photos masquées peuvent encore apparaître

Les failles tiennent moins à une défaillance de l’album Masqués qu’au fait que la photo existe sous plusieurs formes.

### Les copies créées avant le masquage

Plusieurs fonctions créent leur propre copie d’une photo au lieu de pointer vers l’original :

- **Fonds d’écran.** Une photo définie comme fond de l’écran verrouillé ou de l’écran d’accueil est stockée avec le fond d’écran. Masquer l’original n’y change rien. Modifiez ou supprimez le fond d’écran depuis l’écran de personnalisation de l’écran verrouillé.
- **Souvenirs enregistrés ou exportés.** Si vous avez exporté un souvenir en vidéo, cette vidéo est un nouvel élément de votre photothèque, non masqué.
- **Doublons et retouches.** Les captures d’écran de la photo, les copies retouchées enregistrées comme nouveaux éléments et les doublons issus des messageries sont des éléments distincts. iOS détecte beaucoup de doublons dans **Utilitaires › Doublons** ; masquez-les ou fusionnez-les aussi.
- **Photos de contact et autres apps.** Une image utilisée comme photo de contact, dans un document, dans un brouillon de publication ou dans le stockage d’une autre app est indépendante de la photothèque.

<!-- TODO verify iOS label -->

### Albums partagés et Photothèque partagée

Un **album partagé** est une copie distincte de chaque photo, stockée pour les personnes invitées. Masquer la photo dans votre photothèque ne la retire pas de l’album partagé : supprimez-la directement de l’album partagé.

Une **Photothèque partagée iCloud** met des photos en commun avec jusqu’à cinq autres personnes. Le masquage est un réglage d’affichage : ne partez pas du principe que masquer un élément de la Photothèque partagée le masque pour chaque participant. La voie la plus sûre consiste à déplacer d’abord l’élément vers votre Photothèque personnelle, puis à le masquer. Le cas d’usage [partage familial et iCloud](id:family-shared-icloud) explique les risques plus larges des configurations partagées.

<!-- TODO verify iOS label -->

### Vos autres appareils

Avec Photos iCloud activé, les photos masquées et leur statut masqué se synchronisent sur chaque appareil connecté à votre compte Apple. Sur Mac, elles apparaissent dans la collection Masqués de l’app Photos. Si quelqu’un d’autre utilise cet iPad ou ce Mac, il peut les y trouver. Voir [les photos masquées sont-elles enregistrées dans iCloud ?](id:are-hidden-photos-saved-to-icloud) pour savoir ce qu’iCloud stocke et comment c’est chiffré.

### Les apps qui ont accès aux photos

Les apps auxquelles vous avez accordé un accès **complet** à la photothèque peuvent techniquement demander à iOS d’inclure les éléments masqués lorsqu’elles lisent votre photothèque. Les apps avec un accès **limité** ne voient que les photos sélectionnées. Vérifiez les accès dans **Réglages › Confidentialité et sécurité › Photos**, ou lisez [quelles apps peuvent voir vos photos](id:which-apps-can-see-your-photos-iphone).

## Les réglages qui limitent les surprises

Même des photos jamais masquées peuvent surgir à un moment gênant. Quelques réglages aident :

| Réglage | Où | Effet |
| --- | --- | --- |
| Afficher le contenu à la une | Réglages › Apps › Photos | Désactivé, Photos cesse de suggérer photos à la une et souvenirs dans l’app et les widgets |
| Afficher les jours fériés | Réglages › Apps › Photos | Gère les souvenirs liés aux jours fériés de votre région |
| Réinitialiser les souvenirs / personnes suggérés | Réglages › Apps › Photos | Efface ce que Photos a appris à suggérer |
| Utiliser Face ID | Réglages › Apps › Photos | Verrouille Masqués et Suppressions récentes |
| Afficher l’album Masqués | Réglages › Apps › Photos | Désactivé, retire l’album Masqués de l’affichage |

<!-- TODO verify iOS label -->

Sous iOS 17 et versions antérieures, ces réglages se trouvent dans **Réglages › Photos**. Les libellés exacts peuvent varier légèrement d’une version à l’autre ; si vous n’en trouvez pas un, cherchez la section consacrée aux souvenirs et aux photos à la une dans les réglages de Photos.

Vous pouvez aussi agir sur chaque suggestion. Maintenez le doigt sur une photo à la une ou un souvenir pour voir des options comme le supprimer, mettre moins en avant une personne ou ne plus mettre en avant un jour précis. Retirer un widget de l’écran d’accueil ou de l’écran verrouillé reste la solution la plus radicale.

### La recherche en dehors de Photos

La recherche Spotlight peut inclure du contenu de Photos. Si vous préférez l’éviter, ouvrez **Réglages › Apps › Photos** et désactivez les options qui laissent le contenu de l’app apparaître dans la recherche et les suggestions (sur les versions plus anciennes, elles se trouvent dans Réglages › Siri et recherche › Photos). Verrouiller l’app Photos sous iOS 18 et versions ultérieures tient aussi son contenu à l’écart de la recherche système.

<!-- TODO verify iOS label -->

## Liste de vérification après avoir masqué quelque chose de sensible

1. Masquez la photo et tous ses doublons ou copies retouchées.
2. Vérifiez les fonds d’écran, les photos de contact et les vidéos de souvenirs exportées.
3. Retirez-la des albums partagés et sortez-la d’une Photothèque partagée.
4. Demandez-vous si elle doit vraiment se trouver sur vos autres appareils iCloud.
5. Passez en revue les apps qui ont un accès complet aux photos.

Si cette liste vous paraît longue, c’est le signe que la photo serait sans doute mieux hors de la photothèque.

## La place de Velcrypt

Une photo stockée dans un coffre Velcrypt ne fait pas partie de la photothèque : elle ne peut pas apparaître dans les Souvenirs, les Photos à la une, la recherche de Photos ou les widgets, et elle n’est synchronisée ni avec vos autres appareils ni avec iCloud. Dans le coffre, elle est chiffrée en AES-256-GCM et seul votre schéma l’ouvre.

La liste ci-dessus reste néanmoins utile. Importer dans Velcrypt copie une photo ; cela ne traque pas les doublons, fonds d’écran, albums partagés ou copies dans les conversations qui existent déjà. Supprimez l’original de Photos et de Suppressions récentes, et occupez-vous vous-même des autres copies. [Velcrypt ou l’album Masqués de l’iPhone](id:velcrypt-vs-iphone-hidden-album) présente toutes les différences.
