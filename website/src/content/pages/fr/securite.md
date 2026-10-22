---
pageId: security
title: "Sécurité de Velcrypt : comment fonctionne le chiffrement"
description: "Comment Velcrypt protège vos coffres : dérivation PBKDF2, clé maîtresse par coffre, AES-256-GCM, protection des données iOS — et ses limites."
h1: "Comment fonctionne Velcrypt : le modèle de sécurité"
navTitle: "Modèle de sécurité"
answer: "Velcrypt transforme le motif que vous tracez en clé avec PBKDF2-HMAC-SHA512 (au moins 600 000 itérations), s’en sert pour protéger une clé maîtresse aléatoire de 256 bits propre au coffre, et chiffre chaque fichier en AES-256-GCM sur votre iPhone. Rien n’est envoyé, et il n’existe ni compte ni copie de secours de vos clés."
keyFacts:
  - "Motif → PBKDF2-HMAC-SHA512, au moins 600 000 itérations, sel aléatoire propre à l’appareil conservé dans le trousseau iOS."
  - "Chaque coffre a sa propre clé maîtresse aléatoire de 256 bits ; les clés par fichier sont dérivées avec HKDF."
  - "Les fichiers sont chiffrés en AES-256-GCM via Apple CryptoKit, avec en plus la protection des données iOS (classe de protection complète)."
  - "Un motif inconnu ouvre un coffre vide — aucune liste de coffres, aucun message « motif incorrect »."
  - "Ni réseau, ni compte, ni analyse du contenu des coffres ; les données des coffres sont exclues des sauvegardes iCloud et ordinateur en v1."
  - "Velcrypt n’a pas encore fait l’objet d’un audit de sécurité indépendant."
primaryKeyword: "sécurité velcrypt"
keywords: ["chiffrement coffre-fort photo iphone", "comment fonctionne le chiffrement velcrypt", "coffre-fort photo aes-256-gcm", "verrouillage par motif pbkdf2", "modèle de menace coffre-fort photo", "app coffre-fort déni plausible"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "Velcrypt peut-il voir ou récupérer mes photos ?"
    a: "Non. Velcrypt n’a ni serveur, ni système de comptes, ni copie de vos clés. Votre motif n’est jamais enregistré : personne chez Velcrypt ne peut ouvrir, réinitialiser ou récupérer un coffre."
  - q: "Que se passe-t-il si quelqu’un trace un mauvais motif dans Velcrypt ?"
    a: "Un motif que Velcrypt n’a jamais vu ouvre simplement un nouveau coffre vide. Aucun message d’erreur, et rien n’indique à la personne si d’autres coffres existent."
  - q: "Le chiffrement de Velcrypt est-il le même que celui intégré à l’iPhone ?"
    a: "Non, il s’y ajoute. iOS chiffre déjà l’appareil, et Velcrypt applique à ses fichiers la classe de protection des données iOS la plus stricte, mais il chiffre aussi chaque fichier avec sa propre clé AES-256-GCM dérivée de votre motif : un téléphone déverrouillé ne suffit donc pas à ouvrir un coffre."
  - q: "Velcrypt a-t-il été audité de façon indépendante ?"
    a: "Pas encore. Velcrypt repose sur CryptoKit d’Apple et sur des algorithmes standard et bien étudiés. Nous serions heureux d’accueillir une revue de sécurité indépendante, mais aucune n’a eu lieu à ce jour."
  - q: "Velcrypt cache-t-il le fait que j’utilise un coffre chiffré ?"
    a: "Pas complètement. L’app est visible sur votre écran d’accueil, et une personne disposant d’outils d’investigation peut parfois voir que Velcrypt stocke des données chiffrées, et en quelle quantité approximative. Ce que Velcrypt cache, c’est le nombre de vos coffres et leur contenu."
---

Cette page explique simplement ce qui arrive à vos photos, vidéos et documents quand vous les placez dans Velcrypt — et où s’arrête la protection. Elle s’adresse à celles et ceux qui veulent comprendre la conception avant de lui confier quelque chose de personnel.

## En résumé

Velcrypt est une app iPhone qui conserve vos fichiers privés dans des coffres chiffrés sur votre appareil. Vous ouvrez un coffre en traçant un motif sur une grille de 5×5 points. Ce motif n’est enregistré nulle part. Il passe par une fonction de dérivation de clé volontairement lente qui produit une clé, et c’est cette clé qui protège le contenu du coffre.

Tout se passe sur l’iPhone lui-même. Velcrypt n’a ni compte, ni serveur, ni étape d’envoi : il n’existe aucune copie de votre coffre, ni de vos clés, ailleurs. C’est sa force, et aussi sa principale limite : si le motif est oublié ou si le téléphone est perdu, le coffre ne peut pas être récupéré.

## Du motif à la clé

### Le motif

Un motif est une ligne continue passant par au moins 6 des 25 points, avec au moins un changement de direction. Des motifs plus longs, de 8 à 12 points, sont recommandés, car chaque point supplémentaire multiplie le nombre de motifs qu’un attaquant devrait essayer. Pour peser le pour et le contre, lisez [motif, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id), et découvrez le fonctionnement du verrou sur la [page consacrée au verrouillage par motif](id:pattern-lock).

### PBKDF2 avec un sel propre à l’appareil

Dès que vous avez fini de tracer, Velcrypt convertit la suite de points en clé grâce à **PBKDF2-HMAC-SHA512** avec au moins **600 000 itérations**. PBKDF2 est une fonction de dérivation de clé : une recette volontairement lente et reproductible qui transforme un secret (votre motif) en clé cryptographique. La lenteur est voulue. Dériver une clé vous prend une fraction de seconde, mais quiconque essaie des millions de motifs doit payer ce coût des millions de fois.

La dérivation intègre aussi un **sel** — une valeur aléatoire générée une seule fois sur votre appareil et conservée dans le trousseau iOS. Comme ce sel est propre à votre iPhone, deux personnes qui tracent par hasard le même motif obtiennent des clés totalement différentes, et les tables précalculées « motifs courants → clés » ne servent à rien.

### Une clé maîtresse par coffre

Chaque coffre possède sa propre **clé maîtresse** : 256 bits aléatoires produits par le générateur aléatoire sécurisé du système à la création du coffre. C’est elle qui protège réellement les fichiers du coffre. Elle n’est stockée que sous forme protégée (enveloppée), scellée avec la clé dérivée de votre motif. Sans le bon motif, impossible de la desceller.

Cette séparation compte. La clé maîtresse est réellement aléatoire : sa robustesse ne dépend pas de la facilité à retenir votre motif, et chaque coffre reste cryptographiquement indépendant des autres coffres du même téléphone.

### Une clé par fichier

À partir de la clé maîtresse, Velcrypt dérive une clé distincte pour chaque fichier avec **HKDF**, une fonction standard qui permet d’obtenir plusieurs clés indépendantes à partir d’un secret robuste. Si la clé d’un fichier était un jour exposée, elle ne révélerait ni la clé maîtresse ni celles des autres fichiers.

## Comment les fichiers sont chiffrés

### AES-256-GCM via Apple CryptoKit

Chaque photo, vidéo et document est chiffré en **AES-256-GCM** avec le framework CryptoKit d’Apple, plutôt qu’avec du code cryptographique maison. AES-256-GCM est un chiffrement authentifié : il garantit la confidentialité du contenu *et* détecte toute altération. Si un seul bit d’un fichier chiffré est modifié, le déchiffrement échoue au lieu de produire des données corrompues ou manipulées. Pour aller plus loin, voyez [le chiffrement AES-256 expliqué](id:aes-256-encryption-explained) et la [page sur le chiffrement](id:encryption).

### La protection des données iOS en seconde couche

En plus du chiffrement propre à Velcrypt, les fichiers des coffres sont écrits avec la protection des données iOS réglée sur la classe de **protection complète**. Avec cette classe, iOS garde les fichiers chiffrés avec une clé disponible uniquement lorsque l’iPhone est déverrouillé. Téléphone verrouillé, le système lui-même ne peut pas les lire. Cette couche est fournie par Apple et indépendante des clés de Velcrypt : un attaquant devrait franchir les deux.

## Pourquoi un motif inconnu ouvre un coffre vide

La plupart des apps comparent votre mot de passe à quelque chose de stocké — une empreinte, un vérificateur, une « bonne réponse » — puis affichent *mot de passe incorrect*. Velcrypt ne le fait volontairement pas.

Il n’existe ni liste de coffres ni valeur stockée qui confirme qu’un motif est « correct ». Quand vous tracez un motif, Velcrypt dérive une clé et tente d’ouvrir le coffre correspondant. Si aucun coffre ne correspond, l’app ouvre simplement un nouveau coffre vide pour ce motif. Pour la personne qui tient le téléphone, un motif jamais utilisé et un vrai coffre vide se ressemblent parfaitement.

Cela vous offre un **déni plausible** : la possibilité d’affirmer de façon crédible qu’il n’y a rien d’autre à voir, puisque rien dans l’app ne prouve le contraire. Vous pouvez garder un coffre leurre avec des photos ordinaires et un coffre séparé pour ce qui est vraiment privé. La page sur les [coffres cachés](id:hidden-vaults) et nos guides sur le [coffre leurre](id:what-is-a-decoy-vault) et le [déni plausible](id:plausible-deniability-explained) entrent dans le détail.

Conséquence pratique : si vous vous trompez d’un seul point dans votre motif, vous arriverez dans un coffre vide plutôt que sur un message d’erreur. C’est voulu, pas un bug.

## Verrouillage et sélecteur d’apps

Velcrypt se verrouille automatiquement lorsqu’il passe en arrière-plan, après un délai que vous pouvez régler. Au verrouillage, les clés du coffre sont effacées de la mémoire et il faut retracer le motif. Le contenu du coffre est aussi masqué dans le sélecteur d’apps d’iOS : un coup d’œil à vos apps récentes ne montre aucune miniature de photo privée. Voir [verrouillage automatique](id:auto-lock) pour les réglages.

Il n’y a pas de déverrouillage par Face ID ou Touch ID, par choix. Un visage ou un doigt peut être utilisé sans votre consentement — pendant votre sommeil, ou sous la pression. Un motif n’existe que dans votre mémoire.

## Ni réseau, ni compte, ni sauvegarde

Velcrypt fonctionne entièrement hors ligne. Pas d’inscription, pas d’adresse e-mail, pas de serveur, aucun envoi du contenu des coffres, et aucune donnée d’analyse n’est collectée sur ce que vous stockez. La page [hors ligne, sans compte](id:offline-no-account) détaille ce que cela implique concrètement.

Dans la première version, les données des coffres sont aussi **exclues des sauvegardes iCloud et ordinateur (Finder)**. Vos fichiers chiffrés restent ainsi en dehors des serveurs d’Apple et de tout ordinateur synchronisé, mais avec une conséquence bien réelle : si votre iPhone est perdu, cassé ou réinitialisé, les coffres disparaissent avec lui. Une option de sauvegarde chiffrée est prévue, sans date.

## Le modèle de menace en un coup d’œil

| Menace | Protégé ? | Remarques |
|---|---|---|
| Quelqu’un fait défiler votre photothèque | Oui | Les éléments importés puis supprimés de Photos (y compris de « Suppressions récentes ») ne se trouvent plus que dans Velcrypt. |
| Quelqu’un prend votre téléphone déverrouillé et ouvre Velcrypt | Oui | Il lui faut votre motif ; un mauvais motif affiche un coffre vide. |
| Quelqu’un tente de prouver que vous avez d’autres coffres | En grande partie | Aucune liste de coffres, aucun message « motif incorrect » ; le nombre de coffres n’apparaît pas dans l’app. |
| Vol d’un iPhone verrouillé | Oui | Protection des données iOS plus le chiffrement AES-256-GCM propre à Velcrypt. |
| Attaque par force brute du motif à partir de fichiers extraits | Ralentie | PBKDF2 avec plus de 600 000 itérations et un sel propre à l’appareil ; un motif long fait la différence. |
| Piratage d’un compte cloud | Oui | Les données des coffres ne sont pas envoyées et sont exclues des sauvegardes iCloud en v1. |
| Altération des fichiers chiffrés | Détectée | L’authentification d’AES-256-GCM rejette les données modifiées. |
| Quelqu’un vous regarde tracer le motif | Non | Voir ci-dessous. |
| Logiciel malveillant ou appareil jailbreaké | Non | Voir ci-dessous. |
| Motif oublié ou téléphone perdu | Non | Aucune récupération n’est possible. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Ce contre quoi Velcrypt ne protège pas

Tout outil de sécurité a ses limites, et vous devez connaître celles de Velcrypt avant de vous y fier.

- **Les regards indiscrets.** Si quelqu’un vous voit tracer votre motif, en personne ou par caméra, il peut ouvrir ce coffre. Tracez-le à l’abri des regards et choisissez un motif qui ne ressemble pas à une lettre ou à une forme simple.
- **La contrainte à déverrouiller.** Velcrypt ne peut pas empêcher quelqu’un de vous forcer à tracer un motif. Un coffre leurre peut aider ; un motif de contrainte (bientôt disponible, Premium) est prévu pour ouvrir un coffre choisi et retirer discrètement l’accès aux autres.
- **Un téléphone tendu avec le coffre ouvert.** Tant qu’un coffre est déverrouillé, quiconque tient le téléphone voit ce que vous voyez. Verrouillez-le avant de prêter votre téléphone.
- **Appareils compromis ou jailbreakés et logiciels malveillants.** Un logiciel capable de lire l’écran, d’enregistrer les touches ou d’inspecter la mémoire des apps sur un appareil compromis peut contourner tout chiffrement au niveau d’une app.
- **Captures d’écran ou photos de l’écran.** Velcrypt ne peut pas empêcher un autre appareil photo de photographier votre écran.
- **Les copies ailleurs.** Importer une photo en crée une copie ; l’original reste dans Photos jusqu’à ce que vous le supprimiez, puis séjourne environ 30 jours dans « Suppressions récentes ». Des copies peuvent aussi exister dans Photos iCloud, dans des messageries, dans vos e-mails ou sur le téléphone de quelqu’un d’autre. Suivez [supprimer les originaux après l’import](id:delete-original-photos-after-import).
- **La perte du téléphone ou l’oubli du motif.** Dans les deux cas, les données sont perdues. Il n’existe ni phrase de récupération ni réinitialisation. Voir [motif de coffre oublié](id:forgot-vault-pattern).
- **La détection de l’usage de Velcrypt.** L’icône de l’app est visible, et des outils d’investigation peuvent révéler que Velcrypt contient des données chiffrées, et leur volume approximatif. Velcrypt ne prétend pas le cacher — seulement le nombre de coffres et leur contenu.
- **Les motifs faibles ou faciles à deviner.** Un motif court, ou en forme de L, de Z ou de carré, se devine bien plus facilement. Testez une forme similaire avec le [testeur de robustesse de motif](id:pattern-strength-checker) — jamais votre vrai motif.

## Revue indépendante

Velcrypt repose sur des briques standard et largement étudiées, et sur les bibliothèques cryptographiques d’Apple plutôt que sur des algorithmes maison. Pour autant, une bonne conception n’est pas une conception vérifiée. Velcrypt n’a **pas** fait l’objet d’un audit indépendant. Nous serions heureux d’accueillir une revue de sécurité externe, et si elle a lieu, nous en publierons les conclusions ici.

## Glossaire

- **AES-256-GCM** est un mode de chiffrement symétrique qui utilise une clé de 256 bits et authentifie les données : toute altération est détectée au déchiffrement.
- **PBKDF2** (Password-Based Key Derivation Function 2) est un standard qui transforme un secret, comme un mot de passe ou un motif, en clé en répétant une fonction de hachage un grand nombre de fois, ce qui ralentit les tentatives.
- **Le sel** est une valeur aléatoire combinée à votre secret avant la dérivation de clé, pour qu’un même motif produise des clés différentes sur des appareils différents.
- **HKDF** (HMAC-based Key Derivation Function) est une méthode standard pour dériver plusieurs clés indépendantes à partir d’une clé robuste.
- **La clé maîtresse** est la clé aléatoire de 256 bits propre à un coffre, qui protège toutes les clés de fichiers de ce coffre.
- **Le déni plausible** est la propriété selon laquelle rien dans l’app ne peut prouver l’existence d’autres coffres : vous pouvez montrer un coffre de façon crédible sans révéler les autres.
