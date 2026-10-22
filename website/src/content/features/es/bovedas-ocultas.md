---
pageId: hidden-vaults
title: "Bóvedas ocultas: cada patrón abre su propia bóveda"
description: "En Velcrypt cada patrón es una bóveda distinta. No hay lista de bóvedas y un patrón desconocido abre una bóveda vacía, sin error. Así funciona."
h1: "Bóvedas ocultas: un patrón, una bóveda, ninguna lista"
navTitle: "Bóvedas ocultas"
answer: "En Velcrypt cada patrón abre su propia bóveda cifrada. No hay una lista de bóvedas y un patrón que la app nunca ha visto simplemente abre una bóveda vacía, sin mensaje de error, así que nada en pantalla demuestra que existan otras bóvedas."
keyFacts:
  - "Cada patrón es una bóveda propia con su propia clave de cifrado."
  - "Velcrypt nunca muestra una lista de bóvedas."
  - "Un patrón desconocido abre una bóveda vacía, sin mensaje de error."
  - "Con Premium puedes tener una bóveda señuelo con contenido corriente."
  - "La versión gratuita tiene una bóveda; más bóvedas forman parte de Premium."
primaryKeyword: "app bóveda oculta iphone"
keywords: ["app de fotos con varias bóvedas", "bóveda señuelo iphone", "app bóveda secreta", "negación plausible bóveda de fotos", "segunda bóveda oculta"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Cada patrón es su propia bóveda. Sin lista de bóvedas, sin error ante patrones desconocidos y con espacio para una bóveda señuelo creíble."
status: available
schemaType: WebPage
order: 2
related: [pattern-lock, duress-pattern, encryption, what-is-a-decoy-vault, plausible-deniability-explained]
faq:
  - q: "¿Cómo veo todas mis bóvedas en Velcrypt?"
    a: "No puedes, y es intencionado. Velcrypt no tiene lista de bóvedas. La única forma de abrir una bóveda es dibujar su patrón, así que lleva tú mismo la cuenta de tus patrones."
  - q: "¿Qué pasa si dibujo un patrón incorrecto?"
    a: "Velcrypt abre una bóveda vacía para ese patrón en lugar de mostrar un error. Si añadieras archivos ahí, ese patrón se convertiría en una bóveda nueva. Si esperabas ver tus fotos y no aparece nada, probablemente dibujaste un patrón ligeramente distinto."
  - q: "¿Puede alguien saber que tengo más de una bóveda?"
    a: "No a partir de la interfaz de la app. No hay lista, contador ni mensaje de error que revele otras bóvedas. Velcrypt no puede ocultar que la app está instalada ni impedir que alguien te vea dibujar un patrón."
  - q: "¿Qué es una bóveda señuelo?"
    a: "Una bóveda señuelo es una bóveda con contenido corriente y creíble que puedes abrir si te presionan para enseñar lo que hay en la app. Tu bóveda real sigue detrás de otro patrón. Como necesitas una segunda bóveda, requiere Premium."
howTo:
  name: "Crear una segunda bóveda oculta en Velcrypt"
  steps:
    - name: "Bloquea Velcrypt"
      text: "Con Premium activo, sal de la bóveda en la que estás para que aparezca la cuadrícula del patrón."
    - name: "Dibuja un patrón nuevo"
      text: "Dibuja un patrón que no hayas usado antes, con al menos 6 puntos y al menos un cambio de dirección. Se abre una bóveda vacía."
    - name: "Añade contenido"
      text: "Importa una foto, un vídeo o un documento a la bóveda vacía para empezar a usarla."
    - name: "Practica el patrón"
      text: "Bloquea y desbloquea varias veces para recordar qué patrón corresponde a cada bóveda."
---

La mayoría de las apps de bóveda tienen una contraseña y una zona bloqueada, así que basta con preguntar «¿cuál es la contraseña?» para que todo quede al descubierto. Velcrypt funciona de otra manera: el patrón que dibujas no solo desbloquea la app, sino que decide qué bóveda aparece. Esa idea tan sencilla es la que hace posibles las bóvedas ocultas.

## Cada patrón es su propia bóveda

Una bóveda oculta es una bóveda cuya existencia no se puede confirmar desde fuera. En Velcrypt, cada patrón válido en la [cuadrícula 5×5](id:pattern-lock) corresponde a una bóveda distinta, con su propia clave maestra aleatoria y sus propios archivos. El patrón A muestra las fotos que guardaste tras el patrón A. El patrón B muestra un conjunto completamente diferente.

No hay ninguna pantalla de ajustes que las enumere, ningún menú para «cambiar de bóveda» y ningún número que diga cuántas existen. Desde dentro de la app, cada bóveda parece ser la única.

## Ningún error ante un patrón desconocido

Cuando dibujas un patrón que Velcrypt no ha visto nunca, no dice «patrón incorrecto». Abre una bóveda vacía. Ese comportamiento es el núcleo de la función:

- **Nada que contar.** No hay contador de intentos ni mensaje de fallo que confirme que el patrón «real» sigue ahí.
- **Nada que comparar.** Una bóveda vacía tiene exactamente el mismo aspecto que una bóveda recién creada.
- **Nada que demostrar.** Quien mire la app no puede saber si tienes una bóveda o varias.

Es una forma de [negación plausible](id:plausible-deniability-explained): la posibilidad de afirmar de forma creíble que lo que has enseñado es todo lo que hay, porque el software no ofrece ninguna prueba de lo contrario.

También tiene un efecto práctico. Si te equivocas al dibujar el patrón, llegarás a una bóveda vacía en lugar de ver un error. Si parece que tus fotos han desaparecido, bloquea la app y vuelve a dibujar tu patrón con cuidado.

## Cómo crear una segunda bóveda

La versión gratuita incluye una bóveda. Para que otros patrones abran sus propias bóvedas necesitas [Premium](id:pricing).

1. **Bloquea Velcrypt.** Sal de la bóveda en la que estás para que aparezca la cuadrícula del patrón.
2. **Dibuja un patrón nuevo.** Usa uno que no hayas usado antes, con las reglas de siempre: al menos 6 puntos y al menos un cambio de dirección.
3. **Añade algo.** Se abre una bóveda vacía. Importa una foto, un vídeo o un documento para empezar a usarla.
4. **Practica el patrón.** Bloquea y desbloquea varias veces para recordar exactamente qué patrón corresponde a cada bóveda.

## Cómo usar una bóveda señuelo

Una bóveda señuelo es una bóveda llena de contenido inofensivo pero creíble, por ejemplo algunos tiques guardados, capturas de pantalla o fotos de vacaciones. Si alguien insiste en ver qué hay en Velcrypt, puedes abrir el señuelo, que se comporta como cualquier otra bóveda.

Un señuelo funciona mejor cuando parece usado. Una bóveda vacía invita a preguntar «¿para qué instalas una app de bóveda si no guardas nada?», mientras que una con unas cuantas docenas de elementos corrientes rara vez lo hace. La guía sobre [qué es una bóveda señuelo](id:what-is-a-decoy-vault) explica cómo hacerla convincente.

Velcrypt también tiene previsto un [patrón de coacción](id:duress-pattern) para una actualización futura. La idea es ir un paso más allá que un señuelo: abrir una bóveda elegida y retirar en silencio el acceso a las demás.

## Cómo se mantiene separada cada bóveda

La separación no consiste solo en esconder carpetas. Cada bóveda tiene su propia clave maestra aleatoria de 256 bits, que se desbloquea con una clave derivada del patrón de esa bóveda. Los archivos de una bóveda se cifran con claves que pertenecen solo a ella, así que abrir una bóveda no da acceso a ninguna otra. La página de [cifrado](id:encryption) explica la cadena de claves completa.

## Qué pueden y qué no pueden hacer las bóvedas ocultas

Las bóvedas ocultas dificultan demostrar que existe más contenido. No te vuelven invisible:

- El icono de Velcrypt se ve en la pantalla de inicio. iOS 18 y posteriores permiten ocultar apps en una carpeta oculta protegida con Face ID, pero es una función de iOS, no de Velcrypt.
- Quien te vea dibujar tu patrón real puede abrir la bóveda real.
- Las copias de un archivo que sigan existiendo en otro lugar, como Fotos, el álbum Eliminado, iCloud o un chat, quedan fuera de la protección de la bóveda.
- La negación plausible depende del contexto. Es una propiedad técnica de la app, no una garantía legal.

Para situaciones como cruzar una frontera o entregar el teléfono, lee [privacidad del móvil al cruzar fronteras](id:phone-privacy-border-crossing) antes de confiar en una sola función.
