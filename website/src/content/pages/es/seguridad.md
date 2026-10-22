---
pageId: security
title: "Seguridad de Velcrypt: así funciona el cifrado"
description: "Cómo protege Velcrypt tus bóvedas: derivación de claves PBKDF2, clave maestra por bóveda, AES-256-GCM, Protección de datos de iOS y sus límites reales."
h1: "Cómo funciona Velcrypt: el modelo de seguridad"
navTitle: "Modelo de seguridad"
answer: "Velcrypt convierte el patrón que dibujas en una clave con PBKDF2-HMAC-SHA512 (al menos 600.000 iteraciones), la usa para proteger una clave maestra aleatoria de 256 bits de esa bóveda y cifra cada archivo con AES-256-GCM en tu iPhone. No se sube nada y no hay cuenta ni copia de recuperación de tus claves; solo una copia de seguridad cifrada que tú creas, protegida con tu propia contraseña."
keyFacts:
  - "Patrón → PBKDF2-HMAC-SHA512, al menos 600.000 iteraciones, sal aleatoria por dispositivo guardada en el llavero de iOS."
  - "Cada bóveda tiene su propia clave maestra aleatoria de 256 bits; las claves por archivo se derivan con HKDF."
  - "Los archivos se cifran con AES-256-GCM mediante Apple CryptoKit, más la Protección de datos de iOS (clase de protección completa)."
  - "Un patrón desconocido abre una bóveda vacía: no hay lista de bóvedas ni mensaje de «patrón incorrecto»."
  - "Sin red, sin cuenta y sin analítica sobre el contenido; las bóvedas se excluyen de las copias de iCloud y del ordenador."
  - "La copia de seguridad opcional es un archivo cifrado por bóveda, protegido con una contraseña que tú eliges."
  - "Velcrypt aún no ha pasado una auditoría de seguridad independiente."
primaryKeyword: "seguridad velcrypt"
keywords: ["cifrado bóveda de fotos iphone", "cómo funciona el cifrado de velcrypt", "bóveda de fotos aes-256-gcm", "bloqueo con patrón pbkdf2", "modelo de amenazas bóveda de fotos", "app bóveda negación plausible"]
datePublished: 2026-10-21
dateModified: 2026-10-22
schemaType: WebPage
order: 1
related: [encryption, pattern-lock, hidden-vaults, aes-256-encryption-explained, plausible-deniability-explained, forgot-vault-pattern]
faq:
  - q: "¿Puede Velcrypt ver o recuperar mis fotos?"
    a: "No. Velcrypt no tiene servidores, ni sistema de cuentas, ni copia de tus claves. Tu patrón nunca se guarda, así que nadie en Velcrypt puede abrir, restablecer ni recuperar una bóveda."
  - q: "¿Qué pasa si alguien dibuja un patrón incorrecto en Velcrypt?"
    a: "Un patrón que Velcrypt nunca ha visto simplemente abre una bóveda nueva y vacía. No aparece ningún mensaje de error ni nada que indique si existen otras bóvedas."
  - q: "¿El cifrado de Velcrypt es el mismo que el cifrado integrado del iPhone?"
    a: "No, se suma a él. iOS ya cifra el dispositivo y Velcrypt aplica a sus archivos la clase más estricta de la Protección de datos de iOS, pero además cifra cada archivo con su propia clave AES-256-GCM derivada del patrón de la bóveda. Por eso un teléfono desbloqueado no basta para abrir una bóveda."
  - q: "¿Velcrypt ha sido auditada de forma independiente?"
    a: "Todavía no. Velcrypt se basa en CryptoKit de Apple y en algoritmos estándar y muy estudiados. Una revisión de seguridad independiente sería bienvenida, pero hasta ahora no se ha realizado ninguna."
  - q: "¿Velcrypt oculta que uso una bóveda cifrada?"
    a: "No del todo. La app se ve en tu pantalla de inicio y alguien con herramientas forenses podría saber que Velcrypt guarda datos cifrados y, aproximadamente, cuántos. Lo que Velcrypt oculta es cuántas bóvedas tienes y qué hay dentro."
---

Esta página explica, en lenguaje claro, qué les ocurre a tus fotos, vídeos y documentos cuando los guardas en Velcrypt, y dónde termina la protección. Está pensada para quien quiere entender el diseño antes de confiarle algo personal.

## La versión corta

Velcrypt es una app para iPhone que guarda archivos privados en bóvedas cifradas en tu dispositivo. Abres una bóveda dibujando un patrón en una cuadrícula de 5×5 puntos. Ese patrón no se guarda en ningún sitio: pasa por una función de derivación de claves lenta que produce una clave, y esa clave es la que protege el contenido de la bóveda.

Todo ocurre en el propio iPhone. Velcrypt no tiene cuenta, ni servidores, ni paso de subida, así que no existe ninguna copia de tu bóveda, ni de tus claves, en ningún otro lugar, salvo una copia de seguridad cifrada que tú decidas crear. Esa es su fortaleza y también su principal limitación: si olvidas el patrón, la bóveda no se puede abrir, y si pierdes el teléfono sin tener una copia de seguridad, la bóveda no se puede recuperar.

## Del patrón a la clave

### El patrón

Un patrón es una línea continua que pasa por al menos 6 de los 25 puntos, con al menos un cambio de dirección. Se recomiendan patrones más largos, de 8 a 12 puntos, porque cada punto adicional multiplica el número de patrones que un atacante tendría que probar. Puedes leer más sobre las ventajas e inconvenientes en [patrón frente a PIN frente a Face ID](id:pattern-lock-vs-pin-vs-face-id) y ver cómo funciona el bloqueo en la [página del bloqueo con patrón](id:pattern-lock).

### PBKDF2 con una sal por dispositivo

Cuando terminas de dibujar, Velcrypt convierte la secuencia de puntos en una clave mediante **PBKDF2-HMAC-SHA512** con al menos **600.000 iteraciones**. PBKDF2 es una función de derivación de claves: una receta deliberadamente lenta y repetible que convierte un secreto (tu patrón) en una clave criptográfica. La lentitud es justo lo que se busca. Derivar una clave te lleva una fracción de segundo, pero quien intente millones de patrones tiene que pagar ese coste millones de veces.

La derivación incorpora además una **sal**: un valor aleatorio que se genera una sola vez en tu dispositivo y se guarda en el llavero de iOS. Como la sal es única de tu iPhone, dos personas que dibujen el mismo patrón obtienen claves completamente distintas, y las tablas precalculadas de «patrones comunes → claves» no sirven de nada.

### Una clave maestra por bóveda

Cada bóveda tiene su propia **clave maestra**: 256 bits aleatorios generados por el generador seguro de números aleatorios del sistema al crear la bóveda. La clave maestra es la que protege realmente los archivos de la bóveda. Solo se guarda en forma protegida (envuelta), sellada con la clave derivada de tu patrón. Sin el patrón correcto, la clave maestra no se puede desprecintar.

Esta separación importa. La clave maestra es realmente aleatoria, así que su solidez no depende de lo fácil de recordar que sea tu patrón, y mantiene cada bóveda criptográficamente independiente de las demás bóvedas del mismo teléfono.

### Una clave por archivo

A partir de la clave maestra, Velcrypt deriva una clave distinta para cada archivo con **HKDF**, una función estándar para obtener varias claves independientes a partir de un secreto sólido. Si la clave de un archivo llegara a quedar expuesta, no revelaría la clave maestra ni las claves de los demás archivos.

## Cómo se cifran los archivos

### AES-256-GCM mediante Apple CryptoKit

Cada foto, vídeo y documento se cifra con **AES-256-GCM** usando el framework CryptoKit de Apple en lugar de código criptográfico propio. AES-256-GCM es cifrado autenticado: mantiene el contenido confidencial *y* detecta manipulaciones. Si se altera aunque sea un solo bit de un archivo cifrado, el descifrado falla en vez de producir datos corruptos o manipulados. Para una explicación más a fondo, consulta [el cifrado AES-256 explicado](id:aes-256-encryption-explained) y la [página de la función de cifrado](id:encryption).

### La Protección de datos de iOS como segunda capa

Además del cifrado propio de Velcrypt, los archivos de las bóvedas se escriben con la Protección de datos de iOS en la clase de **protección completa**. Con esta clase, iOS mantiene los archivos cifrados con una clave que solo está disponible mientras el iPhone está desbloqueado. Con el teléfono bloqueado, ni el propio sistema operativo puede leerlos. Esta capa la proporciona Apple y es independiente de las claves de Velcrypt, así que un atacante tendría que superar ambas.

## Por qué un patrón desconocido abre una bóveda vacía

La mayoría de las apps comparan tu contraseña con algo guardado (un hash, un verificador, una «respuesta correcta») y luego te dicen *contraseña incorrecta*. Velcrypt evita hacerlo a propósito.

No hay lista de bóvedas ni ningún valor guardado que confirme si un patrón es «correcto». Cuando dibujas un patrón, Velcrypt deriva una clave e intenta abrir la bóveda que le corresponde. Si ninguna coincide, la app simplemente abre una bóveda nueva y vacía para ese patrón. Para quien tiene el teléfono en la mano, un patrón sin usar y una bóveda real pero vacía se ven exactamente igual.

Esto te da **negación plausible**: la posibilidad de afirmar de forma creíble que no hay nada más que ver, porque nada en la app demuestra lo contrario. Puedes tener una bóveda señuelo con fotos normales y otra bóveda aparte para lo que es realmente privado. La página de [bóvedas ocultas](id:hidden-vaults) y nuestras guías sobre [bóvedas señuelo](id:what-is-a-decoy-vault) y [negación plausible](id:plausible-deniability-explained) lo explican con más detalle.

Un efecto práctico: si recuerdas mal tu patrón por un solo punto, llegarás a una bóveda vacía en lugar de ver un error. Es así por diseño, no es un fallo.

## Bloqueo y selector de apps

Velcrypt se bloquea automáticamente cuando pasa a segundo plano, tras un retardo que puedes configurar. Al bloquearse, las claves de la bóveda se eliminan de la memoria y hay que volver a dibujar el patrón. El contenido de la bóveda también se oculta en el selector de apps de iOS, así que un vistazo a tus apps recientes no muestra la miniatura de una foto privada. Consulta [bloqueo automático](id:auto-lock) para ver los ajustes.

No hay desbloqueo con Face ID ni Touch ID, por diseño. Una cara o un dedo pueden usarse sin tu consentimiento: mientras duermes o bajo presión. Un patrón solo existe en tu memoria.

## Sin red, sin cuenta, copias de seguridad solo si tú las creas

Velcrypt funciona totalmente sin conexión. No hay registro, ni dirección de email, ni servidor, ni subida del contenido de las bóvedas, y no se recoge analítica sobre lo que guardas. La página [sin conexión y sin cuenta](id:offline-no-account) detalla lo que eso significa en la práctica.

Los datos de las bóvedas también se **excluyen de las copias de seguridad de iCloud y del ordenador (Finder)**. Así tus archivos cifrados no acaban en los servidores de Apple ni en ningún ordenador con el que sincronices sin que tú lo decidas, pero tiene una consecuencia real: si tu iPhone se pierde, se rompe o se restablece, las bóvedas desaparecen con él, salvo que tengas una copia de seguridad.

### Copia de seguridad cifrada

En Ajustes → Copia de seguridad, Velcrypt crea un archivo `.velcrypt` con la bóveda abierta, protegido con una **contraseña de copia de seguridad** que tú eliges. Cada bóveda se respalda por separado, así que una copia nunca revela tus otras bóvedas. Tú decides dónde guardarla (Archivos, iCloud Drive o un ordenador) y puedes restaurarla en cualquier iPhone; los elementos se añaden a la bóveda que tengas abierta. Velcrypt nunca recibe el archivo. Como con el patrón, una contraseña de copia de seguridad olvidada no se puede recuperar, y quien tenga el archivo solo puede intentar adivinarla, así que elige una contraseña larga.

## El modelo de amenazas de un vistazo

| Amenaza | ¿Protegido? | Notas |
|---|---|---|
| Alguien revisa tu fototeca de Fotos | Sí | Lo que importas y luego borras de Fotos (incluido «Eliminado») solo está en Velcrypt. |
| Alguien coge tu teléfono desbloqueado y abre Velcrypt | Sí | Necesita tu patrón; uno incorrecto muestra una bóveda vacía. |
| Alguien intenta demostrar que tienes más bóvedas | En gran medida | No hay lista de bóvedas ni mensaje de «patrón incorrecto»; la app no muestra cuántas bóvedas hay. |
| Robo de un iPhone bloqueado | Sí | Protección de datos de iOS más el cifrado AES-256-GCM propio de Velcrypt. |
| Ataque de fuerza bruta al patrón con archivos extraídos | Ralentizado | PBKDF2 con más de 600.000 iteraciones y sal por dispositivo; un patrón largo marca la diferencia. |
| Filtración de una cuenta en la nube | Sí | Los datos de las bóvedas no se suben y se excluyen de las copias de iCloud. Si guardas una copia de seguridad en iCloud Drive, sigue cifrada con tu contraseña. |
| Manipulación de archivos cifrados | Detectada | La autenticación de AES-256-GCM rechaza los datos modificados. |
| Alguien te ve dibujar el patrón | No | Ver más abajo. |
| Malware o un dispositivo con jailbreak | No | Ver más abajo. |
| Teléfono perdido o restablecido | Solo con copia de seguridad | Restaura tu copia de seguridad cifrada en otro iPhone. |
| Patrón o contraseña de copia de seguridad olvidados | No | No es posible recuperarlos. |

<a id="what-velcrypt-does-not-protect-against"></a>
## Contra qué no protege Velcrypt

Toda herramienta de seguridad tiene límites, y conviene que conozcas los de Velcrypt antes de confiar en ella.

- **Mirar por encima del hombro.** Si alguien te ve dibujar el patrón, en persona o con una cámara, puede abrir esa bóveda. Dibújalo donde nadie te vea y piensa en un patrón que no parezca una letra o una forma simple.
- **Que te obliguen a desbloquearla.** Velcrypt no puede impedir que alguien te coaccione para dibujar un patrón. Una bóveda señuelo (con Premium) puede ayudar; un patrón de coacción, previsto para una actualización futura, abriría una bóveda elegida y retiraría en silencio el acceso a las demás.
- **Entregar el teléfono con la bóveda abierta.** Mientras una bóveda está desbloqueada, cualquiera que tenga el teléfono ve lo mismo que tú. Bloquéala antes de dejarle el móvil a nadie.
- **Dispositivos comprometidos o con jailbreak y malware.** Un software capaz de leer la pantalla, registrar toques o inspeccionar la memoria de las apps en un dispositivo comprometido puede burlar cualquier cifrado a nivel de app.
- **Capturas de pantalla o fotos de la pantalla.** Velcrypt no puede impedir que otra cámara fotografíe tu pantalla.
- **Copias en otros lugares.** Importar copia la foto; el original sigue en Fotos hasta que lo borres y después permanece en «Eliminado» unos 30 días. También puede haber copias en Fotos en iCloud, apps de mensajería, el email o el teléfono de otra persona. Sigue la guía para [borrar los originales después de importar](id:delete-original-photos-after-import).
- **Perder el teléfono u olvidar el patrón.** Sin una copia de seguridad, en ambos casos los datos se pierden. No hay frase de recuperación ni restablecimiento, y tampoco para una contraseña de copia de seguridad olvidada. Consulta [olvidé el patrón de mi bóveda](id:forgot-vault-pattern).
- **Que se detecte que usas Velcrypt.** El icono de la app es visible y las herramientas forenses podrían ver que Velcrypt guarda datos cifrados y, aproximadamente, cuántos. Velcrypt no pretende ocultar eso, solo el número de bóvedas y su contenido.
- **Patrones débiles o fáciles de adivinar.** Un patrón corto, o con forma de L, Z o cuadrado, es mucho más fácil de adivinar. Prueba una forma parecida con el [comprobador de solidez de patrones](id:pattern-strength-checker), nunca la real.

## Revisión independiente

Velcrypt se apoya en componentes estándar y ampliamente estudiados y en las bibliotecas criptográficas de la propia Apple, no en algoritmos caseros. Aun así, un buen diseño no es lo mismo que un diseño verificado. Velcrypt **no** ha sido auditada de forma independiente. Una revisión de seguridad externa sería bienvenida y, si se produce, publicaremos aquí el resultado.

## Glosario

- **AES-256-GCM** es un modo de cifrado simétrico que usa una clave de 256 bits y autentica los datos, de modo que cualquier manipulación se detecta al descifrar.
- **PBKDF2** (Password-Based Key Derivation Function 2) es un estándar que convierte un secreto, como una contraseña o un patrón, en una clave repitiendo una función hash muchas veces, lo que hace lento adivinarlo.
- **Sal** es un valor aleatorio que se combina con tu secreto antes de derivar la clave, para que el mismo patrón produzca claves distintas en dispositivos distintos.
- **HKDF** (HMAC-based Key Derivation Function) es una forma estándar de derivar varias claves independientes a partir de una clave sólida.
- **Clave maestra** es la clave aleatoria de 256 bits que pertenece a una bóveda y protege todas las claves de sus archivos.
- **Negación plausible** es la propiedad por la que nada en la app puede demostrar que existen más bóvedas, de modo que puedes mostrar una bóveda de forma creíble sin revelar las demás.
