---
pageId: aes-256-encryption-explained
title: "El cifrado AES-256, explicado (GCM, PBKDF2 y cuántica)"
description: "Qué es AES-256, por qué importa el modo GCM, por qué la derivación de claves pesa más que el cifrado y qué cambia la computación cuántica."
h1: "El cifrado AES-256, explicado sin exageraciones"
navTitle: "El cifrado AES-256, explicado"
answer: "AES-256 es un cifrado simétrico que cifra los datos con una clave de 256 bits; nadie puede romperlo en la práctica probando claves. En los datos protegidos con un patrón o una contraseña, la solidez real depende de la derivación de claves: con qué lentitud y cuidado se convierte ese secreto corto en la clave. El modo GCM añade detección de manipulaciones además del secreto."
keyFacts:
  - "AES es un cifrado por bloques que el NIST estandarizó en 2001; AES-256 usa una clave de 256 bits y 14 rondas."
  - "GCM es un modo autenticado: cifra y además detecta cualquier cambio en el texto cifrado."
  - "Un patrón o una contraseña débiles socavan AES-256, porque los atacantes adivinan el secreto, no la clave."
  - "Una derivación de claves lenta, como PBKDF2 con muchas iteraciones, encarece cada intento."
  - "El algoritmo de Grover reduciría AES-256 a unos 128 bits de seguridad frente a un atacante cuántico, algo que se sigue considerando sólido."
primaryKeyword: "cifrado aes-256 explicado"
keywords: ["qué es aes 256", "aes-256-gcm", "pbkdf2 explicado", "aes 256 es seguro frente a la computación cuántica", "aes 256 vs aes 128", "cifrado autenticado"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES, tamaños de clave, cifrado autenticado GCM, por qué PBKDF2 importa más que el cifrado y la cuestión cuántica, en lenguaje claro."
category: security
order: 43
related: [encryption, pattern-lock-vs-pin-vs-face-id, pattern-strength-checker, plausible-deniability-explained, are-photo-vault-apps-safe, security]
faq:
  - q: "¿Se puede romper AES-256?"
    a: "No se conoce ningún ataque práctico que recupere una clave AES-256 más rápido que la fuerza bruta, y probar por fuerza bruta una clave de 256 bits está muy por encima de cualquier ordenador concebible. Las brechas reales vienen de contraseñas débiles, claves robadas o errores alrededor del cifrado, no del propio AES."
  - q: "¿Qué diferencia hay entre AES-128 y AES-256?"
    a: "Ambos usan el mismo algoritmo con distintas longitudes de clave y número de rondas: claves de 128 bits con 10 rondas frente a claves de 256 bits con 14 rondas. AES-128 ya se considera seguro; AES-256 añade un margen amplio, también frente a futuros ataques cuánticos."
  - q: "¿Qué significa GCM en AES-256-GCM?"
    a: "GCM (Galois/Counter Mode) es un modo de operación que cifra los datos y además genera una etiqueta de autenticación. Si se altera aunque sea un bit del archivo cifrado, el descifrado falla en lugar de devolver datos dañados o manipulados."
  - q: "¿AES-256 es seguro frente a la computación cuántica?"
    a: "En general se considera resistente a la computación cuántica. En teoría, el algoritmo de Grover reduciría a la mitad la solidez efectiva de la clave, hasta unos 128 bits, que se sigue considerando seguro. Los ordenadores cuánticos son una amenaza mayor para los algoritmos de clave pública como RSA que para AES."
  - q: "¿Por qué una app que usa AES-256 sigue necesitando una contraseña o un patrón sólidos?"
    a: "Porque los atacantes no adivinan la clave de 256 bits; adivinan el secreto corto del que se deriva. Si tu secreto está entre unos pocos miles de opciones habituales, incluso una derivación lenta solo gana un tiempo limitado."
---

«Cifrado AES-256» aparece en la lista de funciones de casi todas las apps de privacidad. Es una afirmación real y con sentido, pero también es la parte de un sistema que menos probabilidades tiene de fallar. Esta guía explica qué hace AES-256, qué significan las letras extra como GCM y por qué el paso que convierte tu patrón o contraseña en una clave merece más atención.

## Qué es AES

AES (Advanced Encryption Standard, estándar de cifrado avanzado) es un cifrado simétrico por bloques: la misma clave secreta cifra y descifra, y los datos se procesan en bloques de 128 bits. El Instituto Nacional de Estándares y Tecnología de Estados Unidos (NIST) lo seleccionó en 2001 tras un concurso público y abierto de varios años, y el diseño ganador, Rijndael, era obra de dos criptógrafos belgas.

Hoy AES está en todas partes: en las conexiones HTTPS, la wifi, el cifrado de discos y el hardware de cualquier iPhone moderno. Esa omnipresencia es una ventaja. Los criptógrafos llevan más de dos décadas estudiándolo, y muchos procesadores lo aceleran por hardware.

### Tamaños de clave

AES tiene tres longitudes de clave:

| Variante | Longitud de clave | Rondas | Claves posibles |
|---|---|---|---|
| AES-128 | 128 bits | 10 | unas 3,4 × 10³⁸ |
| AES-192 | 192 bits | 12 | unas 6,3 × 10⁵⁷ |
| AES-256 | 256 bits | 14 | unas 1,2 × 10⁷⁷ |

Para poner en perspectiva la cifra de AES-256: no está lejos de las estimaciones habituales del número de átomos del universo observable. Probar todas las claves no es cuestión de ordenadores más rápidos; está físicamente fuera de alcance.

## Modos: por qué importa «GCM»

Un cifrado por bloques, por sí solo, solo transforma un único bloque de 16 bytes. Un **modo de operación** define cómo cifrar archivos completos de forma segura. Los modos antiguos solo aportaban secreto, lo que significaba que a veces un atacante podía invertir bits del texto cifrado y provocar cambios predecibles en los datos descifrados.

**GCM (Galois/Counter Mode) es un modo de cifrado autenticado.** Cifra los datos y además calcula una etiqueta de autenticación sobre ellos. Al descifrar, primero se comprueba la etiqueta. Si el archivo se ha manipulado o dañado, el descifrado falla limpiamente en lugar de devolver contenido alterado.

GCM tiene una regla estricta: un nonce (un número que se usa una sola vez) nunca debe repetirse con la misma clave. Los sistemas bien diseñados evitan ese riesgo de forma estructural, por ejemplo dando a cada archivo su propia clave.

## La parte que de verdad decide tu seguridad: la derivación de claves

Esta es la verdad incómoda sobre el «AES-256» de una app protegida con un bloqueo. Nadie ataca directamente la clave de 256 bits. Atacan lo que tú recuerdas.

Un patrón, un PIN o una contraseña son cortos. Una **función de derivación de claves (KDF)** es el proceso que convierte ese secreto corto en una clave de longitud completa. Si la KDF es rápida, un atacante que haya copiado los datos cifrados puede probar miles de millones de intentos. Si es lenta a propósito, cada intento cuesta tiempo y potencia de cálculo reales.

### Cómo frena PBKDF2 a los atacantes

**PBKDF2** (Password-Based Key Derivation Function 2) es una KDF estandarizada y muy utilizada. Pasa tu secreto por una función hash con clave (HMAC) muchos miles de veces y mezcla una **sal**, un valor aleatorio que hace única tu clave derivada aunque otra persona haya elegido el mismo secreto.

- **Las iteraciones** multiplican el coste de cada intento. Con cientos de miles de iteraciones, un intento que llevaría un microsegundo pasa a llevar una fracción de segundo apreciable.
- **La sal** inutiliza las tablas precalculadas. Un atacante no puede construir una lista gigante de «patrón → clave» y reutilizarla entre dispositivos.

Aun así, ninguna KDF puede salvar un secreto que esté entre los primeros miles que probaría un atacante. Por eso los consejos para elegir un secreto sólido, en la [guía de patrón vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id), importan tanto como el cifrado. Prueba una forma parecida (nunca la real) con el [comprobador de seguridad de patrones](id:pattern-strength-checker).

## La cuestión cuántica

Los ordenadores cuánticos amenazan seriamente a una parte de la criptografía y solo levemente a otra.

- **Los algoritmos de clave pública** como RSA y la criptografía de curva elíptica podrían romperse con el algoritmo de Shor en un ordenador cuántico suficientemente grande. Por eso la industria está desplegando el intercambio de claves poscuántico.
- **Los cifrados simétricos** como AES se enfrentan al algoritmo de Grover, que ofrece una aceleración cuadrática de la búsqueda por fuerza bruta. En la práctica, eso reduce aproximadamente a la mitad la longitud efectiva de la clave: AES-256 ofrecería unos 128 bits de seguridad frente a un atacante cuántico.

128 bits de seguridad se siguen considerando sólidos. Es una de las razones por las que se recomienda AES-256 para datos que deben seguir siendo confidenciales durante mucho tiempo.

## Ideas equivocadas habituales

- **Los superlativos en una lista de funciones significan algo.** No. AES es un estándar público que usan por igual bancos, navegadores y apps de mensajería; los adjetivos grandilocuentes delante son marketing.
- **AES-256 hace segura una app.** Hace seguros los bytes cifrados. La gestión de claves, la KDF, el diseño del desbloqueo, las copias de seguridad y las copias que quedan en otros sitios deciden si lo es el sistema completo.
- **Las claves más largas arreglan las contraseñas débiles.** No. Una clave de 256 bits derivada de «1234» es tan sólida como «1234».

## Cómo usa Velcrypt AES-256

El diseño de Velcrypt sigue el principio anterior: cifrado sólido, gestión cuidadosa de las claves, derivación lenta.

- **Cifrado:** AES-256-GCM mediante Apple CryptoKit, así que cada archivo se cifra y se autentica.
- **Derivación de claves:** tu patrón se procesa con PBKDF2-HMAC-SHA512 con al menos 600.000 iteraciones y una sal aleatoria por dispositivo guardada en el llavero de iOS.
- **Jerarquía de claves:** cada bóveda tiene su propia clave maestra aleatoria de 256 bits, y las claves por archivo se derivan de ella con HKDF. Tener claves distintas por archivo también facilita cumplir la regla del nonce de GCM.
- **Capa adicional:** sobre el cifrado propio de Velcrypt se aplica a los archivos la protección de datos de iOS (clase de protección completa).
- **Solo en el dispositivo:** sin cuenta y sin servidores, así que no hay ninguna copia de tus claves en ningún otro sitio.

La [página de la función de cifrado](id:encryption) lo resume, y el [resumen de seguridad](id:security) es explícito sobre lo que el cifrado no puede proteger, como que alguien te vea dibujar el patrón o un teléfono entregado con la bóveda abierta.
