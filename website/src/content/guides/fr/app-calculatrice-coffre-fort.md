---
pageId: calculator-vault-apps-explained
title: "App calculatrice coffre-fort : déguisement ou chiffrement ?"
description: "Les apps calculatrice cachent vos photos derrière une fausse calculatrice. Comment marche le déguisement, et où iOS révèle le vrai nom de l’app."
h1: "Les apps calculatrice coffre-fort expliquées"
navTitle: "Apps calculatrice coffre-fort"
answer: "Une calculatrice coffre-fort est un coffre-fort photo qui ressemble à une calculatrice et fonctionne comme telle jusqu’à ce que vous tapiez un code secret sous forme de calcul. Le déguisement peut tromper un regard rapide, mais ce n’est pas un chiffrement, et iOS révèle la vraie identité de l’app à plusieurs endroits : recherche de la bibliothèque d’apps, Spotlight, Stockage iPhone et vos achats App Store."
keyFacts:
  - "Les calculatrices coffre-fort cachent un coffre-fort photo derrière une calculatrice fonctionnelle ; un code tapé comme un calcul l’ouvre."
  - "Déguisement et chiffrement sont deux choses différentes : le déguisement cache l’existence du coffre, le chiffrement protège les fichiers."
  - "Spotlight, la bibliothèque d’apps, Stockage iPhone, Temps d’écran et l’historique d’achats App Store peuvent révéler la vraie app."
  - "Une calculatrice qui occupe plusieurs gigaoctets de stockage se trahit d’elle-même."
  - "Beaucoup de calculatrices coffre-fort sont financées par la publicité : consultez l’étiquette de confidentialité de l’App Store avant d’en utiliser une."
primaryKeyword: "app calculatrice coffre-fort"
keywords:
  - "calculatrice coffre-fort iphone"
  - "fausse calculatrice pour cacher des photos"
  - "calculatrice secrète app"
  - "app calculatrice photos cachées"
  - "comment trouver une app calculatrice cachée"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Comment fonctionnent les coffres déguisés en calculatrice, pourquoi un déguisement n’est pas un chiffrement, et quand l’astuce reste utile."
category: choosing
order: 22
related:
  - velcrypt-vs-calculator-vault-apps
  - are-photo-vault-apps-safe
  - plausible-deniability-explained
  - what-is-a-decoy-vault
  - best-private-photo-vault-apps-iphone
faq:
  - q: "Comment fonctionnent les apps calculatrice coffre-fort ?"
    a: "Elles s’ouvrent sur une calculatrice qui fonctionne. Quand vous tapez un code précis, souvent suivi de la touche égal ou pourcentage, l’app bascule vers un coffre-fort photo caché. Sans le code, elle se comporte comme une calculatrice ordinaire."
  - q: "Peut-on trouver une app calculatrice coffre-fort sur mon iPhone ?"
    a: "Oui, si l’on cherche. Le vrai nom et la taille de l’app apparaissent par exemple dans la recherche de la bibliothèque d’apps, dans Réglages › Général › Stockage iPhone, dans Temps d’écran et dans votre historique d’achats App Store."
  - q: "Les apps calculatrice coffre-fort sont-elles chiffrées ?"
    a: "Certaines oui, d’autres non. Le déguisement en calculatrice ne dit rien de la façon dont les fichiers sont stockés : vérifiez si le développeur documente un vrai chiffrement au repos."
  - q: "Une calculatrice coffre-fort vaut-elle mieux qu’un coffre classique ?"
    a: "Pas en soi. Elle ajoute un déguisement, utile face à un regard rapide, mais la protection de vos fichiers dépend toujours du chiffrement et de la solidité de votre code."
  - q: "Existe-t-il une meilleure solution que de déguiser une app ?"
    a: "Sous iOS 18 et versions ultérieures, vous pouvez masquer n’importe quelle app derrière Face ID dans le dossier des apps masquées de la bibliothèque d’apps. Autre approche : le déni plausible, où un coffre ne prouve pas l’existence d’autres contenus même une fois ouvert."
---

Sur l’App Store, un nombre étonnant de « calculatrices » n’en sont pas vraiment. Ce sont des coffres-forts photo déguisés. L’idée est astucieuse : personne ne s’attarde sur une calculatrice. Mais mieux vaut comprendre précisément ce que fait le déguisement, et ce qu’il ne fait pas, avant de lui confier quoi que ce soit de sensible.

## Comment fonctionne le déguisement en calculatrice

Une calculatrice coffre-fort est une app de coffre-fort photo conçue pour ressembler à une calculatrice standard et se comporter comme elle. Son icône évoque une calculatrice, son nom sur l’écran d’accueil est généralement du type « Calculatrice », et une fois ouverte elle fait de vrais calculs. Le coffre n’apparaît que lorsque vous saisissez un code secret, généralement un nombre suivi d’une touche précise comme **=** ou **%**.

Certaines variantes vont plus loin : un faux historique de « calculs récents », un code leurre qui ouvre une galerie anodine, ou une option qui fait planter ou fermer l’app si le mauvais code est saisi. Les fonctionnalités varient beaucoup d’un développeur à l’autre.

<!-- TODO verify -->

## Un déguisement n’est pas un chiffrement

Deux questions différentes sont en jeu :

- **Le déguisement** répond à : « Quelqu’un remarquera-t-il qu’il y a un coffre sur ce téléphone ? »
- **Le chiffrement** répond à : « Si quelqu’un atteint les fichiers, peut-il les lire ? »

Le chiffrement consiste à brouiller des données pour qu’elles ne soient lisibles qu’avec la bonne clé. Un déguisement en calculatrice n’apporte rien sur ce point. Les fichiers peuvent être correctement chiffrés, ou n’être que des images ordinaires dans le stockage de l’app, derrière un écran de code. La calculatrice ne permet pas de le savoir. Cherchez une déclaration claire sur la façon dont les fichiers sont stockés et dont la clé est liée à votre code ; notre [liste de vérification de sécurité des coffres](id:are-photo-vault-apps-safe) explique quoi regarder.

L’inverse est vrai aussi : un coffre peut avoir un chiffrement solide sans aucun déguisement.

## Là où iOS révèle la vraie app

iOS n’a pas été conçu pour garder secrète l’identité d’une app : une app déguisée laisse donc des traces à plusieurs endroits. Quiconque sait où regarder peut les trouver :

| Où | Ce que cela peut révéler |
| --- | --- |
| **Spotlight et recherche de la bibliothèque d’apps** | Chercher le vrai nom de l’app, ou parcourir les catégories de la bibliothèque d’apps, peut la faire apparaître |
| **Réglages › Général › Stockage iPhone** | Une « calculatrice » qui occupe des gigaoctets |
| **Temps d’écran** | Le temps que vous passez dans votre « calculatrice » |
| **Historique d’achats App Store** | Le vrai nom de l’app et sa fiche App Store |
| **Appui prolongé sur l’icône** | Des options comme partager l’app, qui peuvent mener à sa page App Store |
| **Deux calculatrices** | La Calculette d’Apple est toujours sur le téléphone, sauf si vous l’avez supprimée |

<!-- TODO verify iOS label -->

L’indice du stockage est particulièrement difficile à éviter : photos et vidéos prennent de la place, et iOS affiche fidèlement la taille de chaque app. Face à quelqu’un de réellement soupçonneux, un déguisement aide souvent moins qu’on ne le croit.

## Quand le déguisement peut encore servir

Cela ne rend pas les calculatrices coffre-fort inutiles. Un déguisement a une vraie valeur dans quelques situations :

- **Les regards de passage.** Un enfant, un ami ou un collègue qui aperçoit votre écran d’accueil a peu de chances d’enquêter sur une calculatrice.
- **Éviter les questions.** Certaines personnes ne veulent simplement pas expliquer pourquoi elles ont une app « coffre-fort ».
- **Les appareils partagés** où personne ne cherche rien.

Si quelqu’un cherche délibérément, ou pourrait vous pousser à ouvrir des apps, le déguisement est une couche bien mince. Dans ce cas, deux autres idées tiennent généralement mieux.

### Masquer l’app avec iOS lui-même

Sous iOS 18 et versions ultérieures, vous pouvez maintenir le doigt sur la plupart des apps et choisir d’exiger Face ID, ou de masquer l’app. Les apps masquées rejoignent un dossier des apps masquées en bas de la bibliothèque d’apps, verrouillé par Face ID, Touch ID ou votre code, et n’apparaissent plus dans Spotlight. C’est une fonction système qui marche avec n’importe quelle app, pas seulement les coffres. La même réserve que pour l’album Masqués s’applique : quiconque connaît votre code peut ouvrir ce dossier.

<!-- TODO verify iOS label -->

### Le déni plausible plutôt que le déguisement

Le déni plausible, c’est l’idée que, même si quelqu’un voit l’app ou vous oblige à l’ouvrir, rien ne prouve qu’il y a autre chose à trouver. Un coffre leurre en est une forme : un second code ouvre un espace innocent. Une forme plus solide est une conception où n’importe quel code ouvre quelque chose et où l’app ne confirme jamais combien d’espaces existent. Nous expliquons les deux dans [qu’est-ce qu’un coffre leurre ?](id:what-is-a-decoy-vault) et [le déni plausible expliqué](id:plausible-deniability-explained).

## Les questions à poser avant de choisir une calculatrice coffre-fort

1. Le développeur explique-t-il comment les fichiers sont chiffrés, et pas seulement cachés ?
2. Que liste l’étiquette de confidentialité de l’App Store ? Beaucoup de calculatrices coffre-fort sont financées par la publicité, ce qui implique généralement des SDK de pistage.
3. Y a-t-il un compte ou un envoi dans le cloud, et est-ce facultatif ?
4. Comment retrouver l’accès si vous oubliez le code ?
5. L’import copie-t-il la photo, en laissant l’original dans votre photothèque ?

<!-- TODO verify -->

Ce dernier point piège les utilisateurs de tous les types de coffres. L’original reste dans Photos et dans **Suppressions récentes** tant que vous ne le retirez pas ; voir [supprimer les originaux après l’import](id:delete-original-photos-after-import).

## L’approche de Velcrypt

Velcrypt ne se fait pas passer pour autre chose. Il n’a ni déguisement en calculatrice ni icône alternative. Il se concentre plutôt sur ce qui se passe une fois l’app ouverte. Chaque coffre s’ouvre avec son propre schéma tracé sur une grille de 5×5 points, et tout schéma que l’app n’a jamais vu ouvre simplement un coffre vide, sans erreur et sans rien qui prouve l’existence d’autres coffres ([coffres cachés](id:hidden-vaults)). Les fichiers sont chiffrés en AES-256-GCM avec des clés dérivées du schéma ([chiffrement](id:encryption)), et tout reste sur l’appareil.

La contrepartie : l’app est visible sur votre écran d’accueil, sauf si vous utilisez la fonction de masquage d’apps d’iOS. Et dans la première version, le contenu du coffre n’est sauvegardé nulle part : un téléphone perdu ou un schéma oublié signifie un contenu perdu. Pour une comparaison directe, voir [Velcrypt ou les apps calculatrice coffre-fort](id:velcrypt-vs-calculator-vault-apps).
