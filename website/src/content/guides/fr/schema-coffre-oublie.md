---
pageId: forgot-vault-pattern
title: "Mot de passe ou schéma de coffre-fort photo oublié ?"
description: "Code ou schéma de coffre-fort photo oublié ? Quoi essayer d’abord, pourquoi Velcrypt n’a pas de réinitialisation, et comment éviter de rester bloqué."
h1: "Mot de passe ou schéma de coffre-fort photo oublié : ce que vous pouvez faire, ou non"
navTitle: "Schéma de coffre oublié"
answer: "Dans Velcrypt, un schéma oublié ne peut être ni réinitialisé ni récupéré, ni par vous ni par Velcrypt, car la clé n’existe que dans votre mémoire et aucun serveur n’en garde de copie. Vous pouvez en revanche réessayer calmement des variantes proches du schéma. D’autres apps de coffre-fort proposent parfois une récupération par e-mail ou par compte ; vérifiez ce qu’utilise la vôtre."
keyFacts:
  - "Velcrypt n’a ni réinitialisation, ni e-mail de récupération, ni phrase de récupération : les clés sont dérivées de votre schéma sur l’appareil."
  - "Un mauvais schéma dans Velcrypt ouvre un coffre vide au lieu d’afficher une erreur : un coffre vide signifie souvent un schéma légèrement différent."
  - "Les données du coffre sont exclues des sauvegardes iCloud et sur ordinateur dans la première version."
  - "Une option de sauvegarde chiffrée et de récupération est prévue, sans date promise."
  - "Si une perte vous serait insupportable, gardez une copie dans un autre endroit de confiance."
primaryKeyword: "mot de passe coffre-fort photo oublié"
keywords: ["schéma coffre oublié", "récupérer coffre-fort photo", "code pin coffre-fort photo oublié", "réinitialiser schéma coffre", "bloqué hors de mon coffre-fort photo"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Quoi essayer d’abord, pourquoi Velcrypt ne peut pas réinitialiser un schéma oublié, comment font les autres apps, et les habitudes qui évitent le blocage."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "L’assistance Velcrypt peut-elle réinitialiser mon schéma ?"
    a: "Non. Velcrypt n’a ni compte ni serveur, et vos clés sont dérivées du schéma sur votre iPhone. L’équipe n’a rien à réinitialiser ni à consulter, et c’est aussi pour cela que personne d’autre ne peut entrer."
  - q: "Mon coffre semble soudain vide. Mes données sont-elles perdues ?"
    a: "Probablement pas. Dans Velcrypt, un schéma que l’app n’a jamais vu ouvre un nouveau coffre vide : un coffre vide signifie donc généralement que vous avez tracé un schéma légèrement différent. Fermez l’app, réessayez soigneusement, et n’ajoutez rien au coffre vide."
  - q: "Réinstaller Velcrypt me permet-il de repartir de zéro en gardant mes photos ?"
    a: "Non. Supprimer l’app supprime ses données chiffrées de l’appareil. La réinstallation vous donne une app vierge, pas l’accès aux anciens coffres. Ne la supprimez que si vous avez accepté que le contenu est perdu."
  - q: "Comment les autres apps de coffre-fort photo gèrent-elles un code oublié ?"
    a: "Beaucoup d’apps à compte permettent de réinitialiser le code par e-mail ou via un compte cloud : il existe donc un chemin de récupération en dehors de votre mémoire. Consultez l’aide de votre app avant d’en avoir besoin, et sachez qu’un chemin de récupération peut aussi servir de porte d’entrée à quelqu’un d’autre."
  - q: "Velcrypt va-t-il ajouter une option de récupération ?"
    a: "Une option de sauvegarde chiffrée et de récupération est prévue, mais sans date de sortie. En attendant, considérez votre schéma comme la seule clé."
---

Ce moment de panique où la forme tracée cent fois ne fonctionne soudain plus est bien réel. Avant toute chose : ne supprimez pas l’app et ne la réinstallez pas. La plupart des schémas « oubliés » s’avèrent être des schémas légèrement mal mémorisés, et il y a des choses sensées à essayer d’abord.

## D’abord, essayez ceci (dans Velcrypt)

Velcrypt se comporte différemment de la plupart des apps quand vous vous trompez de schéma. Il n’affiche pas d’erreur. Tout schéma qu’il n’a jamais vu ouvre simplement un nouveau coffre vide. Si votre coffre semble vide, l’explication la plus probable est donc que vous avez tracé un schéma légèrement différent, pas que vos données ont disparu.

Procédez calmement :

1. **N’ajoutez rien au coffre vide.** Si vous y importez des éléments, vous créez un nouveau coffre sous ce schéma erroné, ce qui ajoutera de la confusion ensuite.
2. **Fermez l’app et recommencez.** Velcrypt se verrouille quand il passe en arrière-plan (après le délai que vous avez choisi), ce qui vous redonne un écran de déverrouillage neuf.
3. **Vérifiez le point de départ.** Un schéma est une suite de points : partir de l’autre extrémité de la même forme donne en général un schéma différent.
4. **Vérifiez les points sautés ou en trop.** Sur une grille de 5×5, une ligne droite peut facilement passer par un point de plus ou de moins que prévu.
5. **Pensez à votre posture habituelle.** La mémoire musculaire est liée à la position. Essayez de tracer comme vous le faites d’habitude : à une main, à deux mains, assis.
6. **Dessinez-le sur papier.** Tracez la grille de 5×5 et dessinez le schéma de mémoire, puis comparez les variantes. Détruisez le papier ensuite.
7. **Faites une pause.** La mémoire fonctionne moins bien sous le stress. Réessayer plus tard, reposé, marche souvent.

## Si le schéma est vraiment perdu

Si rien de tout cela ne fonctionne, voici la réponse honnête : le contenu est irrécupérable. Ni par vous, ni par Velcrypt, ni par qui que ce soit.

Ce n’est pas une règle à laquelle on pourrait déroger. C’est le fonctionnement même du chiffrement :

- Velcrypt n’a ni compte, ni e-mail, ni serveur. Voir [hors ligne, sans compte](id:offline-no-account).
- Les clés de votre coffre sont déverrouillées par une clé dérivée de votre schéma sur l’appareil, avec PBKDF2 et un sel stocké dans le trousseau iOS. Sans le schéma, cette clé ne peut pas être produite.
- Les données du coffre sont chiffrées en AES-256-GCM, impossible à casser par force brute. L’[explication de l’AES-256](id:aes-256-encryption-explained) dit pourquoi.
- Dans la première version, les données du coffre sont exclues des sauvegardes iCloud et Finder/iTunes : il n’existe aucune copie plus ancienne à restaurer.

Les propriétés qui rendent votre coffre privé rendent aussi un schéma oublié définitif. Un système doté d’un bouton « schéma oublié ? » conserve forcément un accès qui ne dépend pas que de vous.

### Et les autres coffres ?

Comme chaque schéma est son propre coffre, oublier un schéma n’affecte pas les autres. Si vous vous souvenez du schéma de votre [coffre leurre](id:what-is-a-decoy-vault), ce coffre s’ouvre normalement.

## Pourquoi l’absence de réinitialisation est un compromis délibéré

Les mécanismes de récupération créent toujours une seconde clé. Une réinitialisation par e-mail peut être déclenchée par quiconque accède à votre boîte de réception. Une sauvegarde cloud peut être restaurée par quiconque entre dans le compte. Les questions de sécurité se devinent souvent grâce aux réseaux sociaux.

Velcrypt a choisi de ne pas avoir de seconde clé. Cela écarte toute une catégorie d’attaques et signifie qu’il n’y a rien à réquisitionner, à divulguer ou à hameçonner. Le prix, c’est que vous êtes seul responsable de vous souvenir du schéma. Pour beaucoup, ce compromis en vaut la peine ; pour certains contenus, non. Décidez de quel type de contenu il s’agit.

## Éviter de rester bloqué

### Choisir un schéma solide mais mémorable

Solidité et mémorisation ne s’opposent pas. Un bon schéma sur la grille de 5×5 :

- utilise 8 à 12 points et change plusieurs fois de direction,
- ne commence pas dans un coin et ne dessine pas une lettre,
- obéit à une logique personnelle que vous seul connaissez, comme une forme liée à un lieu ou un geste qui vous semble naturel.

Testez une forme similaire (pas votre vrai schéma) avec le [testeur de robustesse de schéma](id:pattern-strength-checker), et lisez [schéma, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id) pour savoir ce qui affaiblit un schéma.

### S’entraîner

- Ouvrez régulièrement le coffre durant les premières semaines pour que le geste devienne un automatisme.
- Évitez de changer de schéma juste avant une période stressante, comme un voyage.
- Si vous avez plusieurs coffres, donnez-leur des schémas nettement différents pour ne pas les mélanger.

### Garder les originaux quand la perte ferait mal

Si perdre une photo ou un document vous serait vraiment insupportable, un coffre ne doit pas être le seul endroit où il existe. Pour les éléments irremplaçables, gardez une copie supplémentaire dans un endroit de confiance, comme un disque chiffré rangé en lieu sûr. C’est un compromis assumé : chaque copie supplémentaire est un endroit de plus à protéger.

### Ne pas noter le schéma près du téléphone

Si vous devez absolument garder un aide-mémoire écrit, rendez-le compréhensible par vous seul et conservez-le loin de l’appareil.

## Si vous utilisez une autre app de coffre-fort

La récupération varie beaucoup d’une app à l’autre. Avant d’en avoir besoin, vérifiez :

- **Y a-t-il un compte ?** Les apps avec connexion par e-mail permettent souvent de réinitialiser le code via cet e-mail.
- **Y a-t-il une sauvegarde cloud ?** Certaines apps peuvent restaurer le contenu après réinstallation s’il a été synchronisé sur leurs serveurs.
- **Y a-t-il un code de récupération ?** Certaines apps en génèrent un à la configuration. Si vous ne l’avez pas conservé, il ne vous servira à rien.
- **Que dit la page d’aide ?** Cherchez les instructions de récupération officielles de l’éditeur. Méfiez-vous des outils de « déblocage » tiers : ils fonctionnent rarement et peuvent être des arnaques.

Le [guide des coffres-forts photo sans compte](id:photo-vault-without-account) explique les compromis entre apps à compte et apps purement locales.

## La place de Velcrypt

Velcrypt est un coffre purement local par conception : pas de compte, pas de serveur, pas de phrase de récupération, aucune copie de vos clés ailleurs. Une option de sauvegarde chiffrée et de récupération est prévue dans le cadre d’une mise à niveau Premium facultative, sans date promise. En cas de doute, l’[assistance](id:support) peut vous expliquer le fonctionnement de l’app, mais personne ne peut y ouvrir un coffre à votre place.
