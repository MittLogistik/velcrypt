---
pageId: faq
title: "FAQ Velcrypt : coffres, motifs, chiffrement"
description: "Réponses aux questions fréquentes sur Velcrypt : coffres par motif, chiffrement, sauvegardes, confidentialité, tarifs et iPhone compatibles."
h1: "Questions fréquentes sur Velcrypt"
navTitle: "FAQ"
answer: "Velcrypt est une app iPhone (iOS 17 ou version ultérieure) qui conserve photos, vidéos et documents dans des coffres chiffrés sur votre appareil. Chaque coffre s’ouvre avec son propre motif, sans compte et sans aucun envoi — ce qui signifie aussi qu’un motif oublié ne peut pas être récupéré."
keyFacts:
  - "App iPhone, iOS 17 ou version ultérieure."
  - "Chaque motif ouvre son propre coffre ; un motif inconnu ouvre un coffre vide."
  - "Chiffrement AES-256-GCM, uniquement sur l’appareil, sans compte."
  - "Aucune récupération possible si vous oubliez le motif ou perdez le téléphone."
  - "Version gratuite plus option Premium ; tarifs annoncés ultérieurement."
primaryKeyword: "faq velcrypt"
keywords: ["questions velcrypt", "comment fonctionne velcrypt", "faq app coffre-fort photo", "aide motif velcrypt", "sauvegarde velcrypt"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Les bases"
    items:
      - q: "Qu’est-ce que Velcrypt ?"
        a: "Velcrypt est une app iPhone qui conserve photos, vidéos et documents privés dans des coffres chiffrés sur votre appareil. Vous ouvrez un coffre en traçant un motif sur une grille de 5×5 points."
      - q: "Que puis-je stocker dans Velcrypt ?"
        a: "Des photos et vidéos de votre photothèque et des documents de l’app Fichiers. Dans un coffre, vous pouvez classer les éléments en albums, regarder photos et vidéos avec zoom et balayage, et déplacer ou exporter des éléments en toute sécurité."
      - q: "Importer une photo dans Velcrypt la supprime-t-il de ma photothèque ?"
        a: "Non. L’import crée une copie chiffrée, et l’original reste dans Photos jusqu’à ce que vous le supprimiez. Après la suppression, videz aussi « Suppressions récentes », où les éléments restent sinon environ 30 jours."
      - q: "Velcrypt a-t-il un appareil photo intégré ?"
        a: "Non. Velcrypt n’inclut pas d’appareil photo. Vous prenez vos photos avec l’app Appareil photo de l’iPhone, puis vous les importez dans un coffre."
      - q: "Velcrypt, est-ce la même chose que l’album Masqués de l’iPhone ?"
        a: "Non. L’album Masqués retire seulement les photos de la vue principale de la photothèque et s’ouvre avec Face ID ou votre code. Velcrypt chiffre les fichiers avec une clé dérivée d’un motif distinct, qui n’est pas le code de votre appareil."
  - title: "Motif et coffres"
    items:
      - q: "Qu’est-ce qu’un motif Velcrypt valide ?"
        a: "Une ligne continue passant par au moins 6 points de la grille 5×5, avec au moins un changement de direction. Des motifs plus longs, de 8 à 12 points, sont recommandés."
      - q: "Comment créer un deuxième coffre ?"
        a: "Tracez un nouveau motif que vous n’avez jamais utilisé. Chaque motif est son propre coffre : un nouveau motif ouvre donc un nouveau coffre vide, que vous pouvez commencer à remplir."
      - q: "Pourquoi mon motif a-t-il ouvert un coffre vide ?"
        a: "Le plus probable, c’est que vous avez tracé un motif légèrement différent, que Velcrypt traite comme un autre coffre. Réessayez lentement ; par choix, l’app n’affiche jamais de message « motif incorrect »."
      - q: "Puis-je voir la liste de mes coffres ?"
        a: "Non. Velcrypt ne tient aucune liste de coffres : rien dans l’app ne révèle combien il en existe. Vous devez retenir chaque motif vous-même."
      - q: "Qu’est-ce qu’un coffre leurre ?"
        a: "Un coffre leurre est un coffre d’apparence ordinaire, au contenu anodin, que vous pouvez ouvrir si l’on vous met la pression, tandis que votre coffre privé reste derrière un autre motif. Rien dans Velcrypt ne prouve l’existence du second coffre."
      - q: "Qu’est-ce que le motif de contrainte ?"
        a: "Le motif de contrainte est une fonction Premium prévue, bientôt disponible. Le tracer ouvrirait un coffre de votre choix et retirerait discrètement l’accès aux autres."
      - q: "Puis-je organiser les éléments dans un coffre ?"
        a: "Oui. Chaque coffre peut contenir des albums, et vous pouvez sélectionner plusieurs éléments et les déplacer d’un album à l’autre au sein de ce coffre."
      - q: "Pourquoi Velcrypt n’utilise-t-il pas Face ID ou Touch ID ?"
        a: "Par choix. Un visage ou un doigt peut être utilisé sans votre consentement, par exemple pendant votre sommeil ou sous la pression, alors qu’un motif n’existe que dans votre mémoire."
  - title: "Sécurité et chiffrement"
    items:
      - q: "Comment Velcrypt chiffre-t-il mes fichiers ?"
        a: "En AES-256-GCM via Apple CryptoKit. Chaque coffre a sa propre clé maîtresse aléatoire de 256 bits, et chaque fichier reçoit sa propre clé dérivée avec HKDF."
      - q: "Comment mon motif devient-il une clé ?"
        a: "Velcrypt fait passer le motif par PBKDF2-HMAC-SHA512 avec au moins 600 000 itérations et un sel aléatoire propre à votre appareil, conservé dans le trousseau iOS. Le motif lui-même n’est jamais enregistré."
      - q: "Velcrypt utilise-t-il la protection des données iOS ?"
        a: "Oui. Les fichiers des coffres utilisent la classe de protection complète : iOS les garde chiffrés dès que l’iPhone est verrouillé, en plus du chiffrement propre à Velcrypt."
      - q: "Velcrypt se verrouille-t-il automatiquement ?"
        a: "Oui. Il se verrouille quand l’app passe en arrière-plan, après un délai réglable, et le contenu des coffres est masqué dans le sélecteur d’apps."
      - q: "Velcrypt a-t-il fait l’objet d’un audit de sécurité ?"
        a: "Aucun audit indépendant n’a encore eu lieu. Velcrypt utilise des algorithmes standard et CryptoKit d’Apple, et nous serions heureux d’accueillir une revue externe."
      - q: "Contre quoi Velcrypt ne peut-il pas protéger ?"
        a: "Quelqu’un qui vous regarde tracer votre motif, la contrainte à déverrouiller, un téléphone tendu avec un coffre ouvert, un logiciel malveillant sur un appareil compromis ou jailbreaké, des photos de votre écran et les copies qui existent encore ailleurs. La page sécurité détaille toutes ces limites."
  - title: "Sauvegarde et récupération"
    items:
      - q: "Que se passe-t-il si j’oublie mon motif Velcrypt ?"
        a: "Le coffre ne peut plus être ouvert. Velcrypt n’enregistre jamais votre motif ni vos clés : ni vous ni Velcrypt ne pouvez le récupérer."
      - q: "Mon coffre est-il inclus dans ma sauvegarde iCloud ?"
        a: "Non. Dans la première version, les données des coffres sont exclues des sauvegardes iCloud, pour que les fichiers chiffrés ne quittent jamais votre appareil."
      - q: "Mon coffre est-il inclus dans une sauvegarde Finder ou iTunes ?"
        a: "Non. Les données des coffres sont aussi exclues des sauvegardes sur ordinateur dans la première version."
      - q: "Que deviennent mes coffres si je change d’iPhone ?"
        a: "Dans la première version, les coffres ne sont pas transférés vers un nouvel appareil. Exportez tout ce que vous voulez garder avant de changer de téléphone, et rangez-le dans un endroit de confiance."
      - q: "Velcrypt proposera-t-il une sauvegarde chiffrée ?"
        a: "Une option de sauvegarde chiffrée est prévue dans le Premium. Nous n’avons pas encore de date et n’en promettrons pas avant qu’elle soit prête."
      - q: "L’assistance Velcrypt peut-elle réinitialiser mon motif ?"
        a: "Non. L’assistance n’a accès ni à vos coffres, ni à vos motifs, ni à vos clés : il n’y a rien à réinitialiser de notre côté."
  - title: "Confidentialité"
    items:
      - q: "Faut-il un compte pour utiliser Velcrypt ?"
        a: "Non. Pas d’inscription, pas d’adresse e-mail, pas d’identifiant. Vous installez l’app et vous tracez un motif."
      - q: "Velcrypt envoie-t-il mes photos sur internet ?"
        a: "Non. Velcrypt n’a aucun serveur pour votre contenu, et les fichiers des coffres ne quittent jamais votre iPhone."
      - q: "Velcrypt collecte-t-il des données d’analyse ?"
        a: "Velcrypt ne collecte aucune donnée d’analyse sur le contenu des coffres. Si vous avez choisi de partager les analyses avec les développeurs dans les réglages d’iOS, Apple peut nous transmettre des données de plantage et de diagnostic."
      - q: "Les autres peuvent-ils savoir que j’utilise Velcrypt ?"
        a: "L’icône de l’app est visible sur votre écran d’accueil, et des outils d’investigation peuvent révéler que Velcrypt contient des données chiffrées, et en quelle quantité approximative. Velcrypt cache le nombre de coffres et leur contenu, pas sa propre existence."
      - q: "Velcrypt affiche-t-il de la publicité ou vend-il des données ?"
        a: "Non. Velcrypt n’a pas de publicité et ne vend pas de données. Il ne collecte tout simplement pas votre contenu."
  - title: "Tarifs et disponibilité"
    items:
      - q: "Velcrypt est-il gratuit ?"
        a: "Il existe une version gratuite, plus une option Premium. Le prix du Premium sera annoncé."
      - q: "Que comprendra le Premium ?"
        a: "Le Premium prévu comprend des éléments illimités, plus de coffres, le motif de contrainte (bientôt disponible) et une future sauvegarde chiffrée."
      - q: "Où obtenir Velcrypt ?"
        a: "Velcrypt est une app iPhone distribuée via l’App Store. Consultez le bouton App Store de ce site pour connaître la disponibilité actuelle."
      - q: "Qui gère les paiements ?"
        a: "Apple gère tous les achats via l’App Store. Velcrypt ne voit jamais vos informations de paiement."
  - title: "Compatibilité"
    items:
      - q: "Quelle version d’iOS faut-il pour Velcrypt ?"
        a: "Velcrypt nécessite iOS 17 ou une version ultérieure sur iPhone."
      - q: "Existe-t-il une app Velcrypt pour iPad, Mac ou Android ?"
        a: "Non. Velcrypt est uniquement une app iPhone, et il n’existe pas de version web."
      - q: "Velcrypt se synchronise-t-il entre plusieurs appareils ?"
        a: "Non. Il n’y a pas de synchronisation cloud ; chaque coffre n’existe que sur l’iPhone où il a été créé."
      - q: "Puis-je importer des documents depuis l’app Fichiers ?"
        a: "Oui. Vous pouvez importer des documents depuis l’app Fichiers dans n’importe quel coffre, aux côtés de vos photos et vidéos."
---

Voici les questions les plus fréquentes sur Velcrypt, classées par thème. Chaque réponse se suffit à elle-même : allez directement à la section qui vous intéresse.

Pour une vue technique complète, la page [modèle de sécurité](id:security) explique comment votre motif devient une clé et comment les fichiers sont chiffrés, ainsi que ce contre quoi Velcrypt ne peut pas protéger. Pour le contenu de chaque version, voir les [tarifs](id:pricing). Si vous pensez avoir perdu l’accès à un coffre, lisez [motif de coffre oublié](id:forgot-vault-pattern) avant toute autre tentative — et rappelez-vous qu’un motif inhabituel ouvre simplement un nouveau coffre vide, pas un message d’erreur.

Vous ne trouvez pas votre question ? [Contactez l’assistance](id:support) et nous vous aiderons dans la mesure du possible. Nous pouvons répondre à vos questions sur le fonctionnement de l’app, mais nous ne pourrons jamais ouvrir, réinitialiser ou récupérer un coffre à votre place.
