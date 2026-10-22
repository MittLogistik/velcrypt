---
pageId: pattern-strength-checker
title: "Comprobador de patrones: prueba un patrón de 5×5"
description: "Dibuja un patrón de prueba en una cuadrícula de 5×5 y obtén una valoración de solidez y una estimación en bits. Funciona en local. Nunca uses el real."
h1: "Comprobador de solidez de patrones de desbloqueo"
navTitle: "Comprobador de patrones"
answer: "Dibuja un patrón en la cuadrícula de 5×5 para ver si cumple las reglas mínimas de Velcrypt y obtener una valoración aproximada, de Demasiado corto a Muy fuerte, además de una estimación en bits. Es una heurística, no una garantía. Nunca introduzcas tu patrón real en ningún sitio web; prueba uno parecido."
keyFacts:
  - "Comprueba las reglas mínimas de Velcrypt: al menos 6 puntos y al menos un cambio de dirección."
  - "Valora los patrones como Demasiado corto, Débil, Aceptable, Fuerte o Muy fuerte, con una estimación aproximada en bits."
  - "Premia más puntos, cambios de dirección, cruces del propio trazo y una mayor cobertura de la cuadrícula."
  - "Penaliza empezar en una esquina, los tramos rectos largos y las formas de letra simples como L, Z, S y U."
  - "Funciona en local; no se guarda ni se envía nada. Prueba un patrón parecido, nunca el real."
primaryKeyword: "patrón de desbloqueo seguro"
keywords: ["solidez del patrón de desbloqueo", "qué tan seguro es mi patrón", "seguridad del bloqueo con patrón", "patrón de desbloqueo 5x5", "ideas de patrones seguros", "comprobar patrón de desbloqueo"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Dibuja un patrón de prueba en una cuadrícula de 5×5 y mira una valoración aproximada de su solidez. Funciona en local. Nunca uses tu patrón real."
toolName: "Comprobador de solidez de patrones"
schemaType: WebPage
order: 2
related: [pattern-lock, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern, hidden-vaults, encryption, photo-metadata-remover]
howTo:
  name: "Comprobar la solidez de un patrón de prueba"
  steps:
    - name: "Dibuja un patrón parecido"
      text: "Toca o arrastra por la cuadrícula de 5×5 para dibujar un patrón de estilo similar al que tienes en mente, no el real."
    - name: "Comprueba las reglas mínimas"
      text: "Confirma que el patrón usa al menos 6 puntos y cambia de dirección al menos una vez."
    - name: "Lee la valoración"
      text: "Mira la valoración, de Demasiado corto a Muy fuerte, y la estimación aproximada en bits."
    - name: "Ajusta y vuelve a probar"
      text: "Añade puntos, giros o un cruce, evita empezar en una esquina y las formas de letra simples, y observa cómo cambia la valoración."
faq:
  - q: "¿Es seguro introducir aquí mi patrón real?"
    a: "No lo hagas. El comprobador funciona en local y no guarda nada, pero la buena práctica es no introducir nunca un secreto real en ningún sitio web. Dibuja un patrón de estilo parecido y aplica lo que aprendas."
  - q: "¿Cómo se calcula la solidez?"
    a: "Es una heurística. El comprobador cuenta los puntos y los cambios de dirección, detecta cuándo la línea se cruza consigo misma, mide cuántas filas y columnas abarca y baja la puntuación si empieza en una esquina, tiene tramos rectos largos o se parece a una letra simple."
  - q: "¿Qué significan los bits?"
    a: "Los bits son una medida aproximada de cuántos intentos podría necesitar un atacante; cada bit adicional los duplica más o menos. La estimación es aproximada y supone una persona que conoce los hábitos comunes, no un intento puramente aleatorio."
  - q: "¿Qué longitud debe tener un patrón de Velcrypt?"
    a: "El mínimo son 6 puntos con al menos un cambio de dirección. Velcrypt recomienda de 8 a 12 puntos para un patrón más sólido que puedas seguir recordando sin problemas."
  - q: "¿Un patrón fuerte me protege si alguien me está mirando?"
    a: "No. Si alguien te ve dibujarlo, la solidez da igual. Tapa la pantalla y dibújalo donde nadie pueda verte ni grabarte."
  - q: "¿Y si olvido un patrón complicado?"
    a: "En la primera versión de Velcrypt, un patrón olvidado no puede recuperarse, ni por ti ni por Velcrypt. Elige algo complejo pero fácil de recordar y practícalo antes de confiar en él."
---

## Cómo funciona

Toca o arrastra por la cuadrícula de 5×5 para dibujar un patrón de prueba. Mientras dibujas, el comprobador confirma primero las reglas mínimas de Velcrypt: una línea continua que pase por al menos seis puntos, con al menos un cambio de dirección. Si el patrón no las cumple, se valora como **Demasiado corto**.

Una vez superadas, el comprobador da una valoración aproximada de **Débil**, **Aceptable**, **Fuerte** o **Muy fuerte**, además de una solidez aproximada en bits. Todo funciona en tu navegador. No se guarda nada ni se envía nada a ningún sitio.

## Qué tiene en cuenta el comprobador

La solidez de un patrón es, a grandes rasgos, lo difícil que sería adivinarlo teniendo en cuenta lo que la gente suele dibujar. El comprobador combina varias señales:

- **Número de puntos.** Más puntos significan más patrones posibles.
- **Cambios de dirección.** Cada giro añade imprevisibilidad frente a una línea recta.
- **Cruces del propio trazo.** Una línea que se cruza consigo misma es menos habitual y más difícil de adivinar.
- **Cobertura de la cuadrícula.** Los patrones que abarcan varias filas y columnas puntúan más que los que se concentran en una zona.
- **Inicio en una esquina.** Empezar en una esquina es muy habitual, así que baja ligeramente la puntuación.
- **Tramos rectos largos.** Recorrer una fila o columna entera es fácil de adivinar y fácil de ver por encima del hombro.
- **Formas simples.** Los patrones que parecen una L, Z, S, U o un cuadrado están entre los primeros que cualquiera probaría.

La cifra en bits es una estimación, no una medición. Es una heurística pensada para alejarte de los hábitos comunes, no una garantía de cuánto resistiría un patrón ante un atacante decidido.

## Por qué los patrones humanos son previsibles

Sobre el papel, una cuadrícula de 5×5 ofrece un número enorme de líneas posibles. En la práctica, la gente no elige al azar. Los estudios sobre el clásico patrón de 3×3 de los teléfonos han encontrado una y otra vez sesgos marcados: empezar arriba a la izquierda, moverse de izquierda a derecha y de arriba abajo, hacer pocos giros y dibujar letras conocidas. Esos hábitos reducen el número de opciones que un atacante necesita probar en realidad.

Un patrón sólido es el que evita esos hábitos sin dejar de ser fácil de recordar para ti. Para una comparativa más amplia de métodos de desbloqueo, lee [patrón frente a PIN frente a Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Consejos para un patrón más sólido

1. **Apunta a 8–12 puntos.** Es la recomendación de Velcrypt: lo bastante largo para ser difícil de adivinar y lo bastante corto para recordarlo.
2. **Añade dos giros o más.** Combina movimientos horizontales, verticales y diagonales.
3. **Cruza tu propia línea una vez.** Añade complejidad sin costar mucho recordarlo.
4. **No empieces en una esquina.** Los puntos del centro o de los bordes son menos esperables.
5. **Usa toda la cuadrícula.** Pasa por al menos tres filas y tres columnas.
6. **Evita letras y formas.** Las iniciales, la L, Z, S, U y los cuadrados son de lo primero que se prueba.
7. **Practícalo antes de confiar en él.** Dibújalo varias veces para que la memoria muscular haga el resto.

## Nunca introduzcas tu patrón real

Este comprobador no guarda ni transmite nada, pero el hábito importa más que esta página. Nunca escribas ni dibujes una contraseña, PIN o patrón real en ningún sitio web. En su lugar, dibuja un patrón de estilo parecido (longitud, número de giros y zona de inicio similares) y usa el resultado como orientación.

## La solidez es solo una parte

En Velcrypt, tu patrón es la llave: las claves de cifrado se derivan de él con PBKDF2-HMAC-SHA512 con al menos 600.000 iteraciones, lo que hace que cada intento sea lento. Consulta [cifrado](id:encryption). Además, cada patrón abre su propia bóveda, como se explica en [bóvedas ocultas](id:hidden-vaults) y [bloqueo con patrón](id:pattern-lock).

Un patrón sólido no puede protegerte de alguien que te vea dibujarlo, de entregar el teléfono con la bóveda abierta ni de olvidar el patrón. En la primera versión no hay recuperación, así que lee [olvidé el patrón de mi bóveda](id:forgot-vault-pattern) antes de elegir algo que quizá no recuerdes.
