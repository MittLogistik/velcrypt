---
pageId: can-aes-256-be-cracked
title: "¿Se puede romper AES-256? Fuerza bruta, cuántica y GCM"
description: "Cuánto tardaría un ataque de fuerza bruta contra una clave de 256 bits, qué cambian la computación cuántica y GCM, y adónde apuntan los ataques reales."
h1: "¿Se puede romper AES-256? Las cuentas, los ataques y la cuestión cuántica"
navTitle: "¿Se puede romper AES-256?"
answer: "No probando claves: incluso mil millones de máquinas que probaran cada una un trillón de claves por segundo tardarían de media unos 10⁴² años. Los mejores ataques conocidos solo restan un par de bits, y un ordenador cuántico con el algoritmo de Grover seguiría ante unos 2¹²⁸ pasos. Los ataques reales van a por la contraseña o el patrón, el dispositivo o la implementación."
keyFacts:
  - "Una clave de 256 bits tiene unos 1,2 × 10⁷⁷ valores posibles; la fuerza bruta queda fuera de alcance con cualquier supuesto realista."
  - "El mejor ataque conocido contra AES-256 completo sin claves relacionadas (biclique, 2011) cuesta unas 2²⁵⁴·⁴ operaciones en lugar de 2²⁵⁶."
  - "El algoritmo de Grover dejaría a AES-256 con unos 128 bits de seguridad; el NIST, la BSI y el NCSC británico consideran AES apto para la era cuántica."
  - "El algoritmo de Shor amenaza RSA y la criptografía de curva elíptica, no AES."
  - "En una bóveda protegida con patrón, el punto débil es la entropía del patrón y la derivación de claves, no el cifrado."
primaryKeyword: "se puede romper aes 256"
keywords: ["cuánto se tarda en descifrar aes 256", "aes 256 es seguro frente a la computación cuántica", "cifrado aes 256", "aes-256-gcm", "rijndael 256", "ha sido roto aes"]
datePublished: 2026-10-31
dateModified: 2026-10-31
summary: "Las cuentas de la fuerza bruta contra una clave de 256 bits, ataques conocidos, Grover frente a Shor, qué aporta GCM y por qué el patrón es el objetivo real."
category: security
order: 65
related: [aes-256-encryption-explained, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, encryption, security, are-photo-vault-apps-safe]
faq:
  - q: "¿Cuánto se tardaría en romper AES-256 por fuerza bruta?"
    a: "Suponiendo mil millones de máquinas que prueban cada una 10¹⁸ claves por segundo, encontrar una clave de 256 bits llevaría de media unos 1,8 × 10⁴² años, alrededor de 10³² veces la edad del universo. Los supuestos son exageradamente generosos; el hardware real es mucho más lento."
  - q: "¿Es AES-256 seguro frente a la computación cuántica?"
    a: "Se considera resistente. El algoritmo de Grover reduciría su solidez efectiva a unos 128 bits, que se sigue considerando seguro. El NIST indica que las aplicaciones actuales pueden seguir usando AES, y la BSI alemana recomienda claves de 256 bits para la protección a largo plazo."
  - q: "¿Se ha roto alguna vez AES?"
    a: "En la práctica, no. Existen ataques académicos, como los ataques biclique que bajan AES-256 de 2²⁵⁶ a unas 2²⁵⁴·⁴ operaciones y los ataques de claves relacionadas, que exigen un escenario poco realista. Ninguno permite descifrar datos reales cifrados con AES-256."
  - q: "¿Rijndael 256 es lo mismo que AES-256?"
    a: "No exactamente. Rijndael es el diseño que se convirtió en AES y admite bloques de 128, 192 o 256 bits. AES fija el bloque en 128 bits, y AES-256 significa una clave de 256 bits. Una variante de Rijndael con bloque de 256 bits no es AES."
  - q: "¿Qué añade AES-256-GCM frente a AES-256 a secas?"
    a: "GCM convierte AES en cifrado autenticado. Además de mantener el secreto, añade una etiqueta de autenticación, de modo que cualquier cambio en el archivo cifrado hace fallar el descifrado. Exige que un nonce no se repita nunca con la misma clave."
  - q: "Entonces, ¿se puede romper una bóveda que usa AES-256?"
    a: "No por el cifrado. Quien copia los datos cifrados intenta adivinar tu patrón o tu contraseña, y una derivación de claves lenta solo limita cuántos intentos por segundo consigue. Lo que mantiene cerrada la bóveda es un secreto largo e irregular."
---

«¿Se puede romper AES-256?» es una pregunta razonable, y la respuesta honesta tiene dos mitades. El cifrado en sí no se va a romper, según cualquier estimación seria, ni probando claves, ni con el mejor criptoanálisis conocido, ni con ordenadores cuánticos en ningún horizonte visible. Pero los datos protegidos con AES-256 aún pueden quedar expuestos, porque los atacantes apuntan a lo más débil. Esta guía hace las cuentas y luego sigue al atacante hasta donde realmente va. Para lo básico sobre cómo funciona AES, empieza por [el cifrado AES-256, explicado](id:aes-256-encryption-explained).

## ¿Cuánto tardaría la fuerza bruta?

La fuerza bruta consiste en probar todas las claves posibles hasta dar con la buena. Una clave de 256 bits tiene 2²⁵⁶ valores posibles, unos 1,16 × 10⁷⁷. De media se encuentra la correcta a mitad de camino, es decir, tras unos 5,8 × 10⁷⁶ intentos.

Demos al atacante unos recursos absurdamente generosos:

- **Velocidad por máquina:** 10¹⁸ claves por segundo (un trillón), muy por encima de cualquier hardware real para atacar AES.
- **Número de máquinas:** mil millones, todas en paralelo.
- **Total:** 10²⁷ claves por segundo.

El resultado: 5,8 × 10⁷⁶ ÷ 10²⁷ ≈ 5,8 × 10⁴⁹ segundos, unos **1,8 × 10⁴² años**. El universo tiene unos 1,38 × 10¹⁰ años, así que eso es alrededor de 10³² veces su edad. Duplicar el hardware unas cuantas decenas de veces no cambia la conclusión: cada bit de clave adicional duplica el trabajo, y 256 bits no dejan margen para que la ingeniería lo alcance.

Por eso nadie en criptografía habla de atacar AES-256 por fuerza bruta. La única pregunta es si existe un atajo.

## Ataques conocidos: ganancias teóricas mínimas

AES es público desde 2001 y es uno de los algoritmos más estudiados que existen. Los criptoanalistas han encontrado ataques que, en sentido estricto, son más rápidos que la fuerza bruta, pero por márgenes que solo importan sobre el papel.

- **Ataques biclique (2011).** Bogdanov, Khovratovich y Rechberger mostraron una recuperación de clave contra AES-256 completo con un coste de unas 2²⁵⁴·⁴ operaciones en lugar de 2²⁵⁶. Es más o menos tres veces menos trabajo que la fuerza bruta: siguen siendo unas 10⁷⁶ operaciones. Los propios autores afirmaron que el ataque no amenaza el uso práctico de AES.
- **Ataques de claves relacionadas (2009).** Biryukov y Khovratovich encontraron un ataque contra AES-256 de unas 2⁹⁹·⁵ en tiempo, pero solo en un modelo en el que el atacante obtiene datos cifrados con varias claves secretas que guardan una relación matemática concreta. Los sistemas bien diseñados generan claves aleatorias independientes, así que ese modelo no les afecta.

Ninguno de estos resultados recupera una clave a partir de datos reales cifrados con AES-256. Sirven sobre todo como prueba de que dos décadas de escrutinio no han encontrado una grieta relevante.

### Qué significa «Rijndael 256»

Rijndael es el diseño de Joan Daemen y Vincent Rijmen que el NIST eligió como AES. Rijndael admite tamaños de bloque y de clave de 128, 192 y 256 bits. AES solo estandarizó el bloque de 128 bits. Así que AES-256 significa Rijndael con bloque de 128 bits y clave de 256 bits. Un «Rijndael-256» con bloque de 256 bits es otro cifrado, no estándar, y no es a lo que se refieren las apps o los navegadores cuando hablan de AES-256.

## ¿Es AES-256 seguro frente a la computación cuántica?

Los ordenadores cuánticos afectan de forma muy distinta a dos familias de criptografía.

- **El algoritmo de Shor** resuelve de forma eficiente la factorización y los logaritmos discretos. Un ordenador cuántico lo bastante grande rompería RSA y la criptografía de curva elíptica, los métodos de clave pública que se usan para intercambiar claves y firmar. Por eso se está desplegando el intercambio de claves poscuántico.
- **El algoritmo de Grover** acelera de forma cuadrática la búsqueda por fuerza bruta: recorrer 2²⁵⁶ claves cuesta unos 2¹²⁸ pasos cuánticos. En la práctica, AES-256 ofrece unos 128 bits de seguridad frente a un atacante cuántico.

¿Cuánto son 2¹²⁸ pasos? Supongamos un ordenador cuántico capaz de ejecutar mil millones de iteraciones de Grover por segundo, cada una evaluando un circuito AES completo, algo muy optimista. Aun así necesitaría unos 10²² años. Además, Grover se paraleliza mal: repartir la búsqueda entre muchas máquinas da bastante menos que una aceleración proporcional.

Las posiciones oficiales coinciden:

- **El NIST** (EE. UU.) dice en sus preguntas frecuentes sobre criptografía poscuántica que el algoritmo de Grover probablemente aportará poca o ninguna ventaja para atacar AES, y que las aplicaciones actuales pueden seguir usando AES con claves de 128, 192 o 256 bits.
- **La BSI** (Alemania) considera que los cifrados simétricos como AES son en esencia resistentes a los ataques cuánticos si se adapta la longitud de clave, y recomienda claves de 256 bits en sistemas nuevos que deban proteger datos a largo plazo.
- **El NCSC** (Reino Unido) afirma que la seguridad de la criptografía simétrica no se ve afectada de forma significativa por los ordenadores cuánticos y que AES puede seguir usándose con tamaños de clave adecuados.

Así que sí: AES-256 es la variante recomendada para datos que deben seguir siendo confidenciales durante mucho tiempo, ordenadores cuánticos incluidos.

## Qué añade GCM en AES-256-GCM

AES por sí solo cifra un bloque de 16 bytes. Un modo de operación define cómo se cifran archivos completos. **GCM (Galois/Counter Mode)**, estandarizado por el NIST en la SP 800-38D, es un modo autenticado: junto al texto cifrado genera una etiqueta de autenticación. Al descifrar se comprueba la etiqueta, y si ha cambiado un solo bit del archivo, el descifrado falla en lugar de devolver datos alterados.

GCM tiene una regla estricta: un nonce no debe repetirse nunca con la misma clave. Reutilizarlo puede filtrar información del texto en claro y permitir falsificar etiquetas. No es una debilidad de AES, sino justo el tipo de error de implementación que aprovechan los ataques reales. Dar a cada archivo su propia clave, como hace Velcrypt, facilita cumplir la regla.

## Adónde van realmente los ataques

Si el cifrado está fuera de alcance, los atacantes lo rodean. En la práctica apuntan a tres cosas.

1. **El secreto que recuerdas.** La clave de 256 bits suele derivarse de una contraseña, un PIN o un patrón. Adivinar el secreto es muchísimo más barato que adivinar la clave.
2. **El dispositivo.** El malware, un iPhone con jailbreak, una bóveda que se deja abierta o alguien que te ve desbloquear esquivan el cifrado por completo.
3. **La implementación.** Nonces reutilizados, claves guardadas junto a los datos, números aleatorios débiles o canales laterales como las fugas de tiempo. Por eso conviene usar bibliotecas del sistema contrastadas, como Apple CryptoKit, en lugar de código criptográfico casero.

## La conclusión honesta para una bóveda con patrón

En una bóveda como Velcrypt, la clave que cifra tus archivos es una clave maestra aleatoria de 256 bits, tan sólida como puede serlo AES. Pero esa clave maestra está sellada con una clave derivada del patrón que dibujas. Quien haya copiado los datos cifrados y la sal del dispositivo puede probar intentos sin conexión. La solidez del cifrado deja entonces de importar; lo que cuenta es cuántos patrones puede probar por segundo y cuántos necesita.

Velcrypt ralentiza cada intento con PBKDF2-HMAC-SHA512 y al menos 600.000 iteraciones. Extrapolando a partir de benchmarks públicos de descifrado de contraseñas, una tarjeta gráfica gaming de gama alta logra del orden de 5.000 intentos por segundo con ese ajuste. Es una cifra aproximada, no una medición del propio Velcrypt. Esto es lo que significa:

| Patrones que debe probar el atacante | Bits aprox. | Una GPU | 100 GPU |
|---|---|---|---|
| 10.000 (formas habituales) | ~13 | segundos | al instante |
| 1 millón | ~20 | minutos | segundos |
| 1.000 millones | ~30 | unos 2 días | unos 30 minutos |
| 1 billón | ~40 | unos 6 años | unas 3 semanas |

Para hacerse una idea: incluso si se trata un patrón como cualquier secuencia ordenada de 10 puntos distintos de 25, solo salen unos 1,2 × 10¹³ casos (unos 43 bits), y es un límite superior generoso, porque una línea continua restringe los movimientos y la gente prefiere esquinas, letras y formas cortas. Un patrón se mueve en unas decenas de bits; la clave, en 256.

Nada de esto es fácil en un iPhone: el atacante primero tiene que sacar del dispositivo los archivos cifrados y la sal, superando la protección de datos de iOS. Pero muestra dónde poner el esfuerzo:

- **Usa de 8 a 12 puntos**, con varios cambios de dirección y, a ser posible, un cruce.
- **Evita empezar en una esquina, las letras y las formas simples** como una L, una Z o un cuadrado.
- **Dibújalo donde nadie lo vea**, porque ninguna entropía protege frente a quien te ha observado.

Prueba una forma parecida, nunca la real, con el [comprobador de seguridad de patrones](id:pattern-strength-checker), y lee la [guía de patrón vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) para ver cómo se comparan los secretos que elegimos las personas. La [página de cifrado](id:encryption) detalla la cadena completa de claves de Velcrypt, y el [resumen de seguridad](id:security#what-velcrypt-does-not-protect-against) enumera aquello frente a lo que el cifrado no puede proteger.
