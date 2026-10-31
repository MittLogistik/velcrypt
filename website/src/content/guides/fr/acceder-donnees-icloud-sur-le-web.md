---
pageId: icloud-access-data-on-web
title: "Accéder aux données iCloud sur le Web : à activer ?"
description: "Ce que fait le réglage Accéder aux données iCloud sur le Web (Autoriser l’accès aux données depuis iOS 26.4), son lien avec l’ADP et comment le désactiver."
h1: "« Accéder aux données iCloud sur le Web » : ce que fait ce réglage et iCloud est-il sûr ?"
navTitle: "Accéder aux données iCloud sur le Web"
answer: "« Accéder aux données iCloud sur le Web » détermine si iCloud.com peut afficher vos photos, e-mails, notes, fichiers et autres données iCloud dans un navigateur. Depuis iOS 26.4, il s’appelle Autoriser l’accès aux données, dans Réglages › [votre nom] › iCloud › iCloud.com. Le désactiver n’ajoute pas de chiffrement, mais ferme une porte d’entrée. Avec la Protection avancée des données, il est désactivé par défaut."
keyFacts:
  - "Depuis iOS 26.4 : Réglages › [votre nom] › iCloud › iCloud.com › Autoriser l’accès aux données. Avant : Réglages › [votre nom] › iCloud › Accéder aux données iCloud sur le Web."
  - "Désactivé, iCloud.com n’affiche plus e-mails, contacts, calendriers, photos, notes, rappels ni fichiers ; Localiser sur iCloud.com/find fonctionne toujours."
  - "Activer la Protection avancée des données désactive automatiquement l’accès web."
  - "Avec l’ADP et l’accès web activé, un appareil de confiance approuve chaque session et ne partage que les clés nécessaires, par tranches d’une heure."
  - "Désactiver l’accès web ne chiffre pas vos données de bout en bout ; seuls l’ADP et les catégories chiffrées par défaut par Apple le font."
primaryKeyword: "accéder aux données icloud sur le web"
keywords:
  - "autoriser l’accès aux données icloud"
  - "désactiver accès web icloud"
  - "icloud.com accès aux données"
  - "icloud est-il sécurisé"
  - "sécurité icloud iphone"
  - "chiffrement icloud"
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Ce que fait le réglage d’accès web d’iCloud, son fonctionnement avec la Protection avancée des données, quand le couper et quel niveau de sécurité offre iCloud."
category: apple
order: 64
related:
  - icloud-advanced-data-protection-explained
  - advanced-data-protection-uk
  - are-hidden-photos-saved-to-icloud
  - which-apps-can-see-your-photos-iphone
  - offline-no-account
faq:
  - q: "À quoi sert « Accéder aux données iCloud sur le Web » ?"
    a: "Ce réglage décide si vous pouvez consulter vos données iCloud, comme les photos, e-mails, notes, rappels et fichiers iCloud Drive, en vous connectant à iCloud.com depuis un navigateur. Désactivé, ces données ne sont disponibles que sur vos appareils Apple de confiance."
  - q: "Faut-il désactiver l’accès web à iCloud ?"
    a: "Si vous n’utilisez jamais iCloud.com, le désactiver est une mesure sensée et peu contraignante : une personne qui obtiendrait votre mot de passe de compte Apple et un code ne pourrait pas parcourir vos données sur le Web. Si vous utilisez iCloud.com sur un PC Windows ou au travail, laissez-le activé et protégez bien votre compte."
  - q: "Pourquoi je ne vois pas mes photos sur iCloud.com ?"
    a: "L’accès web est probablement désactivé, soit parce que vous l’avez coupé, soit parce que vous avez activé la Protection avancée des données, qui le désactive automatiquement. Activez Autoriser l’accès aux données (ou Accéder aux données iCloud sur le Web) et, avec l’ADP, approuvez la session sur un appareil de confiance."
  - q: "Désactiver l’accès web chiffre-t-il mes données iCloud ?"
    a: "Non. Cela supprime un moyen de voir les données dans un navigateur, mais le chiffrement reste le même. En protection standard, Apple détient toujours les clés de Photos, de la sauvegarde iCloud et d’iCloud Drive. Seule la Protection avancée des données change cela."
  - q: "iCloud est-il sûr pour des photos privées ?"
    a: "iCloud chiffre vos photos en transit et sur les serveurs d’Apple, et avec la Protection avancée des données seuls vos appareils détiennent les clés. Les risques les plus concrets sont le piratage du compte, les albums partagés et les copies synchronisées. Pour quelques fichiers très privés, un coffre-fort qui ne les envoie jamais est plus sûr."
  - q: "Puis-je toujours utiliser Localiser sur le Web avec l’accès désactivé ?"
    a: "Oui. Selon Apple, vous pouvez toujours retrouver vos appareils sur iCloud.com/find lorsque l’accès web à vos données iCloud est désactivé."
howTo:
  name: "Désactiver ou activer l’accès web aux données iCloud"
  steps:
    - name: "Ouvrez les réglages iCloud"
      text: "Ouvrez Réglages, touchez votre nom en haut, puis touchez iCloud."
    - name: "Trouvez le réglage"
      text: "Sous iOS 26.4 ou ultérieur, touchez iCloud.com. Dans les versions antérieures, cherchez l’interrupteur Accéder aux données iCloud sur le Web sur l’écran iCloud."
    - name: "Basculez l’interrupteur"
      text: "Désactivez Autoriser l’accès aux données pour qu’iCloud.com n’affiche pas vos données, ou activez-le pour l’utiliser. Sous iOS 26.4 ou ultérieur, vous pouvez aussi activer ou désactiver Autoriser la recherche."
    - name: "Approuvez les sessions si vous utilisez l’ADP"
      text: "Si la Protection avancée des données est activée, connectez-vous à iCloud.com et approuvez la demande sur un iPhone, iPad ou Mac de confiance à chaque utilisation."
---

Dans Réglages › [votre nom] › iCloud se cache un réglage auquel presque personne ne pense : **Accéder aux données iCloud sur le Web**, devenu **Autoriser l’accès aux données** dans iOS 26.4. Il décide si vos données iCloud peuvent être ouvertes dans n’importe quel navigateur, sur n’importe quel ordinateur, par quiconque peut se connecter à votre compte Apple. Voici ce qu’il fait vraiment, comment il fonctionne avec la Protection avancée des données et ce qu’il implique pour une question plus large : iCloud est-il sûr ?

## Ce que fait ce réglage

iCloud.com vous permet d’utiliser Mail, Photos, iCloud Drive, Notes, Rappels, Contacts et Calendrier depuis un navigateur. C’est pratique sur un PC Windows ou un ordinateur prêté, mais cela signifie aussi que vos données sont accessibles de partout avec un navigateur et vos identifiants.

Depuis iOS 16.2, vous pouvez couper cet accès. Selon Apple, lorsque l’accès web est désactivé :

- vos données iCloud habituellement disponibles sur iCloud.com, comme les e-mails, contacts, calendriers, photos, notes, rappels, fichiers et documents, ne sont accessibles que sur vos appareils de confiance ;
- en vous connectant à iCloud.com, vous voyez une alerte indiquant que l’accès web est désactivé, avec un lien pour le réactiver depuis un appareil de confiance ;
- vous pouvez toujours retrouver vos appareils sur **iCloud.com/find** ;
- vos données iCloud n’apparaissent plus dans la liste des données que vous pouvez demander sur privacy.apple.com tant que l’accès web n’est pas réactivé.

Certaines données, comme les données Santé et les mots de passe du trousseau iCloud, ne sont jamais disponibles sur iCloud.com, quel que soit le réglage.

## Où le trouver : iOS 26.4 a changé son nom

Le réglage a changé de place avec iOS 26.4. La page d’assistance d’Apple mentionne les deux versions :

| Version d’iOS | Chemin | Libellé |
| --- | --- | --- |
| iOS 26.4 ou ultérieur | Réglages › [votre nom] › iCloud › iCloud.com | **Autoriser l’accès aux données** (et **Autoriser la recherche**) |
| iOS 16.2 à 26.3 | Réglages › [votre nom] › iCloud | **Accéder aux données iCloud sur le Web** |

Sur un Mac sous macOS 26.4 ou ultérieur, ouvrez Réglages Système › [votre nom] › iCloud, puis l’option d’accès aux données sur iCloud.com.

**Autoriser la recherche** est une nouveauté d’iOS 26.4. Lorsque l’accès web est activé, vos appareils de confiance fournissent des résultats de recherche pour iCloud Drive et Photos iCloud sur iCloud.com.

## Comment il fonctionne avec la Protection avancée des données

La [Protection avancée des données](id:icloud-advanced-data-protection-explained) (ADP) chiffre de bout en bout la plupart des catégories iCloud : les serveurs d’Apple n’ont donc plus les clés nécessaires pour afficher vos photos ou fichiers dans une page web. C’est pourquoi l’activation de l’ADP désactive automatiquement l’accès web.

Vous pouvez le réactiver. D’après la documentation d’Apple, le fonctionnement est alors le suivant :

1. Vous vous connectez à iCloud.com.
2. Un iPhone, un iPad ou un Mac de confiance vous demande d’approuver un accès temporaire.
3. Pendant l’heure qui suit, cet appareil approuve chaque nouvelle catégorie que vous ouvrez, comme Photos ou Notes, et vous recevez une notification à chaque fois. Il n’envoie que les clés nécessaires à ces données, chiffrées avec une clé liée à votre session de navigation.
4. Au-delà d’une heure, ouvrir une nouvelle catégorie demande une nouvelle approbation. Une catégorie déjà ouverte reste accessible jusqu’à ce que vous vous déconnectiez ou fermiez la session du navigateur.

Concrètement, l’ADP transforme iCloud.com : d’une porte toujours ouverte, il devient une porte que vous déverrouillez volontairement, depuis un appareil que vous avez en main, pour une durée limitée.

Si vous vivez au Royaume-Uni, les nouveaux utilisateurs ne peuvent pas activer l’ADP ; voir [la Protection avancée des données au Royaume-Uni](id:advanced-data-protection-uk).

## Le compromis de sécurité

Désactiver l’accès web, ce n’est pas chiffrer. En **protection standard des données**, Apple détient les clés de Photos, de la sauvegarde iCloud, d’iCloud Drive et de Notes, que l’accès web soit activé ou non. Le réglage change le nombre de chemins qui mènent à vos données.

La principale menace qu’il limite est le **piratage du compte** : quelqu’un obtient votre mot de passe de compte Apple, par hameçonnage, par un mot de passe réutilisé ou sur un ordinateur partagé où vous êtes resté connecté, puis franchit l’identification à deux facteurs. Avec l’accès web activé, il peut parcourir vos photos depuis n’importe quel navigateur. Sans, il lui faudrait l’un de vos appareils de confiance.

Le prix, c’est le confort. Si vous utilisez iCloud.com au bureau, sur un PC Windows ou un Chromebook, il faudra réactiver le réglage ou, avec l’ADP, approuver chaque session.

Une règle raisonnable : si vous n’utilisez pas iCloud.com, désactivez-le. Si vous l’utilisez, laissez-le activé, mais protégez bien votre compte.

## Comment le désactiver ou l’activer

1. Ouvrez **Réglages** et touchez votre nom.
2. Touchez **iCloud**.
3. Sous iOS 26.4 ou ultérieur, touchez **iCloud.com**, puis désactivez ou activez **Autoriser l’accès aux données**. Dans les versions antérieures, basculez **Accéder aux données iCloud sur le Web** directement sur l’écran iCloud.
4. Si vous utilisez l’ADP et l’avez activé, connectez-vous à iCloud.com et approuvez la demande sur un appareil de confiance.

## Alors, iCloud est-il sûr ?

Tout dépend de ce que vous entendez par sûr, et face à qui.

- **Face à une intrusion sur les serveurs d’Apple :** les données iCloud sont chiffrées en transit et au repos. Avec l’ADP, la plupart sont chiffrées de bout en bout, et Apple indique que 15 catégories, dont les mots de passe du trousseau et les données Santé, le sont même sans ADP.
- **Face à Apple et aux réquisitions :** en protection standard, Apple détient les clés de Photos, de la sauvegarde et d’iCloud Drive. Seule l’ADP lui retire cette possibilité. Mail, Contacts et Calendrier ne sont chiffrés de bout en bout dans aucun mode.
- **Face à quelqu’un qui entre dans votre compte :** c’est le risque le plus courant en pratique. Utilisez un mot de passe unique, gardez l’identification à deux facteurs, vérifiez les appareils connectés à votre compte et désactivez l’accès web si vous n’en avez pas besoin.
- **Face aux copies oubliées :** les albums partagés ne sont pas chiffrés de bout en bout, même avec l’ADP. Les photos envoyées dans une discussion ou synchronisées sur d’autres appareils échappent à votre contrôle. Notre guide sur [les photos masquées dans iCloud](id:are-hidden-photos-saved-to-icloud) couvre la synchronisation, et [quelles apps ont accès à vos photos](id:which-apps-can-see-your-photos-iphone) couvre l’accès sur le téléphone lui-même.

Pour les photos du quotidien, iCloud avec l’ADP et un compte bien protégé constitue une solution solide.

## Quand des fichiers n’ont rien à faire dans iCloud

Certains fichiers ne doivent être synchronisés nulle part, quels que soient les réglages. Un coffre-fort sur l’appareil les garde sur l’iPhone. Velcrypt chiffre photos, vidéos et documents en AES-256-GCM, avec des clés dérivées d’un schéma que vous tracez ; il n’y a pas de compte, rien n’est envoyé et le contenu du coffre est exclu des sauvegardes iCloud et sur ordinateur ([sur l’appareil, sans compte](id:offline-no-account)). Aucun réglage web ne peut exposer ce qui n’a jamais atteint le cloud. Le prix, c’est la récupération : si le téléphone est perdu, seul un fichier de sauvegarde chiffré que vous avez créé vous-même peut restaurer le coffre.
