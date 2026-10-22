---
pageId: encryption
title: "Cifrado de Velcrypt: AES-256-GCM con claves de tu patrón"
description: "Cómo cifra Velcrypt tu bóveda: PBKDF2-HMAC-SHA512 a partir de tu patrón, una clave maestra aleatoria de 256 bits, claves HKDF por archivo y AES-256-GCM."
h1: "Cómo cifra Velcrypt tu bóveda de fotos"
navTitle: "Cifrado"
answer: "Velcrypt cifra cada archivo con AES-256-GCM. Tu patrón se refuerza con PBKDF2-HMAC-SHA512 (al menos 600.000 iteraciones y una sal por dispositivo) para obtener una clave que desbloquea la clave maestra aleatoria de 256 bits de la bóveda, de la que HKDF deriva una clave distinta para cada archivo. La protección de datos de iOS añade una segunda capa."
keyFacts:
  - "Cifrado: AES-256-GCM, cifrado autenticado mediante Apple CryptoKit."
  - "Refuerzo del patrón: PBKDF2-HMAC-SHA512, al menos 600.000 iteraciones."
  - "Una sal aleatoria por dispositivo se guarda en el llavero de iOS (Keychain)."
  - "Cada bóveda tiene su propia clave maestra aleatoria de 256 bits; cada archivo recibe su propia clave mediante HKDF."
  - "Por encima se aplica la protección de datos de iOS (clase de protección completa)."
primaryKeyword: "bóveda de fotos cifrada iphone"
keywords: ["bóveda de fotos aes-256-gcm", "cifrado de fotos iphone", "app bóveda pbkdf2", "cómo se cifra mi bóveda", "cifrado autenticado explicado"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "AES-256-GCM por archivo, claves derivadas de tu patrón con PBKDF2-HMAC-SHA512 y HKDF, más la protección de datos de iOS."
status: available
schemaType: WebPage
order: 4
related: [security, aes-256-encryption-explained, pattern-lock, hidden-vaults, offline-no-account]
faq:
  - q: "¿Qué cifrado usa Velcrypt?"
    a: "AES-256-GCM, un modo de cifrado autenticado, mediante el framework CryptoKit de Apple. Cada archivo se cifra con su propia clave, derivada de la clave maestra aleatoria de 256 bits de la bóveda."
  - q: "¿Se guarda mi patrón en el teléfono?"
    a: "Tu patrón no se usa directamente como clave. Se refuerza con PBKDF2-HMAC-SHA512 con al menos 600.000 iteraciones y una sal propia del dispositivo, y el resultado sirve para desbloquear la clave maestra de la bóveda."
  - q: "¿Puede Velcrypt descifrar mis archivos?"
    a: "No. Velcrypt no tiene servidores ni ninguna copia de tus claves. Las claves solo se pueden reconstruir en tu teléfono a partir de tu patrón, y por eso un patrón olvidado no se puede restablecer."
  - q: "¿Por qué se usa además la protección de datos de iOS?"
    a: "Añade una capa independiente. Los archivos usan la clase de protección completa, así que iOS los mantiene cifrados con claves vinculadas al código de tu dispositivo mientras el teléfono está bloqueado, además del cifrado propio de Velcrypt."
---

El cifrado es lo que convierte una bóveda en algo más que una carpeta oculta. En Velcrypt, cada foto, vídeo y documento se cifra en tu iPhone antes de guardarse, con claves que solo se pueden reconstruir a partir de tu patrón. Esta página explica cómo se crean y se usan esas claves.

## La cadena de claves, paso a paso

Velcrypt usa un modelo de claves por capas. Cada capa tiene una única función.

1. **Tu patrón.** Lo dibujas en la [cuadrícula 5×5](id:pattern-lock). Es el único secreto que tienes que recordar.
2. **Refuerzo de la clave con PBKDF2-HMAC-SHA512.** El patrón pasa por PBKDF2 con SHA-512 durante **al menos 600.000 iteraciones**, junto con una sal aleatoria. El refuerzo de claves (key stretching) es una técnica que hace que cada intento sea deliberadamente lento, de modo que probar patrones uno a uno sale muy caro.
3. **Una sal por dispositivo en el llavero.** La sal es aleatoria, se crea en tu dispositivo y se guarda en el llavero de iOS (Keychain). Garantiza que el mismo patrón produzca una clave distinta en otro teléfono, así que las tablas de intentos precalculadas no sirven de nada.
4. **La clave maestra de la bóveda.** Cada bóveda tiene su propia **clave maestra aleatoria de 256 bits**. La clave obtenida del patrón no cifra tus archivos directamente: desbloquea esta clave maestra.
5. **Claves por archivo con HKDF.** A partir de la clave maestra, HKDF (una función estándar de derivación de claves) deriva una clave distinta para cada archivo. No hay dos archivos que compartan clave.
6. **AES-256-GCM.** Cada archivo se cifra con su propia clave usando AES-256 en modo GCM, mediante CryptoKit de Apple.

| Capa | Qué hace |
| --- | --- |
| Patrón | El secreto que solo tú conoces |
| PBKDF2-HMAC-SHA512, más de 600.000 iteraciones | Hace que cada intento sea lento |
| Sal por dispositivo (llavero) | Hace que las claves sean únicas del dispositivo |
| Clave maestra aleatoria de 256 bits | Una por bóveda; mantiene las bóvedas separadas |
| HKDF | Una clave única para cada archivo |
| AES-256-GCM | Cifra y autentica el archivo |
| Protección de datos de iOS | Segunda capa, a nivel del sistema |

Como cada bóveda tiene su propia clave maestra, las bóvedas están separadas criptográficamente. Por eso las [bóvedas ocultas](id:hidden-vaults) son algo más que un truco visual.

## Qué significa cifrado autenticado

El cifrado autenticado es un cifrado que protege a la vez la confidencialidad y la integridad. AES-256-GCM hace dos cosas al mismo tiempo: desordena el archivo para que no se pueda leer sin la clave y le añade una etiqueta de autenticación que demuestra que no ha sido alterado.

Cuando Velcrypt abre un archivo, comprueba esa etiqueta. Si ha cambiado aunque sea un solo byte, ya sea por corrupción o por manipulación, el descifrado falla en lugar de devolver en silencio datos dañados o manipulados. Los modos antiguos que cifran sin autenticar no pueden detectarlo. Para una explicación sencilla del propio algoritmo, consulta [el cifrado AES-256, explicado](id:aes-256-encryption-explained).

## La protección de datos de iOS como segunda capa

Además de su propio cifrado, Velcrypt guarda los archivos de la bóveda con la protección de datos de iOS configurada en la clase de **protección completa**. Con esta clase, iOS mantiene los archivos cifrados con claves vinculadas al código de tu dispositivo siempre que el teléfono está bloqueado.

Las dos capas son independientes. Aunque de algún modo se sorteara una, la otra seguiría interponiéndose entre un teléfono bloqueado y tus archivos.

## Por qué no hay claves en ningún otro sitio

Velcrypt funciona [totalmente sin conexión y sin cuenta](id:offline-no-account). No hay servidores, ni subidas, ni ninguna copia de tus claves fuera de tu teléfono. Ese diseño elimina toda una categoría de riesgos: no hay base de datos que vulnerar ni empleado de una empresa que pueda descifrar tus archivos.

También tiene un coste. Como las claves solo existen en el dispositivo y solo a través de tu patrón, nadie puede recuperar una bóveda si se olvida el patrón o se pierde el teléfono. Hay prevista una opción de copia de seguridad cifrada, pero no existe en la primera versión.

## Qué no cubre el cifrado

Un cifrado sólido protege los archivos almacenados. No sirve si alguien te ve dibujar tu patrón, si la bóveda está abierta cuando entregas el teléfono o si un dispositivo con jailbreak ejecuta malware. Tampoco alcanza a las copias que estén fuera de Velcrypt, como los originales que sigan en Fotos. La [información general de seguridad](id:security) cubre el modelo de amenazas al completo, incluido [contra qué no protege Velcrypt](id:security#what-velcrypt-does-not-protect-against).
