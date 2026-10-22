---
pageId: is-iphone-hidden-album-private
title: "L’album Masqués de l’iPhone est-il vraiment privé ?"
description: "L’album Masqués sort vos photos de la photothèque et se verrouille avec Face ID, mais votre code l’ouvre et il se synchronise avec iCloud. Explications."
h1: "L’album Masqués de l’iPhone est-il privé ?"
navTitle: "L’album Masqués est-il privé ?"
answer: "En partie. L’album Masqués retire les photos de la photothèque principale et, depuis iOS 16, se verrouille par Face ID, Touch ID ou votre code. Mais toute personne qui connaît le code de l’appareil peut l’ouvrir, il se synchronise via Photos iCloud, et il n’est chiffré de bout en bout dans iCloud que si vous activez la Protection avancée des données."
keyFacts:
  - "Masquer une photo la retire de la grille, des albums et des widgets ; cela ne la chiffre pas séparément sur l’appareil."
  - "Depuis iOS 16, l’album Masqués est verrouillé par défaut avec Face ID, Touch ID ou le code de l’appareil."
  - "Le code de l’appareil sert toujours de solution de secours : quiconque le connaît peut ouvrir l’album Masqués."
  - "Avec Photos iCloud activé, les photos masquées se synchronisent sur vos autres appareils et dans iCloud."
  - "Dans iCloud, les photos masquées ne sont chiffrées de bout en bout que si la Protection avancée des données est activée."
primaryKeyword: "album masqué iphone privé"
keywords:
  - "confidentialité album masqué iphone"
  - "qui peut voir les photos masquées iphone"
  - "album masqué verrouillé"
  - "album masqué face id"
  - "quelqu’un peut-il voir mes photos masquées"
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Ce que l’album Masqués protège réellement, qui peut encore l’ouvrir, et ce que changent la synchronisation iCloud et la Protection avancée."
category: apple
order: 10
related:
  - are-hidden-photos-saved-to-icloud
  - icloud-advanced-data-protection-explained
  - velcrypt-vs-iphone-hidden-album
  - hide-photos-iphone
  - partner-scrolling-camera-roll
faq:
  - q: "Quelqu’un qui connaît le code de mon iPhone peut-il voir mon album Masqués ?"
    a: "Oui. Le verrou de l’album Masqués utilise les mêmes Face ID, Touch ID et code que le déverrouillage de l’iPhone. Si Face ID échoue ou est annulé, iOS propose le code : quiconque le connaît peut ouvrir l’album."
  - q: "Masquer une photo sur iPhone la chiffre-t-elle ?"
    a: "Pas davantage. Les photos masquées sont protégées par la même Protection des données d’iOS que tous les autres fichiers de l’iPhone. Masquer change l’endroit où la photo apparaît et ajoute une étape d’authentification à l’album, mais ne crée pas de conteneur chiffré distinct."
  - q: "Les photos masquées sont-elles visibles sur mon Mac ou mon iPad ?"
    a: "Si Photos iCloud est activé, oui. Les éléments masqués se synchronisent sur chaque appareil connecté au même compte Apple, où ils apparaissent dans l’album Masqués de l’appareil, lui aussi verrouillé sur les versions récentes de macOS et d’iPadOS."
  - q: "Peut-on désactiver le verrouillage Face ID de l’album Masqués ?"
    a: "Oui. Sous iOS 18 et versions ultérieures, allez dans Réglages › Apps › Photos ; sur les versions plus anciennes, dans Réglages › Photos. Désactiver l’option Face ID (ou Touch ID / code) laisse l’album Masqués ouvert à quiconque peut déverrouiller le téléphone : gardez-la activée."
  - q: "Les apps qui ont accès aux photos voient-elles les photos masquées ?"
    a: "Le masquage est un réglage d’affichage de l’app Photos, pas une barrière d’autorisation. Ne comptez pas sur lui pour tenir une photo à l’écart d’une app qui a un accès complet à votre photothèque ; accordez plutôt un accès limité ou utilisez le sélecteur de photos du système."
---

L’album Masqués est le premier réflexe de la plupart des utilisateurs d’iPhone qui veulent soustraire une photo aux regards. Il est réellement utile, mais « masqué » et « privé » ne sont pas synonymes. Ce guide détaille ce que fait exactement l’album, où s’arrête sa protection et qui peut encore y entrer.

## Ce que fait réellement l’album Masqués

L’album Masqués est une collection intégrée à l’app Photos qui regroupe les éléments que vous avez marqués comme masqués. Quand vous masquez une photo ou une vidéo, iOS la retire de la grille principale, de vos autres albums, du widget Photos et de fonctions comme les Souvenirs et les Photos à la une. Le fichier lui-même ne va nulle part de spécial : il reste dans la même photothèque, simplement marqué comme masqué.

Depuis iOS 16, les albums Masqués et Suppressions récentes sont verrouillés par défaut. Ouvrir l’un ou l’autre demande Face ID, Touch ID ou le code de l’appareil. L’album se trouve à différents endroits selon votre version d’iOS :

| Version d’iOS | Où trouver l’album Masqués |
| --- | --- |
| iOS 18 et versions ultérieures | App Photos, faites défiler jusqu’à **Utilitaires**, puis **Masqués** |
| iOS 16 et iOS 17 | Onglet Albums, faites défiler jusqu’à **Utilitaires**, puis **Masqués** |
| iOS 15 et versions antérieures | Onglet Albums, **Masqués** (sans verrou) |

<!-- TODO verify iOS label -->

Si vous ne le voyez nulle part, l’album lui-même est peut-être désactivé. Sous iOS 18 et versions ultérieures, cherchez l’option **Afficher l’album Masqués** dans Réglages › Apps › Photos ; sur les versions plus anciennes, dans Réglages › Photos. La désactiver retire l’album de l’app Photos, mais les photos restent sur l’appareil. Pour la marche à suivre complète, voir [comment cacher des photos sur iPhone](id:hide-photos-iphone).

## Là où s’arrête sa protection

L’album Masqués excelle dans une tâche : empêcher des photos d’apparaître quand quelqu’un fait défiler votre pellicule. Plusieurs limites comptent si vous attendez davantage.

### Le code est toujours une solution de secours

Le verrou de l’album Masqués, c’est le verrou de votre appareil. Si Face ID ne reconnaît pas la personne qui tient le téléphone, iOS propose le code à la place. Les personnes qui peuvent ouvrir votre album Masqués sont donc exactement celles qui connaissent le code de votre iPhone : un partenaire, un membre de la famille ou quelqu’un qui vous a vu le taper. L’album n’a pas de mot de passe distinct.

### Ce n’est pas un espace chiffré séparé

Chaque fichier d’un iPhone verrouillé est protégé par la Protection des données d’iOS, et les photos masquées ne font pas exception. Mais masquer n’ajoute pas de couche de chiffrement supplémentaire avec sa propre clé. Une fois le téléphone déverrouillé et l’album ouvert avec les identifiants de l’appareil, tout son contenu est lisible. Comparez avec un coffre-fort qui utilise sa propre clé, dérivée d’un secret que vous êtes seul à connaître, comme nous l’expliquons dans [le chiffrement AES-256 expliqué](id:aes-256-encryption-explained).

### Son existence saute aux yeux

Quiconque ouvre Photos et fait défiler jusqu’à Utilitaires voit qu’un album Masqués existe. Sauf si vous l’avez désactivé, il ne cache pas le fait que vous cachez quelque chose, ce qui compte dans certaines situations (voir [le déni plausible expliqué](id:plausible-deniability-explained)).

### La biométrie peut être utilisée sans votre coopération

Face ID et Touch ID sont pratiques, mais un visage ou un doigt peut être présenté pendant que vous dormez, que l’on vous retient ou simplement que l’on vous met la pression. C’est une vraie préoccupation pour certaines personnes, que nous abordons dans [schéma, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Ce qui se passe dans iCloud

Si Photos iCloud est activé, les photos masquées se synchronisent comme tous les autres éléments. Elles apparaissent dans l’album Masqués de votre iPad et de votre Mac et sont stockées sur les serveurs d’Apple. Qu’Apple puisse techniquement les lire dépend du réglage de sécurité de votre compte :

- **Protection standard des données** (par défaut) : les photos sont chiffrées en transit et sur les serveurs d’Apple, mais Apple détient les clés. Apple pourrait donc les déchiffrer, par exemple sur obligation légale.
- **Protection avancée des données** : Photos est chiffré de bout en bout, seuls vos appareils de confiance détiennent les clés.

Nous détaillons ce point dans [les photos masquées sont-elles enregistrées dans iCloud ?](id:are-hidden-photos-saved-to-icloud) et [la Protection avancée des données iCloud expliquée](id:icloud-advanced-data-protection-explained).

Souvenez-vous aussi qu’iCloud est un compte, pas un appareil. Toute personne qui se connecte à votre compte Apple sur un autre appareil, ou sur iCloud.com lorsque l’accès web est autorisé, peut atteindre votre photothèque, album Masqués compris, avec le même comportement de verrouillage sur cet appareil.

## Qui peut réellement voir vos photos masquées

Voici un résumé simple de qui peut, ou non, entrer dans un album Masqués :

| Personne ou situation | Peut-elle voir les photos masquées ? |
| --- | --- |
| Quelqu’un qui fait défiler votre pellicule déverrouillée | Non, les éléments masqués n’apparaissent pas dans la photothèque |
| Quelqu’un qui connaît le code de votre appareil | Oui, le code ouvre l’album |
| Quelqu’un qui a accès à votre compte Apple | Peut-être, sur un appareil ou une session web connectés à ce compte |
| Une personne avec qui vous partagez un forfait iCloud familial | Non, le Partage familial ne partage pas votre photothèque personnelle |
| Un participant à une Photothèque partagée iCloud | Seulement les éléments placés dans la Photothèque partagée ; gardez les photos privées dans votre Photothèque personnelle |
| Apple | Techniquement possible avec la Protection standard ; pas avec la Protection avancée des données activée |

Si vous utilisez la Photothèque partagée iCloud, vérifiez à quelle photothèque appartient une photo avant de la masquer. Notre guide sur les [configurations iCloud partagées en famille](id:family-shared-icloud) explique la différence.

## Rendre l’album Masqués aussi privé que possible

Si vous estimez que l’album Masqués suffit pour votre situation, quelques réglages le renforcent nettement :

1. **Gardez le verrou activé.** Vérifiez que l’option Face ID / Touch ID / code de l’album Masqués est activée dans Réglages › Apps › Photos (iOS 18+) ou Réglages › Photos.
2. **Utilisez un code d’appareil solide.** Six chiffres sont un minimum ; un code alphanumérique plus long est préférable, et ne le partagez jamais.
3. **Activez la Protection avancée des données** si elle vous est proposée et que vous pouvez gérer ses exigences de récupération.
4. **Envisagez de masquer l’album lui-même** avec l’option Afficher l’album Masqués.
5. **Videz Suppressions récentes** après vos rangements, car les éléments supprimés y restent environ 30 jours.

## Quand un coffre-fort séparé est plus adapté

L’album Masqués est conçu pour le rangement et une discrétion légère, pas pour les situations où un proche connaît votre code ou pourrait vous pousser à déverrouiller le téléphone. Dans ces cas, ce qu’il vous faut généralement, c’est un espace doté de son propre secret et de son propre chiffrement.

C’est l’approche de Velcrypt. Chaque coffre s’ouvre avec un schéma tracé sur une grille de 5×5 points, et non avec Face ID ou le code de l’appareil, et son contenu est chiffré en AES-256-GCM avec des clés dérivées de ce schéma ([comment fonctionne le chiffrement](id:encryption)). Chaque schéma ouvre son propre coffre et un schéma inconnu ouvre simplement un coffre vide : rien ne révèle combien de coffres existent ([coffres cachés](id:hidden-vaults)). Tout reste sur l’appareil, sans compte ni copie dans le cloud.

Cela implique aussi des contreparties, en toute honnêteté. Le contenu du coffre n’est pas inclus dans les sauvegardes iCloud ou sur ordinateur dans la première version : si vous perdez le téléphone ou oubliez le schéma, il est irrécupérable. Et importer une photo la copie, si bien qu’il faut toujours retirer l’original de Photos et de Suppressions récentes. Pour une comparaison point par point, lisez [Velcrypt ou l’album Masqués de l’iPhone](id:velcrypt-vs-iphone-hidden-album).
