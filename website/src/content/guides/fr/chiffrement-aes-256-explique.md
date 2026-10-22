---
pageId: aes-256-encryption-explained
title: "Chiffrement AES-256 expliqué (GCM, PBKDF2, quantique)"
description: "Ce qu’est l’AES-256, l’intérêt du mode GCM, pourquoi la dérivation de clé compte plus que l’algorithme, et ce que changent les ordinateurs quantiques."
h1: "Le chiffrement AES-256 expliqué, sans exagération"
navTitle: "Le chiffrement AES-256 expliqué"
answer: "L’AES-256 est un algorithme de chiffrement symétrique qui chiffre les données avec une clé de 256 bits ; personne ne peut raisonnablement le casser en essayant toutes les clés. Pour des données protégées par un schéma ou un mot de passe, la vraie solidité dépend de la dérivation de clé : la lenteur et le soin avec lesquels ce court secret devient la clé. Le mode GCM ajoute la détection de toute altération au secret."
keyFacts:
  - "L’AES est un chiffrement par blocs normalisé par le NIST en 2001 ; l’AES-256 utilise une clé de 256 bits et 14 tours."
  - "GCM est un mode authentifié : il chiffre et détecte aussi toute modification du texte chiffré."
  - "Un schéma ou un mot de passe faible fragilise l’AES-256, car les attaquants devinent le secret, pas la clé."
  - "Une dérivation de clé lente, comme PBKDF2 avec de nombreuses itérations, rend chaque essai coûteux."
  - "L’algorithme de Grover ramènerait l’AES-256 à environ 128 bits de sécurité face à un attaquant quantique, ce qui reste considéré comme solide."
primaryKeyword: "chiffrement aes-256 expliqué"
keywords: ["qu’est-ce que l’aes 256", "aes-256-gcm", "pbkdf2 expliqué", "aes 256 résiste-t-il au quantique", "aes 256 ou aes 128", "chiffrement authentifié"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "L’AES, la taille des clés, le chiffrement authentifié GCM, pourquoi PBKDF2 compte plus que l’algorithme, et la question quantique, en clair."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "Peut-on casser l’AES-256 ?"
    a: "Aucune attaque pratique connue ne retrouve une clé AES-256 plus vite que la force brute, et tester toutes les clés de 256 bits dépasse largement tout ordinateur concevable. Les fuites réelles viennent de mots de passe faibles, de clés volées ou de bugs autour de l’algorithme, pas de l’AES lui-même."
  - q: "Quelle différence entre AES-128 et AES-256 ?"
    a: "Les deux utilisent le même algorithme avec des longueurs de clé et des nombres de tours différents : clés de 128 bits et 10 tours contre clés de 256 bits et 14 tours. L’AES-128 est déjà considéré comme sûr ; l’AES-256 ajoute une large marge, y compris face aux futures attaques quantiques."
  - q: "Que signifie GCM dans AES-256-GCM ?"
    a: "GCM (Galois/Counter Mode) est un mode opératoire qui chiffre les données et produit une étiquette d’authentification. Si un seul bit du fichier chiffré est modifié, le déchiffrement échoue au lieu de renvoyer des données corrompues ou manipulées."
  - q: "L’AES-256 résiste-t-il aux ordinateurs quantiques ?"
    a: "Il est généralement considéré comme résistant. L’algorithme de Grover réduirait, en théorie, de moitié la force effective de la clé, autour de 128 bits, ce qui reste considéré comme sûr. Les ordinateurs quantiques menacent bien plus les algorithmes à clé publique comme RSA que l’AES."
  - q: "Pourquoi une app qui utilise l’AES-256 a-t-elle encore besoin d’un mot de passe ou d’un schéma solide ?"
    a: "Parce que les attaquants ne devinent pas la clé de 256 bits ; ils devinent le court secret dont elle est dérivée. Si votre secret fait partie de quelques milliers de choix courants, même une dérivation lente ne fait gagner qu’un temps limité."
---

« Chiffrement AES-256 » figure dans la liste des fonctionnalités de presque toutes les apps de confidentialité. C’est une affirmation réelle et significative, mais c’est aussi la partie d’un système la moins susceptible de céder. Ce guide explique ce que fait l’AES-256, ce que signifient les lettres en plus comme GCM, et pourquoi l’étape qui transforme votre schéma ou votre mot de passe en clé mérite davantage votre attention.

## Ce qu’est l’AES

L’AES (Advanced Encryption Standard) est un chiffrement symétrique par blocs : la même clé secrète chiffre et déchiffre, et les données sont traitées par blocs de 128 bits. Il a été choisi par le National Institute of Standards and Technology (NIST) américain en 2001, au terme d’un concours public ouvert de plusieurs années, et la conception gagnante, Rijndael, est l’œuvre de deux cryptographes belges.

L’AES est aujourd’hui partout : dans les connexions HTTPS, le Wi-Fi, le chiffrement de disque et le matériel de chaque iPhone récent. Cette omniprésence est un atout. Les cryptographes l’étudient depuis plus de vingt ans, et de nombreux processeurs l’accélèrent matériellement.

### Les tailles de clé

L’AES existe en trois longueurs de clé :

| Variante | Longueur de clé | Tours | Clés possibles |
|---|---|---|---|
| AES-128 | 128 bits | 10 | environ 3,4 × 10³⁸ |
| AES-192 | 192 bits | 12 | environ 6,3 × 10⁵⁷ |
| AES-256 | 256 bits | 14 | environ 1,2 × 10⁷⁷ |

Pour se représenter le chiffre de l’AES-256 : il n’est pas très loin des estimations courantes du nombre d’atomes dans l’univers observable. Essayer toutes les clés n’est pas une question d’ordinateurs plus rapides ; c’est physiquement hors de portée.

## Les modes : pourquoi « GCM » compte

Un chiffrement par blocs, seul, ne brouille qu’un bloc de 16 octets. Un **mode opératoire** définit comment chiffrer des fichiers entiers en toute sécurité. Les anciens modes n’assuraient que le secret : un attaquant pouvait parfois inverser des bits du texte chiffré et provoquer des changements prévisibles dans les données déchiffrées.

**GCM (Galois/Counter Mode) est un mode de chiffrement authentifié.** Il chiffre les données et calcule aussi une étiquette d’authentification. Au déchiffrement, l’étiquette est vérifiée en premier. Si le fichier a été altéré ou corrompu, le déchiffrement échoue proprement au lieu de restituer un contenu modifié.

GCM impose une règle stricte : un nonce (un nombre utilisé une seule fois) ne doit jamais se répéter avec la même clé. Les systèmes bien conçus écartent ce risque par construction, par exemple en donnant à chaque fichier sa propre clé.

## Ce qui décide vraiment de votre sécurité : la dérivation de clé

Voici la vérité qui dérange à propos de l’« AES-256 » dans une app protégée par un verrou. Personne n’attaque directement la clé de 256 bits. On attaque ce dont vous vous souvenez.

Un schéma, un code PIN ou un mot de passe est court. Une **fonction de dérivation de clé (KDF)** est le procédé qui transforme ce court secret en une clé de pleine longueur. Si la KDF est rapide, un attaquant qui a copié les données chiffrées peut tester des milliards d’essais. Si elle est volontairement lente, chaque essai coûte un vrai temps de calcul.

### Comment PBKDF2 ralentit les attaquants

**PBKDF2** (Password-Based Key Derivation Function 2) est une KDF normalisée et largement utilisée. Elle fait passer votre secret des milliers de fois dans une fonction de hachage à clé (HMAC), et y mêle un **sel**, une valeur aléatoire qui rend votre clé dérivée unique même si quelqu’un d’autre a choisi le même secret.

- **Les itérations** multiplient le coût de chaque essai. À plusieurs centaines de milliers d’itérations, un essai qui prendrait une microseconde prend une fraction de seconde perceptible.
- **Le sel** neutralise les tables précalculées. Un attaquant ne peut pas construire une immense liste « schéma → clé » et la réutiliser d’un appareil à l’autre.

Malgré tout, aucune KDF ne peut sauver un secret qui figure parmi les quelques milliers qu’un attaquant essaierait en premier. C’est pourquoi les conseils pour choisir un secret solide, dans le guide [schéma, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id), comptent autant que l’algorithme. Testez une forme similaire (jamais votre vrai schéma) avec le [testeur de robustesse de schéma](id:pattern-strength-checker).

## La question quantique

Les ordinateurs quantiques menacent gravement certaines cryptographies, et d’autres seulement un peu.

- **Les algorithmes à clé publique** comme RSA et la cryptographie sur courbes elliptiques pourraient être cassés par l’algorithme de Shor sur un ordinateur quantique suffisamment puissant. C’est pourquoi l’échange de clés post-quantique se déploie dans tout le secteur.
- **Les chiffrements symétriques** comme l’AES font face à l’algorithme de Grover, qui accélère quadratiquement la recherche par force brute. En pratique, cela divise à peu près par deux la longueur effective de la clé : l’AES-256 offrirait environ 128 bits de sécurité face à un attaquant quantique.

Une sécurité de 128 bits reste considérée comme solide. C’est l’une des raisons pour lesquelles l’AES-256 est recommandé pour les données qui doivent rester confidentielles longtemps.

## Idées reçues

- **Les superlatifs d’une fiche produit veulent dire quelque chose.** Non. L’AES est une norme publique utilisée aussi bien par les banques que par les navigateurs et les messageries ; les adjectifs spectaculaires placés devant relèvent du marketing.
- **L’AES-256 rend une app sûre.** Il rend sûrs les octets chiffrés. La gestion des clés, la KDF, la conception du déverrouillage, les sauvegardes et les copies laissées ailleurs décident de la sécurité de l’ensemble.
- **Des clés plus longues compensent des mots de passe faibles.** Non. Une clé de 256 bits dérivée de « 1234 » n’est pas plus solide que « 1234 ».

## Comment Velcrypt utilise l’AES-256

La conception de Velcrypt suit le principe ci-dessus : un algorithme solide, une gestion soigneuse des clés, une dérivation lente.

- **Algorithme :** AES-256-GCM via Apple CryptoKit, si bien que chaque fichier est chiffré et authentifié.
- **Dérivation de clé :** votre schéma passe par PBKDF2-HMAC-SHA512 avec au moins 600 000 itérations et un sel aléatoire propre à l’appareil, stocké dans le trousseau iOS.
- **Hiérarchie de clés :** chaque coffre a sa propre clé maîtresse aléatoire de 256 bits, dont les clés par fichier sont dérivées avec HKDF. Des clés distinctes par fichier facilitent aussi le respect de la règle des nonces de GCM.
- **Couche supplémentaire :** la Protection des données d’iOS (classe de protection complète) s’applique aux fichiers en plus du chiffrement propre à Velcrypt.
- **Uniquement sur l’appareil :** pas de compte ni de serveurs, donc aucune copie de vos clés ailleurs.

La [page de la fonction de chiffrement](id:encryption) résume tout cela, et la [présentation de la sécurité](id:security) indique clairement ce contre quoi le chiffrement ne peut rien, comme quelqu’un qui vous regarde tracer votre schéma ou un téléphone remis avec le coffre ouvert.
