---
pageId: are-photo-vault-apps-safe
title: "Les apps coffre-fort photo sont-elles sûres ? 9 critères"
description: "Du vrai chiffrement au simple écran de code : jugez un coffre-fort photo sur son chiffrement, sa collecte de données, le cloud et la récupération."
h1: "Les apps coffre-fort photo sont-elles sûres ?"
navTitle: "Les coffres-forts photo sont-ils sûrs ?"
answer: "Certaines oui, d’autres non. Un coffre-fort photo ne vaut que par son chiffrement, sa collecte de données et ses choix de stockage. Un coffre digne de confiance explique comment les fichiers sont chiffrés, collecte peu de données, dit si quelque chose part sur un serveur, et reste honnête sur ce qui se passe si vous oubliez votre code ou supprimez l’app."
keyFacts:
  - "Un écran de code ne protège pas à lui seul les fichiers : cherchez un chiffrement au repos documenté et lié à votre secret."
  - "L’étiquette de confidentialité de l’App Store indique les données qu’une app déclare collecter et si elle vous piste."
  - "Les coffres financés par la publicité intègrent généralement du code publicitaire tiers."
  - "Supprimer une app de coffre-fort supprime normalement ses fichiers sur l’appareil : vérifiez les options de sauvegarde avant de la désinstaller."
  - "L’import dans un coffre copie généralement la photo : l’original reste dans Photos jusqu’à ce que vous le supprimiez."
primaryKeyword: "app coffre-fort photo sûre"
keywords:
  - "coffre-fort photo est-il sûr"
  - "les apps coffre-fort sont-elles sécurisées"
  - "une app coffre-fort peut-elle voir mes photos"
  - "confidentialité coffre-fort photo"
  - "app photo secrète fiable"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Une liste concrète pour juger un coffre-fort photo : chiffrement, étiquette de confidentialité, compte, cloud, pub, désinstallation et récupération."
category: choosing
order: 21
related:
  - best-private-photo-vault-apps-iphone
  - photo-vault-without-account
  - aes-256-encryption-explained
  - calculator-vault-apps-explained
  - delete-original-photos-after-import
  - security
faq:
  - q: "Le développeur d’une app coffre-fort photo peut-il voir mes photos ?"
    a: "Si l’app envoie vos photos sur ses serveurs sans chiffrement de bout en bout, le développeur pourrait techniquement y accéder. Si l’app garde les fichiers uniquement sur votre appareil, ou les chiffre avec une clé que vous seul détenez, il ne le peut pas."
  - q: "Les apps coffre-fort photo se font-elles pirater ?"
    a: "Des failles ont été découvertes dans des apps de coffre-fort au fil des ans, généralement quand les fichiers étaient stockés en clair ou protégés par un simple écran de code. Choisir une app qui documente un vrai chiffrement et stocke le moins possible réduit ce risque."
  - q: "Que deviennent mes photos si je supprime une app coffre-fort ?"
    a: "Pour les coffres locaux, supprimer l’app supprime normalement les fichiers du coffre avec elle. Pour les coffres sauvegardés dans le cloud, vos fichiers peuvent rester dans votre compte. Consultez la documentation de l’app avant de la désinstaller, et exportez d’abord ce que vous voulez garder."
  - q: "Une app coffre-fort est-elle plus sûre que l’album Masqués de l’iPhone ?"
    a: "Elle peut l’être, si elle utilise un secret distinct et un vrai chiffrement, car l’album Masqués s’ouvre avec le code de l’appareil. Un coffre qui ajoute seulement un écran de code, ou qui envoie les fichiers de façon peu sûre, n’apporte pas forcément de progrès."
  - q: "Une app coffre-fort photo doit-elle demander l’accès complet à la photothèque ?"
    a: "Pas pour importer : le sélecteur de photos du système peut ne transmettre que les éléments choisis. Certains coffres demandent un accès plus large pour supprimer les originaux à votre place. N’accordez que ce qu’exigent les fonctions que vous utilisez."
---

« Coffre-fort » sonne rassurant, mais le mot ne dit rien de la façon dont une app stocke réellement vos fichiers. Certaines apps de coffre-fort chiffrent tout avec une clé dérivée de votre secret. D’autres rangent vos photos dans un dossier ordinaire et placent un clavier numérique devant. Vous ne pouvez pas inspecter le code, mais vous pouvez apprendre beaucoup de ce qu’une app vous dit et de ce qu’elle demande.

Appliquez la liste ci-dessous à tout coffre que vous envisagez, y compris le nôtre.

## La liste de vérification

### 1. Explique-t-elle son chiffrement ?

Le chiffrement au repos signifie que les fichiers sont stockés sous forme brouillée et ne peuvent être lus qu’avec la bonne clé. Un coffre sûr vous dit, en termes simples, quel algorithme il utilise (par exemple AES-256), comment la clé est dérivée de votre code, mot de passe ou schéma, et où les clés sont stockées.

Des formules vagues comme « sécurité de niveau bancaire » sans précisions sont un signal d’alerte. Tout comme une description qui ne parle que de l’écran de verrouillage. Voir [le chiffrement AES-256 expliqué](id:aes-256-encryption-explained) pour savoir à quoi ressemblent des réponses solides.

### 2. Le secret est-il distinct du code de votre appareil ?

Si le coffre s’ouvre avec Face ID et se rabat sur le code de l’iPhone, toute personne qui connaît ce code peut entrer : c’est la même limite que l’[album Masqués](id:is-iphone-hidden-album-private) intégré. Un code PIN, un mot de passe ou un schéma distinct constitue une vraie couche supplémentaire.

### 3. Que dit l’étiquette de confidentialité ?

Sur la page App Store de l’app, faites défiler jusqu’à **Confidentialité de l’app**. Apple y regroupe les déclarations du développeur en données utilisées pour vous pister, données liées à vous et données non liées à vous. Pour un coffre, l’idéal est de voir **Aucune donnée collectée** ou une liste courte et explicable. Ces étiquettes sont déclaratives, mais une longue liste d’identifiants, de données d’utilisation et de localisation dans une app de confidentialité doit vous faire réfléchir.

<!-- TODO verify iOS label -->

### 4. Exige-t-elle un compte ?

Un compte lié à un e-mail n’est pas dangereux en soi, et il permet souvent la sauvegarde. Mais l’entreprise sait alors qui vous êtes et que vous utilisez un coffre, et cela ajoute un compte qui peut être piraté ou hameçonné. Si vous n’avez pas besoin des fonctions cloud, un [coffre-fort sans compte](id:photo-vault-without-account) évite tout cela.

### 5. Quelque chose part-il dans le cloud ?

Découvrez si vos photos quittent un jour le téléphone. S’il existe une sauvegarde cloud, vérifiez si elle est chiffrée de bout en bout (vous seul détenez la clé) ou simplement chiffrée sur les serveurs de l’entreprise. Un test pratique simple est décrit dans notre guide sur les coffres sans compte : utilisez l’app en mode Avion et regardez ce qui cesse de fonctionner.

### 6. Est-elle financée par la publicité ?

Les apps financées par la publicité intègrent généralement des SDK publicitaires tiers, qui collectent des données au niveau de l’appareil et effectuent des requêtes réseau que vous ne contrôlez pas. Cela ne signifie pas que vos photos fuient, mais le nombre d’acteurs impliqués augmente. L’étiquette de confidentialité le reflète généralement dans la rubrique du pistage.

### 7. Que se passe-t-il quand vous la désinstallez ?

Sur iOS, les apps stockent leurs fichiers dans leur propre conteneur privé. Quand vous supprimez une app, iOS supprime ce conteneur, et avec lui tout contenu de coffre stocké uniquement sur l’appareil. C’est bon pour la confidentialité et dangereux pour vos données. Avant de désinstaller un coffre, exportez ce que vous voulez garder et vérifiez si l’app conserve une copie dans le cloud que vous devez aussi supprimer.

### 8. Comment fonctionne la récupération ?

Demandez-vous ce qui se passe si vous oubliez votre secret ou perdez votre téléphone. Réponses possibles :

- **Récupération par e-mail ou par compte :** pratique, mais quelqu’un d’autre que vous peut alors accorder l’accès.
- **Une clé de récupération ou une sauvegarde que vous contrôlez :** solide, si vous la conservez avec soin.
- **Aucune récupération :** l’option la plus confidentielle, et la moins indulgente.

Aucune ne convient à tout le monde. L’important, c’est que l’app vous le dise honnêtement. Voir [schéma de coffre oublié ?](id:forgot-vault-pattern) pour savoir comment nous gérons ce cas.

### 9. Que fait-elle des originaux ?

La plupart des coffres copient une photo quand vous l’importez. L’original reste dans Photos, et peut-être dans iCloud, jusqu’à ce que vous le supprimiez, puis séjourne environ 30 jours dans **Suppressions récentes**. Une bonne app vous le rappelle ; une app négligente vous laisse croire que la photo a été déplacée. Notre guide pour [supprimer les originaux après l’import](id:delete-original-photos-after-import) explique le nettoyage.

## Les signaux d’alerte en un coup d’œil

| Signal | Pourquoi c’est important |
| --- | --- |
| Aucune mention de la façon dont les fichiers sont chiffrés | Peut n’être qu’un écran de verrouillage |
| S’ouvre avec le code de l’appareil en secours | Quiconque connaît votre code peut entrer |
| Longue étiquette de confidentialité avec pistage | Des tiers impliqués dans une app de confidentialité |
| Compte requis pour l’usage de base | Votre identité est liée à votre coffre |
| Sauvegarde cloud sans chiffrement de bout en bout | L’entreprise pourrait accéder aux copies |
| Promesses de sécurité absolue, inviolable | Aucun produit de sécurité honnête ne promet cela |

## Ce contre quoi aucun coffre ne protège

Même un coffre bien conçu a ses limites, et une app honnête le dira. Il ne peut pas empêcher quelqu’un de vous regarder saisir votre secret, un logiciel malveillant sur un téléphone jailbreaké, une personne à qui vous tendez votre téléphone pendant que le coffre est ouvert, ou quelqu’un qui photographie votre écran. Et il ne peut pas atteindre les copies qui existent ailleurs : dans Photos, dans iCloud, dans une conversation, ou sur le téléphone de la personne à qui vous avez envoyé l’image.

## Comment Velcrypt répond à la liste

Par souci de transparence, voici comment notre propre app se situe :

- **Chiffrement :** AES-256-GCM via Apple CryptoKit. Les clés sont dérivées de votre schéma par PBKDF2-HMAC-SHA512 avec au moins 600 000 itérations, chaque coffre a sa propre clé maîtresse aléatoire, et la Protection des données d’iOS s’applique en plus. Détails sur notre [page sécurité](id:security) et sur la [page de la fonction de chiffrement](id:encryption).
- **Secret :** un schéma sur une grille de 5×5 points, distinct du code de l’appareil ; pas de Face ID, volontairement.
- **Compte et cloud :** aucun. Pas d’inscription, pas de serveurs, aucun envoi ([hors ligne, sans compte](id:offline-no-account)).
- **Récupération :** aucune dans la première version. Le contenu du coffre est exclu des sauvegardes iCloud et sur ordinateur : perdre le téléphone ou oublier le schéma rend le contenu irrécupérable. Une option de sauvegarde chiffrée est prévue.
- **Originaux :** l’import copie un élément ; vous supprimez vous-même l’original.

Si un coffre que vous envisagez répond aussi clairement à ces points, c’est bon signe. Pour une comparaison plus large, voir [les meilleures apps coffre-fort photo pour iPhone](id:best-private-photo-vault-apps-iphone).
