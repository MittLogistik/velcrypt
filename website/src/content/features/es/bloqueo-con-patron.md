---
pageId: pattern-lock
title: "Bloqueo con patrón: abre tu bóveda en una cuadrícula 5×5"
description: "Velcrypt se desbloquea con un patrón dibujado en una cuadrícula de 5×5 puntos. Conoce las reglas, cómo crear un patrón seguro y por qué no hay Face ID."
h1: "Bloqueo con patrón: una cuadrícula 5×5 que solo tu memoria puede abrir"
navTitle: "Bloqueo con patrón"
answer: "Velcrypt se abre con un patrón que dibujas en una cuadrícula de 5×5 puntos: una línea continua que pase por al menos 6 puntos y cambie de dirección al menos una vez. Se recomiendan patrones de 8 a 12 puntos y, a propósito, no hay Face ID ni Touch ID."
keyFacts:
  - "Desbloqueas dibujando una línea continua en una cuadrícula de 25 puntos (5×5)."
  - "Reglas mínimas: al menos 6 puntos y al menos un cambio de dirección."
  - "Longitud recomendada: de 8 a 12 puntos."
  - "Sin Face ID ni Touch ID por diseño, porque la biometría se puede forzar."
  - "Tu patrón también es la base de la clave de cifrado de la bóveda."
primaryKeyword: "app bloqueo con patrón iphone"
keywords: ["bóveda de fotos con patrón", "bloqueo con patrón 5x5", "bóveda de fotos sin face id", "desbloquear app con patrón iphone", "patrón de desbloqueo seguro"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Desbloquea con un patrón en una cuadrícula 5×5. Mínimo 6 puntos y un giro; se recomiendan 8–12 puntos. Sin Face ID, por diseño."
status: available
schemaType: WebPage
order: 1
related: [hidden-vaults, encryption, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, forgot-vault-pattern]
faq:
  - q: "¿Cuántos puntos necesita un patrón de Velcrypt?"
    a: "Al menos 6 puntos, dibujados como una sola línea continua con al menos un cambio de dirección. Para una mejor protección, usa de 8 a 12 puntos e incluye varios giros."
  - q: "¿Por qué Velcrypt no usa Face ID ni Touch ID?"
    a: "Tu cara o tu huella se pueden usar sin tu consentimiento, por ejemplo mientras duermes o si alguien te retiene. Un patrón existe solo en tu memoria, así que nadie puede quitártelo físicamente. Velcrypt deja fuera la biometría a propósito."
  - q: "¿Qué pasa si olvido mi patrón?"
    a: "La bóveda ya no se puede volver a abrir, ni por ti ni por Velcrypt. El patrón forma parte de cómo se deriva la clave de cifrado y no hay frase de recuperación ni cuenta para restablecerlo. Elige un patrón que puedas recordar con seguridad."
  - q: "¿Es más seguro un patrón 5×5 que uno de 3×3 como el de algunos móviles?"
    a: "Puede serlo. Una cuadrícula 5×5 tiene 25 puntos en lugar de 9, así que hay muchísimos más patrones posibles. Lo seguro que sea el tuyo sigue dependiendo de su longitud, del número de giros y de lo predecible que sea su forma."
  - q: "¿Puedo probar mi patrón en algún sitio antes de usarlo?"
    a: "Puedes probar patrones parecidos en el comprobador de seguridad de patrones de Velcrypt, que funciona localmente en tu navegador. Nunca introduzcas tu patrón real en ninguna web; prueba uno similar."
---

La mayoría de las apps te piden un número. Velcrypt te pide que dibujes. El bloqueo con patrón es la puerta de entrada de cada bóveda y, además, el secreto del que se deriva la clave de cifrado de esa bóveda, así que merece unos minutos de reflexión.

## Cómo funciona el bloqueo con patrón 5×5

Un bloqueo con patrón es un método de desbloqueo en el que trazas un recorrido entre puntos en lugar de escribir un código. En Velcrypt, la cuadrícula tiene 25 puntos distribuidos en cinco filas y cinco columnas. Apoyas el dedo, lo arrastras por los puntos que elijas y lo levantas para terminar.

Todo patrón debe cumplir dos reglas:

1. **Al menos 6 puntos.** Las líneas más cortas se rechazan.
2. **Al menos un cambio de dirección.** No se permite una única línea recta.

Esos son los mínimos. Velcrypt recomienda patrones de **8 a 12 puntos**, porque cada punto adicional multiplica la cantidad de patrones que alguien tendría que probar.

Cada patrón hace además algo más que desbloquear: decide qué bóveda se abre. Esa idea se explica en la página de [bóvedas ocultas](id:hidden-vaults).

## Qué hace que un patrón sea seguro

Un patrón seguro es largo, gira a menudo y no se parece a nada. La cuadrícula es grande, pero las personas tendemos a repetir los mismos hábitos: empezar en la esquina superior izquierda, trazar letras o dibujar cuadrados perfectos. Esos hábitos son justo lo primero que probaría alguien que mira o intenta adivinar.

| Hábito | Por qué es débil | Mejor alternativa |
| --- | --- | --- |
| Empezar en una esquina | Las esquinas son los puntos de partida más habituales | Empieza en un punto interior o de un borde |
| Letras y formas (L, Z, S, U, un cuadrado) | Fáciles de adivinar y de reconocer por encima del hombro | Usa un recorrido irregular sin forma evidente |
| Tramos rectos largos | Pocas decisiones, poca incertidumbre | Cambia de dirección cada dos o tres puntos |
| Quedarse en una zona | Usa una parte pequeña de la cuadrícula | Atraviesa varias filas y columnas |
| Patrones muy cortos | Menos combinaciones que probar | Apunta a 8–12 puntos |

Algunos consejos prácticos:

- **Cruza tu propio recorrido.** Las líneas que pasan sobre tramos anteriores son más difíciles de deducir por una marca en la pantalla o de un vistazo.
- **Que tenga ritmo para ti, no para los demás.** Un recorrido que puedes dibujar de memoria muscular es más fácil de recordar que uno aleatorio en el que tienes que pensar.
- **Dibújalo varias veces antes de confiar en él.** La repetición es lo que convierte un patrón nuevo en un gesto automático.
- **Tapa la pantalla.** Ningún patrón sirve si alguien te ve dibujarlo. En público, inclina el iPhone o cubre la cuadrícula.

Si quieres una segunda opinión, el [comprobador de seguridad de patrones](id:pattern-strength-checker) ofrece una valoración aproximada y una estimación en bits según la longitud, los giros, los cruces y la parte de la cuadrícula que cubre. Es una heurística, no una garantía, y deberías probar un patrón parecido al tuyo, nunca el real.

## Por qué no hay Face ID ni Touch ID

Velcrypt no tiene desbloqueo biométrico, y es una decisión deliberada. La biometría es cómoda precisamente porque siempre la llevas encima, y esa es también su debilidad: alguien puede poner el iPhone delante de tu cara o presionar tu dedo sobre el sensor sin tu permiso.

Un patrón existe solo en tu cabeza. Nadie puede sacártelo de la mano ni apuntar el teléfono a tu cara para obtenerlo. En una bóveda pensada para proteger tus archivos más privados, esa diferencia importa más que ahorrar un segundo al desbloquear. Las ventajas y desventajas se comparan con más detalle en [patrón vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id).

## Tu patrón y la clave de cifrado

El patrón no se comprueba y se olvida sin más. Velcrypt lo procesa con una función de derivación de claves deliberadamente lenta para obtener la clave que desbloquea la clave maestra de la bóveda, que a su vez protege cada archivo. La cadena completa se describe en la página de [cifrado](id:encryption).

Esto tiene una consecuencia que conviene decir con claridad. Como el patrón forma parte de la clave, no existe un enlace para «restablecer el patrón» ni una cuenta a la que recurrir. Si lo olvidas, la bóveda queda cerrada para siempre. Lee [qué hacer si olvidas el patrón de tu bóveda](id:forgot-vault-pattern) antes de elegir uno, y escoge algo que sigas recordando dentro de seis meses.

## Contra qué no protege un patrón

Un patrón seguro pone el listón más alto, pero es solo una capa. No puede impedir que alguien te grabe o te vea dibujarlo, que entregues el teléfono a otra persona con una bóveda abierta ni que haya malware en un dispositivo con jailbreak. La [página de seguridad](id:security#what-velcrypt-does-not-protect-against) recoge estos límites al completo. Combinar tu patrón con el [bloqueo automático](id:auto-lock) cierra el descuido más habitual: dejar una bóveda abierta al soltar el teléfono.
