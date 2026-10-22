---
pageId: encryption
title: "Chiffrement Velcrypt : AES-256-GCM, clés issues du schéma"
description: "Comment Velcrypt chiffre votre coffre : PBKDF2-HMAC-SHA512 depuis le schéma, clé maîtresse aléatoire de 256 bits, clés par fichier via HKDF et AES-256-GCM."
h1: "Comment Velcrypt chiffre votre coffre-fort photo"
navTitle: "Chiffrement"
answer: "Velcrypt chiffre chaque fichier en AES-256-GCM. Votre schéma est renforcé par PBKDF2-HMAC-SHA512 (au moins 600 000 itérations, sel propre à l’appareil) pour obtenir une clé qui déverrouille la clé maîtresse aléatoire de 256 bits du coffre, dont HKDF dérive une clé distincte par fichier. La protection des données d’iOS ajoute une seconde couche."
keyFacts:
  - "Algorithme : chiffrement authentifié AES-256-GCM via Apple CryptoKit."
  - "Renforcement du schéma : PBKDF2-HMAC-SHA512, au moins 600 000 itérations."
  - "Un sel aléatoire propre à l’appareil est conservé dans le trousseau iOS."
  - "Chaque coffre a sa propre clé maîtresse aléatoire de 256 bits ; chaque fichier reçoit sa propre clé via HKDF."
  - "La protection des données d’iOS (classe de protection complète) s’ajoute par-dessus."
primaryKeyword: "coffre-fort photo chiffré iphone"
keywords: ["chiffrement coffre-fort photo", "coffre-fort photo aes-256-gcm", "chiffrer ses photos iphone", "app coffre pbkdf2", "comment mon coffre est-il chiffré", "chiffrement authentifié expliqué"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "AES-256-GCM pour chaque fichier, clés dérivées de votre schéma via PBKDF2-HMAC-SHA512 et HKDF, plus la protection des données d’iOS."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "Quel chiffrement Velcrypt utilise-t-il ?"
    a: "AES-256-GCM, un mode de chiffrement authentifié, via le framework CryptoKit d’Apple. Chaque fichier est chiffré avec sa propre clé, dérivée de la clé maîtresse aléatoire de 256 bits du coffre."
  - q: "Mon schéma est-il stocké sur le téléphone ?"
    a: "Votre schéma n’est pas utilisé directement comme clé. Il est renforcé par PBKDF2-HMAC-SHA512 avec au moins 600 000 itérations et un sel propre à l’appareil, et le résultat sert à déverrouiller la clé maîtresse du coffre."
  - q: "Velcrypt peut-il déchiffrer mes photos ?"
    a: "Non. Velcrypt n’a pas de serveurs et ne détient aucune copie de vos clés. Les clés ne peuvent être reconstituées que sur votre téléphone, à partir de votre schéma : c’est aussi pour cela qu’un schéma oublié ne peut pas être réinitialisé."
  - q: "Pourquoi utiliser aussi la protection des données d’iOS ?"
    a: "Elle ajoute une couche indépendante. Les fichiers relèvent de la classe de protection complète : tant que le téléphone est verrouillé, iOS les garde chiffrés avec des clés liées au code de votre appareil, en plus du chiffrement propre à Velcrypt."
---

Le chiffrement est ce qui fait d’un coffre autre chose qu’un dossier caché. Dans Velcrypt, chaque photo, vidéo et document est chiffré sur votre iPhone avant d’être enregistré, avec des clés qui ne peuvent être reconstituées qu’à partir de votre schéma. Cette page explique comment ces clés sont créées et utilisées.

## La chaîne de clés, étape par étape

Velcrypt repose sur un modèle de clés en couches. Chaque couche a un rôle précis.

1. **Votre schéma.** Vous le tracez sur la [grille 5×5](id:pattern-lock). C’est le seul secret que vous devez retenir.
2. **Renforcement par PBKDF2-HMAC-SHA512.** Le schéma passe par PBKDF2 avec SHA-512 pendant **au moins 600 000 itérations**, accompagné d’un sel aléatoire. Le renforcement de clé est une technique qui rend chaque tentative volontairement lente : essayer des schémas un par un devient coûteux.
3. **Un sel propre à l’appareil, dans le trousseau.** Le sel est aléatoire, créé sur votre appareil et conservé dans le trousseau iOS. Il garantit qu’un même schéma produit une clé différente sur un autre téléphone, ce qui rend inutiles les tables de tentatives précalculées.
4. **La clé maîtresse du coffre.** Chaque coffre possède sa propre **clé maîtresse aléatoire de 256 bits**. La clé issue du schéma ne chiffre pas directement vos fichiers : elle déverrouille cette clé maîtresse.
5. **Des clés par fichier avec HKDF.** À partir de la clé maîtresse, HKDF (une fonction standard de dérivation de clés) produit une clé distincte pour chaque fichier. Deux fichiers ne partagent jamais la même clé.
6. **AES-256-GCM.** Chaque fichier est chiffré avec sa propre clé en AES-256, mode GCM, via CryptoKit d’Apple.

| Couche | Rôle |
| --- | --- |
| Schéma | Le secret que vous seul connaissez |
| PBKDF2-HMAC-SHA512, 600 000+ itérations | Ralentit chaque tentative |
| Sel propre à l’appareil (trousseau) | Rend les clés uniques à l’appareil |
| Clé maîtresse aléatoire de 256 bits | Une par coffre, sépare les coffres |
| HKDF | Une clé unique pour chaque fichier |
| AES-256-GCM | Chiffre et authentifie le fichier |
| Protection des données d’iOS | Seconde couche, au niveau du système |

Comme chaque coffre a sa propre clé maîtresse, les coffres sont séparés cryptographiquement. C’est ce qui fait des [coffres cachés](id:hidden-vaults) bien plus qu’un simple effet visuel.

## Ce que signifie « chiffrement authentifié »

Le chiffrement authentifié est un chiffrement qui protège à la fois la confidentialité et l’intégrité. AES-256-GCM fait deux choses en même temps : il brouille le fichier pour qu’il soit illisible sans la clé, et il y joint une étiquette d’authentification qui prouve que le fichier n’a pas été modifié.

Quand Velcrypt ouvre un fichier, il vérifie cette étiquette. Si un seul octet a changé, par corruption ou par manipulation, le déchiffrement échoue au lieu de renvoyer discrètement des données abîmées ou altérées. Les anciens modes qui chiffrent sans authentification ne peuvent pas le détecter. Pour une présentation simple de l’algorithme lui-même, lisez [le chiffrement AES-256 expliqué](id:aes-256-encryption-explained).

## La protection des données d’iOS, seconde couche

En plus de son propre chiffrement, Velcrypt enregistre les fichiers des coffres avec la protection des données d’iOS réglée sur la classe de **protection complète**. Avec cette classe, iOS garde les fichiers chiffrés avec des clés liées au code de votre appareil chaque fois que le téléphone est verrouillé.

Les deux couches sont indépendantes. Même si l’une était contournée, l’autre resterait entre un téléphone verrouillé et vos fichiers.

## Pourquoi les clés n’existent nulle part ailleurs

Velcrypt fonctionne [entièrement hors ligne, sans compte](id:offline-no-account). Pas de serveurs, pas d’envoi de fichiers, aucune copie de vos clés en dehors de votre téléphone. Cette conception supprime toute une catégorie de risques : il n’y a aucune base de données à pirater ni aucun employé capable de déchiffrer vos fichiers.

Cela a aussi un prix. Comme les clés n’existent que sur l’appareil et uniquement grâce à votre schéma, personne ne peut récupérer un coffre si le schéma est oublié. Pour ne pas perdre un coffre avec le téléphone, créez une sauvegarde chiffrée dans Réglages → Sauvegarde : un fichier protégé par un mot de passe de sauvegarde que vous choisissez, et que Velcrypt ne reçoit jamais.

## Ce que le chiffrement ne couvre pas

Un chiffrement solide protège les fichiers stockés. Il ne peut rien si quelqu’un vous regarde tracer votre schéma, si le coffre est ouvert quand vous tendez le téléphone, ou si un appareil jailbreaké exécute un logiciel malveillant. Il n’atteint pas non plus les copies hors de Velcrypt, comme les originaux encore présents dans Photos. La [présentation de la sécurité](id:security) détaille le modèle de menace, y compris [ce contre quoi Velcrypt ne protège pas](id:security#what-velcrypt-does-not-protect-against).
