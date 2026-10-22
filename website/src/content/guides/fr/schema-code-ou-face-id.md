---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Schéma, code PIN ou Face ID : lequel est le plus sûr ?"
description: "Schéma, code PIN, mot de passe ou Face ID ? Combinaisons, regards indiscrets, traces de doigts et déverrouillage forcé : quel verrou pour vos données ?"
h1: "Schéma, code PIN, mot de passe ou Face ID : lequel est le plus sûr ?"
navTitle: "Schéma, code PIN ou Face ID"
answer: "Aucun verrou ne gagne sur tous les plans. Un long mot de passe aléatoire résiste le mieux aux tentatives ; Face ID et Touch ID résistent le mieux aux regards indiscrets mais peuvent être utilisés sans votre consentement ; un code à 6 chiffres bat un code à 4 chiffres d’un facteur 100 ; et un schéma ne vaut que la forme réellement choisie : long et irrégulier, très bien ; une lettre ou des coins, non."
keyFacts:
  - "Un code PIN à 4 chiffres offre 10 000 combinaisons ; un code à 6 chiffres, 1 000 000."
  - "Les schémas choisis par des humains sont bien plus faibles que le maximum théorique : on privilégie les coins, les lettres et les formes courtes."
  - "La biométrie est pratique et difficile à espionner, mais un visage ou un doigt peut être utilisé pendant votre sommeil, sous la contrainte ou par la force."
  - "Les traces de doigts sur l’écran trahissent plus facilement un schéma qu’un code PIN."
  - "Velcrypt utilise un schéma sur une grille de 5×5 points (au moins 6 points) et n’a volontairement ni Face ID ni Touch ID."
primaryKeyword: "schéma ou code pin"
keywords: ["code pin ou face id sécurité", "le schéma de déverrouillage est-il sûr", "schéma ou mot de passe", "face id ou code", "verrouillage téléphone le plus sûr", "biométrie déverrouillage forcé"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Nombre de combinaisons, regards indiscrets, traces de doigts et biométrie forcée : une comparaison honnête des quatre verrous courants."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "Un schéma de déverrouillage est-il plus sûr qu’un code PIN ?"
    a: "Cela dépend du schéma et du code. Un schéma long et irrégulier sur une grande grille peut battre un code à 6 chiffres, mais un schéma court en forme de lettre se devine plus facilement qu’un code aléatoire à 6 chiffres. La longueur et l’imprévisibilité comptent plus que le type de verrou."
  - q: "Face ID est-il plus sûr qu’un code ?"
    a: "Face ID est très difficile à tromper avec une photo et impossible à espionner par-dessus l’épaule : il protège bien contre la curiosité ordinaire. Sa faiblesse, c’est le consentement : quelqu’un peut placer le téléphone devant votre visage. Un code ne fonctionne que si vous le saisissez."
  - q: "Combien de combinaisons pour un code PIN à 6 chiffres ?"
    a: "Un code à 6 chiffres offre 1 000 000 de combinaisons possibles (de 000000 à 999999), contre 10 000 pour un code à 4 chiffres. Les choix courants comme 123456 ou les dates de naissance réduisent considérablement le nombre réel."
  - q: "Peut-on deviner mon schéma grâce aux traces sur l’écran ?"
    a: "Parfois. Sous un bon éclairage, les traces de doigt sur un écran en verre peuvent révéler le tracé d’un schéma. Essuyer l’écran, utiliser une protection mate et choisir un schéma qui se croise compliquent ces attaques."
  - q: "Pourquoi Velcrypt ne propose-t-il pas Face ID ?"
    a: "C’est volontaire. Un visage ou une empreinte peut servir à déverrouiller un appareil sans votre accord, alors qu’un schéma n’existe que dans votre mémoire. Velcrypt a choisi le schéma pour qu’ouvrir un coffre exige toujours votre décision."
---

Chaque verrou est un compromis entre la difficulté à le deviner, la facilité à l’observer et la facilité avec laquelle on peut vous forcer à l’ouvrir. La plupart des comparatifs ne regardent que le premier point. Ce guide examine les trois, avec de vrais chiffres quand il y en a et des réserves honnêtes quand il n’y en a pas.

## Les quatre concurrents

- **Le code PIN** est une courte suite de chiffres, généralement 4 ou 6 sur iPhone.
- **Le mot de passe alphanumérique** est une chaîne de lettres, chiffres et symboles de longueur quelconque.
- **Le schéma** est un tracé à travers une grille de points. Android a popularisé la grille de 3×3 ; le [verrouillage par schéma de Velcrypt](id:pattern-lock) utilise une grille de 5×5.
- **La biométrie** (Face ID, Touch ID) déverrouille avec votre visage ou votre empreinte, adossée à un code.

## L’espace de recherche : combien d’essais faudrait-il ?

L’espace de recherche est le nombre de secrets possibles qu’un attaquant devrait essayer dans le pire des cas. C’est le chiffre le plus parlant pour comparer des verrous, à condition de se rappeler que les gens ne choisissent pas leurs secrets au hasard.

### Les codes PIN

Un code à 4 chiffres offre 10 × 10 × 10 × 10 = **10 000** possibilités. Un code à 6 chiffres en offre **1 000 000**. Ce bond d’un facteur 100 est l’amélioration de sécurité la plus simple que la plupart des gens puissent faire.

Le piège, c’est la répartition. Les analyses de codes ayant fuité montrent régulièrement qu’une poignée de codes (1234, 0000, 1111, années de naissance, 123456) couvre une grande part des choix réels. Un attaquant commence par ceux-là.

### Les mots de passe alphanumériques

Avec environ 70 caractères possibles par position, chaque caractère ajoute environ 6 bits. Un mot de passe vraiment aléatoire de 10 caractères offre plus de combinaisons que n’importe quel code PIN ou schéma réaliste. Le problème, c’est la mémorisation : on choisit des mots, des prénoms et des substitutions prévisibles, et un long mot de passe est fastidieux à taper sur un téléphone plusieurs fois par jour.

### Les schémas : la théorie face aux humains

C’est ici que l’honnêteté compte. Le nombre théorique de schémas peut paraître énorme. Sur la grille Android classique de 3×3 (4 à 9 points, aucun point réutilisé), il existe 389 112 schémas valides, plus qu’un code à 5 chiffres. Sur une grille de 5×5 à 25 points, le nombre théorique est infiniment plus grand.

Les schémas réels sont bien plus faibles que ces chiffres ne le laissent croire. Les recherches sur les schémas Android ont montré à plusieurs reprises que les gens :

- commencent dans le coin supérieur gauche bien plus souvent que le hasard ne le prévoit,
- tracent des schémas courts, proches de la longueur minimale,
- dessinent des lettres (L, Z, S, C, U, N) ou de simples carrés,
- vont de gauche à droite et de haut en bas, dans le sens de la lecture.

De ce fait, la force réelle d’un schéma 3×3 choisi par un humain se rapproche davantage de celle d’un code court que de son maximum théorique. Une grille plus grande n’aide que si vous l’exploitez vraiment : un « L » de 6 points sur une grille de 5×5 reste facile à deviner.

Ce qui rend un schéma solide est ce qui rend tout secret solide : la longueur et l’imprévisibilité. Sur une grille de 5×5, un schéma de 8 à 12 points qui change plusieurs fois de direction, évite de commencer dans un coin, ne forme pas une lettre et, idéalement, croise son propre tracé est réellement difficile à deviner. Vous pouvez tester une forme similaire (jamais votre vrai schéma) avec le [testeur de robustesse de schéma](id:pattern-strength-checker).

### La vitesse des essais compte autant que leur nombre

Le nombre de combinaisons n’est que la moitié de l’histoire. L’autre moitié, c’est la vitesse à laquelle un attaquant peut les essayer. Sur iPhone, la Secure Enclave impose des délais croissants pour le code de l’appareil. Dans une app, la défense repose généralement sur la dérivation de clé : Velcrypt fait passer chaque schéma par PBKDF2 avec au moins 600 000 itérations, ce qui rend chaque essai volontairement lent. L’[explication de l’AES-256](id:aes-256-encryption-explained) montre pourquoi cette étape compte plus que l’algorithme de chiffrement lui-même.

## Regards indiscrets et traces de doigts

**L’espionnage par-dessus l’épaule**, c’est quelqu’un qui vous regarde déverrouiller. C’est l’attaque réelle la plus courante contre les verrous de téléphone, car les personnes les plus motivées pour entrer dans votre téléphone sont souvent assises à côté de vous.

- **Les schémas** sont les plus faciles à observer. Une forme se retient d’un coup d’œil, même de l’autre côté d’une table.
- **Les codes PIN** sont assez faciles à observer, surtout à 4 chiffres tapés d’un seul pouce.
- **Les mots de passe** sont plus difficiles à saisir en une fois, car ils sont plus longs et le clavier change de disposition.
- **La biométrie** ne peut pas du tout être espionnée ainsi.

**Les attaques par traces** lisent la marque grasse que votre doigt laisse sur le verre. Les schémas y sont plus exposés que les codes, car une ligne continue laisse une trace continue. Les schémas qui se croisent, reviennent en arrière ou passent sur des points dans un ordre ambigu sont bien plus difficiles à reconstituer à partir d’une trace.

Parades pratiques : inclinez l’écran, couvrez-le de l’autre main, essuyez l’écran de temps en temps, et déverrouillez les apps sensibles quand vous êtes seul.

## Le déverrouillage forcé : la question que la plupart des comparatifs ignorent

La biométrie a une faiblesse qu’aucune ingénierie ne supprime : elle ne requiert pas votre participation. Quelqu’un peut placer votre téléphone devant votre visage pendant votre sommeil, appuyer votre doigt sur le capteur ou vous y contraindre physiquement. Dans un cadre conjugal ou familial, lors d’une soirée ou d’une agression, c’est un risque réel.

À certains endroits, les autorités peuvent aussi légalement exiger une empreinte ou un visage, tout en traitant différemment un code mémorisé. La situation juridique varie beaucoup d’un pays à l’autre et a évolué au fil du temps : ce guide ne donne donc pas de conseil juridique. Le point technique est simple : un secret dans votre mémoire exige une décision de votre part ; une partie de votre corps, non.

Si vous comptez sur Face ID, connaissez l’issue de secours. Sur l’iPhone 8 et les modèles ultérieurs, maintenir le bouton latéral et l’un des boutons de volume jusqu’à l’apparition de l’écran d’extinction/SOS (puis annuler) désactive temporairement Face ID et Touch ID jusqu’à la saisie du code. Voir [confidentialité du téléphone aux frontières](id:phone-privacy-border-crossing) pour savoir quand c’est utile.

## Comparaison côte à côte

| | Code à 4 chiffres | Code à 6 chiffres | Long mot de passe | Schéma (5×5, 8+ points) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Combinaisons possibles | 10 000 | 1 000 000 | Très nombreuses si aléatoire | Très nombreuses en théorie ; bien moins pour des formes prévisibles | Sans objet |
| Facilité à deviner en pratique | Élevée (codes courants) | Moyenne | Faible si aléatoire | Faible si irrégulier, élevée si c’est une lettre | Très faible |
| Espionnage par-dessus l’épaule | Facile | Moyen | Difficile | Facile | Impossible |
| Fuite par les traces | Un peu | Un peu | Faible | Élevée, sauf si le tracé se croise | Aucune |
| Utilisable sans votre consentement | Non | Non | Non | Non | Oui |
| Rapidité et confort | Rapide | Rapide | Lent sur un téléphone | Rapide | Le plus rapide |

## Choisir le bon verrou pour chaque couche

Inutile de choisir un seul verrou pour tout. Une configuration raisonnable pour la plupart des gens :

1. **L’appareil :** un code à 6 chiffres (ou plus), avec Face ID ou Touch ID pour le confort si votre situation le permet.
2. **Le contenu privé :** un secret distinct du code de l’appareil, pour que quelqu’un qui apprend ou observe votre code n’obtienne pas automatiquement tout.
3. **Savoir désactiver rapidement la biométrie** quand vous vous trouvez dans un endroit où l’on pourrait faire pression sur vous.

## La place de Velcrypt

Velcrypt fait un choix délibéré : la seule façon d’entrer dans un coffre est un schéma sur une grille de 5×5 points, une ligne continue passant par au moins 6 points avec au moins un changement de direction. Des schémas plus longs, de 8 à 12 points, sont recommandés. Il n’y a ni Face ID ni Touch ID, car un schéma ne peut pas être prélevé sur votre corps.

Cette conception change aussi ce que « deviner » veut dire. Chaque schéma correspond à son propre coffre, et un schéma que Velcrypt n’a jamais vu ouvre simplement un coffre vide, sans message d’erreur. Un mauvais essai ne se signale donc pas comme tel, et vous pouvez garder un [coffre leurre](id:what-is-a-decoy-vault) sous un second schéma. La page sur les [coffres cachés](id:hidden-vaults) explique le modèle, et la [présentation de la sécurité](id:security) liste ce contre quoi il ne protège pas, notamment quelqu’un qui vous regarde tracer votre schéma.
