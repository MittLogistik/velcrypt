---
pageId: pattern-strength-checker
title: "Tester la robustesse d’un schéma de déverrouillage 5×5"
description: "Tracez un motif de test sur une grille 5×5 et obtenez une estimation de sa robustesse en bits. En local. Ne saisissez jamais votre vrai motif."
h1: "Testeur de robustesse de motif de déverrouillage"
navTitle: "Testeur de robustesse de motif"
answer: "Tracez un motif sur la grille 5×5 pour vérifier s’il respecte les règles minimales de Velcrypt et obtenir une évaluation approximative, de Trop court à Très robuste, ainsi qu’une estimation en bits. C’est une heuristique, pas une garantie. Ne saisissez jamais votre vrai motif sur un site web ; testez-en un similaire."
keyFacts:
  - "Vérifie les règles minimales de Velcrypt : au moins 6 points et au moins un changement de direction."
  - "Classe les motifs en Trop court, Faible, Moyen, Robuste ou Très robuste, avec une estimation approximative en bits."
  - "Valorise plus de points, de changements de direction, de croisements et une couverture plus large de la grille."
  - "Pénalise les départs depuis un coin, les longues lignes droites et les formes de lettres simples comme L, Z, S et U."
  - "Fonctionne en local ; rien n’est stocké ni envoyé. Testez un motif ressemblant, jamais votre vrai motif."
primaryKeyword: "tester robustesse schéma de déverrouillage"
keywords: ["robustesse motif de déverrouillage", "mon schéma est-il sûr", "sécurité verrouillage par schéma", "schéma de déverrouillage 5x5", "idées de schéma sécurisé", "force d’un motif de déverrouillage"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Tracez un motif de test sur une grille 5×5 et obtenez une évaluation approximative de sa robustesse. En local. N’utilisez jamais votre vrai motif."
toolName: "Testeur de robustesse de motif"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Tester la robustesse d’un motif de test"
  steps:
    - name: "Tracez un motif ressemblant"
      text: "Touchez ou faites glisser votre doigt sur la grille 5×5 pour tracer un motif au style proche de celui auquel vous pensez, pas votre vrai motif."
    - name: "Vérifiez les règles minimales"
      text: "Assurez-vous que le motif utilise au moins 6 points et change de direction au moins une fois."
    - name: "Lisez l’évaluation"
      text: "Regardez l’évaluation, de Trop court à Très robuste, et l’estimation approximative en bits."
    - name: "Ajustez et réessayez"
      text: "Ajoutez des points, des virages ou un croisement, évitez les départs depuis un coin et les formes de lettres simples, et observez l’évolution de l’évaluation."
faq:
  - q: "Puis-je saisir mon vrai motif ici sans risque ?"
    a: "Ne le faites pas. Le testeur fonctionne en local et ne stocke rien, mais la bonne pratique est de ne jamais saisir un vrai secret sur un site web. Tracez plutôt un motif au style similaire et appliquez ce que vous apprenez."
  - q: "Comment la robustesse est-elle calculée ?"
    a: "C’est une heuristique. Le testeur compte les points et les changements de direction, repère quand la ligne se croise, mesure combien de lignes et de colonnes elle couvre, et baisse le score pour les départs depuis un coin, les longues lignes droites et les formes qui ressemblent à des lettres simples."
  - q: "Que signifient les bits ?"
    a: "Les bits sont une mesure approximative du nombre d’essais dont un attaquant pourrait avoir besoin ; chaque bit supplémentaire double environ ce nombre. L’estimation est approximative et suppose une personne qui connaît les habitudes courantes, pas des essais purement aléatoires."
  - q: "Quelle longueur pour un motif Velcrypt ?"
    a: "Le minimum est de 6 points avec au moins un changement de direction. Velcrypt recommande 8 à 12 points pour un motif plus robuste dont vous pouvez encore vous souvenir de façon fiable."
  - q: "Un motif robuste protège-t-il contre quelqu’un qui me regarde ?"
    a: "Non. Si quelqu’un vous voit le tracer, sa robustesse ne compte plus. Masquez l’écran, et tracez-le là où vous ne pouvez être ni observé ni filmé."
  - q: "Et si j’oublie un motif compliqué ?"
    a: "Dans la première version de Velcrypt, un motif oublié ne peut être récupéré ni par vous ni par Velcrypt. Choisissez un motif complexe mais mémorisable, et entraînez-vous avant de vous y fier."
---

## Comment ça fonctionne

Touchez ou faites glisser votre doigt sur la grille 5×5 pour tracer un motif de test. Pendant que vous tracez, le testeur vérifie d’abord les règles minimales de Velcrypt : une ligne continue passant par au moins six points, avec au moins un changement de direction. Si le motif ne les respecte pas, il est évalué **Trop court**.

Une fois ces règles respectées, le testeur donne une évaluation approximative — **Faible**, **Moyen**, **Robuste** ou **Très robuste** — ainsi qu’une robustesse estimée en bits. Tout se passe dans votre navigateur. Rien n’est enregistré, et rien n’est envoyé.

## Ce que le testeur prend en compte

La robustesse d’un motif, c’est en gros la difficulté à le deviner, compte tenu de ce que les gens ont tendance à tracer. Le testeur combine plusieurs signaux :

- **Le nombre de points.** Plus de points, plus de motifs possibles.
- **Les changements de direction.** Chaque virage ajoute de l’imprévisibilité par rapport à une ligne droite.
- **Les croisements.** Une ligne qui croise son propre tracé est moins courante et plus difficile à deviner.
- **La couverture de la grille.** Les motifs qui s’étendent sur plusieurs lignes et colonnes obtiennent un meilleur score que ceux concentrés dans une zone.
- **Le départ depuis un coin.** Commencer dans un coin est très courant, ce qui baisse légèrement le score.
- **Les longues lignes droites.** Balayer toute une ligne ou une colonne est facile à deviner et facile à voir par-dessus votre épaule.
- **Les formes simples.** Les motifs qui ressemblent à un L, un Z, un S, un U ou un carré font partie des premiers essais de n’importe qui.

Le chiffre en bits est une estimation, pas une mesure. C’est une heuristique conçue pour vous éloigner des habitudes courantes, pas une garantie de la résistance d’un motif face à un attaquant déterminé.

## Pourquoi les motifs humains sont prévisibles

Sur le papier, une grille 5×5 offre un nombre énorme de tracés possibles. En pratique, les gens ne choisissent pas au hasard. Les recherches sur le schéma de déverrouillage classique 3×3 des téléphones ont montré à plusieurs reprises de forts biais : départ en haut à gauche, mouvement de gauche à droite et de haut en bas, peu de virages et des lettres familières. Ces habitudes réduisent l’espace qu’un attaquant doit réellement explorer.

Un motif robuste évite ces habitudes tout en restant mémorisable pour vous. Pour une comparaison plus large des méthodes de déverrouillage, lisez [motif, code PIN ou Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Conseils pour un motif plus robuste

1. **Visez 8 à 12 points.** C’est la recommandation de Velcrypt : assez long pour être difficile à deviner, assez court pour être retenu.
2. **Ajoutez deux virages ou plus.** Mélangez mouvements horizontaux, verticaux et diagonaux.
3. **Croisez votre propre ligne une fois.** Cela ajoute de la complexité sans grand effort de mémoire.
4. **Ne commencez pas dans un coin.** Les points du centre ou des bords sont moins attendus.
5. **Utilisez toute la grille.** Touchez au moins trois lignes et trois colonnes.
6. **Évitez les lettres et les formes.** Initiales, L, Z, S, U et carrés font partie des premiers essais.
7. **Entraînez-vous avant de vous y fier.** Tracez-le plusieurs fois pour que la mémoire du geste prenne le relais.

## Ne saisissez jamais votre vrai motif

Ce testeur ne stocke ni ne transmet rien, mais l’habitude compte plus que cette seule page. Ne tapez ou ne tracez jamais un vrai mot de passe, code PIN ou motif sur un site web. Tracez plutôt un motif au style similaire (longueur, nombre de virages, zone de départ comparables) et servez-vous du résultat comme d’une indication.

## La robustesse n’est qu’une partie de l’équation

Dans Velcrypt, votre motif est la clé : les clés de chiffrement en sont dérivées avec PBKDF2-HMAC-SHA512 et au moins 600 000 itérations, ce qui rend chaque essai lent. Voir [chiffrement](id:encryption). Chaque motif ouvre aussi son propre coffre, comme l’expliquent [coffres cachés](id:hidden-vaults) et [verrouillage par motif](id:pattern-lock).

Un motif robuste ne protège pas contre quelqu’un qui vous regarde le tracer, un téléphone tendu avec le coffre ouvert, ni un motif oublié. Dans la première version, aucune récupération n’est possible : lisez [motif de coffre oublié](id:forgot-vault-pattern) avant de choisir un motif que vous risqueriez d’oublier.
