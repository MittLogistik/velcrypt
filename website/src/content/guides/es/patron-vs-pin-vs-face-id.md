---
pageId: pattern-lock-vs-pin-vs-face-id
title: "Patrón vs PIN vs Face ID: ¿qué bloqueo es más seguro?"
description: "¿Patrón, PIN, contraseña o Face ID? Compara combinaciones posibles, miradas ajenas, marcas de dedos y desbloqueo forzado para proteger tus datos privados."
h1: "Bloqueo por patrón vs PIN vs contraseña vs Face ID: ¿cuál es más seguro?"
navTitle: "Patrón vs PIN vs Face ID"
answer: "Ningún bloqueo gana en todo. Una contraseña larga y aleatoria es la más difícil de adivinar; Face ID y Touch ID son los que mejor resisten las miradas ajenas, pero se pueden usar sin tu consentimiento; un PIN de 6 dígitos supera 100 veces a uno de 4; y un patrón es tan sólido como la forma que una persona elige de verdad: los patrones largos e irregulares están bien, las letras simples y las esquinas no."
keyFacts:
  - "Un PIN de 4 dígitos tiene 10.000 combinaciones; uno de 6 dígitos, 1.000.000."
  - "Los patrones que elegimos las personas son mucho más débiles que el máximo teórico: preferimos esquinas, letras y formas cortas."
  - "La biometría es cómoda y difícil de espiar, pero alguien puede usar tu cara o tu dedo mientras duermes, si te sujetan o bajo coacción."
  - "Las marcas de grasa en la pantalla delatan los patrones con más facilidad que los PIN."
  - "Velcrypt usa un patrón en una cuadrícula de 5×5 (al menos 6 puntos) y, a propósito, no tiene Face ID ni Touch ID."
primaryKeyword: "patrón vs pin"
keywords: ["pin vs face id seguridad", "es seguro el bloqueo por patrón", "patrón o contraseña", "face id o código", "bloqueo de móvil más seguro", "biometría bajo coacción"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Cálculo de combinaciones, miradas ajenas, marcas de dedos y biometría forzada: una comparación honesta de las cuatro formas habituales de bloquear datos."
category: security
order: 40
related: [pattern-lock, pattern-strength-checker, aes-256-encryption-explained, what-is-a-decoy-vault, phone-privacy-border-crossing, security]
faq:
  - q: "¿Es más seguro un patrón que un PIN?"
    a: "Depende del patrón y del PIN concretos. Un patrón largo e irregular en una cuadrícula grande puede superar a un PIN de 6 dígitos, pero un patrón corto con forma de letra es más fácil de adivinar que un PIN aleatorio de 6 dígitos. La longitud y la imprevisibilidad importan más que el tipo de bloqueo."
  - q: "¿Es Face ID más seguro que un código?"
    a: "Face ID es muy difícil de engañar con una foto e imposible de espiar por encima del hombro, así que protege bien frente a los curiosos. Su punto débil es el consentimiento: alguien puede ponerte el teléfono delante de la cara. Un código solo funciona si lo introduces tú."
  - q: "¿Cuántas combinaciones tiene un PIN de 6 dígitos?"
    a: "Un PIN de 6 dígitos tiene 1.000.000 de combinaciones posibles (de 000000 a 999999), frente a las 10.000 de un PIN de 4 dígitos. Las elecciones habituales como 123456 o las fechas de nacimiento reducen drásticamente el número real."
  - q: "¿Alguien puede adivinar mi patrón por las marcas de la pantalla?"
    a: "A veces. Con la luz adecuada, el rastro de los dedos sobre una pantalla de cristal puede revelar el recorrido de un patrón. Limpiar la pantalla, usar un protector mate y elegir un patrón que se cruce consigo mismo dificultan estos ataques."
  - q: "¿Por qué Velcrypt no ofrece Face ID?"
    a: "A propósito. Alguien puede usar una cara o una huella para desbloquear un dispositivo sin tu acuerdo, mientras que un patrón solo existe en tu memoria. Velcrypt eligió un patrón para que abrir una bóveda siempre requiera que tú decidas abrirla."
---

Todo bloqueo es un equilibrio entre lo difícil que es adivinarlo, lo fácil que es observarlo y lo fácil que es que alguien te obligue a abrirlo. La mayoría de las comparaciones solo miran lo primero. Esta guía analiza las tres cosas, con cifras reales donde las hay y salvedades honestas donde no.

## Los cuatro candidatos

- **PIN**: una secuencia corta de dígitos, normalmente de 4 o 6 en un iPhone.
- **Contraseña alfanumérica**: una cadena de letras, números y símbolos de cualquier longitud.
- **Patrón**: un recorrido dibujado a través de una cuadrícula de puntos. Android popularizó la cuadrícula de 3×3; el [bloqueo por patrón de Velcrypt](id:pattern-lock) usa una cuadrícula de 5×5.
- **Biometría** (Face ID, Touch ID): desbloquea con tu cara o tu huella, respaldada por un código.

## Espacio de búsqueda: ¿cuántos intentos harían falta?

El espacio de búsqueda es el número de secretos posibles que un atacante tendría que probar en el peor de los casos. Es la cifra más clara para comparar bloqueos, pero solo si recuerdas que la gente no elige sus secretos al azar.

### PIN

Un PIN de 4 dígitos tiene 10 × 10 × 10 × 10 = **10.000** posibilidades. Uno de 6 dígitos tiene **1.000.000**. Ese salto de 100 veces es la mejora de seguridad más fácil que puede hacer la mayoría de la gente.

El problema es la distribución. Los análisis de PIN filtrados muestran una y otra vez que un puñado de códigos (1234, 0000, 1111, años de nacimiento, 123456) cubren una gran parte de las elecciones reales. Un atacante prueba esos primero.

### Contraseñas alfanuméricas

Con unos 70 caracteres posibles por posición, cada carácter añade unos 6 bits. Una contraseña realmente aleatoria de 10 caracteres tiene más combinaciones que cualquier PIN o patrón práctico. El problema es recordarla: la gente elige palabras, nombres y sustituciones previsibles, y las contraseñas largas son pesadas de teclear en un teléfono muchas veces al día.

### Patrones: la teoría frente a las personas

Aquí es donde importa la honestidad. El número teórico de patrones puede parecer enorme. En la clásica cuadrícula de 3×3 de Android (de 4 a 9 puntos, sin repetir ninguno) hay 389.112 patrones válidos, más que un PIN de 5 dígitos. En una cuadrícula de 5×5 con 25 puntos, el recuento teórico es muchísimo mayor.

Los patrones reales son mucho más débiles de lo que sugieren esas cifras. Los estudios sobre patrones de Android han encontrado repetidamente que la gente:

- empieza en la esquina superior izquierda mucho más a menudo de lo que cabría esperar por azar,
- dibuja patrones cortos, cerca de la longitud mínima,
- traza letras (L, Z, S, C, U, N) o cuadrados simples,
- se mueve de izquierda a derecha y de arriba abajo, como cuando lee.

Por eso, la solidez efectiva de un patrón típico de 3×3 elegido por una persona se parece más a la de un PIN corto que a su máximo teórico. Una cuadrícula más grande solo ayuda si la aprovechas: una «L» de 6 puntos en una cuadrícula de 5×5 sigue siendo fácil de adivinar.

Lo que hace sólido un patrón es lo mismo que hace sólido cualquier secreto: la longitud y la imprevisibilidad. En una cuadrícula de 5×5, un patrón de 8 a 12 puntos que cambia de dirección varias veces, no empieza en una esquina, no forma una letra y, a ser posible, cruza su propio recorrido es realmente difícil de adivinar. Puedes probar una forma parecida (nunca la real) con el [comprobador de seguridad de patrones](id:pattern-strength-checker).

### La velocidad de los intentos importa tanto como su número

El número de combinaciones es solo la mitad de la historia. La otra mitad es la rapidez con la que un atacante puede probarlas. En un iPhone, el Secure Enclave impone retrasos crecientes al código del dispositivo. Dentro de una app, la defensa suele ser la derivación de claves: Velcrypt pasa cada patrón por PBKDF2 con al menos 600.000 iteraciones, lo que hace que cada intento sea lento a propósito. La [explicación de AES-256](id:aes-256-encryption-explained) cuenta por qué ese paso importa más que el propio cifrado.

## Miradas ajenas y marcas en la pantalla

**Espiar por encima del hombro** significa que alguien te observa mientras desbloqueas. Es el ataque real más habitual contra los bloqueos del teléfono, porque las personas más interesadas en entrar en tu teléfono suelen estar sentadas a tu lado.

- **Los patrones** son los más fáciles de observar. Una forma se recuerda de un vistazo, incluso desde el otro lado de la mesa.
- **Los PIN** son moderadamente fáciles de observar, sobre todo los de 4 dígitos tecleados con un pulgar.
- **Las contraseñas** son más difíciles de captar de una sola vez porque son más largas y el teclado cambia de disposición.
- **La biometría** no se puede espiar en absoluto.

**Los ataques por marcas** leen el rastro de grasa que tu dedo deja en el cristal. Los patrones están más expuestos que los PIN, porque una línea continua deja una huella continua. Los patrones que se cruzan, vuelven sobre sí mismos o pasan por los puntos en un orden ambiguo son mucho más difíciles de reconstruir a partir de un rastro.

Defensas prácticas: inclina la pantalla para que no se vea, cúbrela con la otra mano, límpiala de vez en cuando y desbloquea las apps delicadas cuando estés a solas.

## Desbloqueo forzado: la pregunta que casi todas las comparaciones omiten

La biometría tiene una debilidad que ninguna ingeniería elimina: no requiere tu participación. Alguien puede acercar tu teléfono a tu cara mientras duermes, presionar tu dedo contra el sensor u obligarte físicamente. En situaciones domésticas, en una fiesta o en un atraco, es un riesgo real.

En algunos lugares, las autoridades también pueden exigirte legalmente que facilites tu huella o tu cara, mientras que tratan de forma distinta un código memorizado. El panorama legal varía mucho entre países y ha cambiado con el tiempo, así que esta guía no ofrece asesoramiento jurídico. El punto técnico es sencillo: un secreto en tu memoria requiere una decisión tuya; una parte de tu cuerpo, no.

Si confías en Face ID, conoce la salida de emergencia. En el iPhone 8 y posteriores, mantener pulsados el botón lateral y cualquiera de los botones de volumen hasta que aparezca la pantalla de apagado/Emergencia SOS (y luego cancelar) desactiva temporalmente Face ID y Touch ID hasta que se introduzca el código. Consulta [la privacidad del teléfono en la aduana](id:phone-privacy-border-crossing) para saber cuándo importa.

## Comparación lado a lado

| | PIN de 4 dígitos | PIN de 6 dígitos | Contraseña larga | Patrón (5×5, 8+ puntos) | Face ID / Touch ID |
|---|---|---|---|---|---|
| Combinaciones posibles | 10.000 | 1.000.000 | Muchísimas si es aleatoria | Muchísimas en teoría; muchas menos con formas previsibles | No aplica |
| Facilidad real para adivinarlo | Alta (códigos habituales) | Moderada | Baja si es aleatoria | Baja si es irregular, alta si es una letra | Muy baja |
| Espiar por encima del hombro | Fácil | Moderado | Difícil | Fácil | Imposible |
| Fuga por marcas en la pantalla | Algo | Algo | Baja | Alta salvo que el recorrido se cruce | Ninguna |
| Se puede usar sin tu consentimiento | No | No | No | No | Sí |
| Rapidez y comodidad | Rápido | Rápido | Lento en un teléfono | Rápido | El más rápido |

## Elegir el bloqueo adecuado para cada capa

No tienes que elegir un único bloqueo para todo. Una configuración sensata para la mayoría de la gente:

1. **Dispositivo:** un código de 6 dígitos (o más largo), con Face ID o Touch ID por comodidad si tu situación lo permite.
2. **Contenido privado:** un secreto aparte que no sea el código del dispositivo, para que quien descubra u observe tu código no lo obtenga todo automáticamente.
3. **Saber desactivar rápido la biometría** cuando estés en un sitio donde puedan presionarte.

## Dónde encaja Velcrypt

Velcrypt toma una decisión deliberada: la única forma de entrar en una bóveda es un patrón en una cuadrícula de 5×5 puntos, una línea continua que pasa por al menos 6 puntos con al menos un cambio de dirección. Se recomiendan patrones más largos, de 8 a 12 puntos. No hay Face ID ni Touch ID, porque un patrón no se puede sacar de tu cuerpo.

El diseño también cambia lo que significa «adivinar». Cada patrón es su propia bóveda, y un patrón que Velcrypt nunca ha visto simplemente abre una bóveda vacía, sin ningún mensaje de error. Eso significa que un intento equivocado no se anuncia como equivocado, y puedes tener una [bóveda señuelo](id:what-is-a-decoy-vault) con un segundo patrón. La página de [bóvedas ocultas](id:hidden-vaults) explica el modelo, y el [resumen de seguridad](id:security) enumera lo que no puede proteger, incluido que alguien te vea dibujar.
