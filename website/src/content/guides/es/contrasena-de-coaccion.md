---
pageId: duress-password-explained
title: "Contraseña de coacción: significado, palabras clave y PIN"
description: "Qué significa una contraseña de coacción, cómo funcionan las palabras clave y los PIN de coacción, el mito del PIN al revés y qué ofrecen iPhone y Android."
h1: "Contraseñas de coacción, códigos de pánico y patrones de coacción, explicados"
navTitle: "Contraseñas de coacción, explicadas"
answer: "Una contraseña de coacción (también llamada contraseña de pánico o código de coacción) es un segundo secreto que solo usas cuando alguien te obliga a desbloquear algo. Parece un desbloqueo normal, pero activa en silencio una acción protectora, como una alarma o el borrado de datos sensibles. En Velcrypt, el patrón de coacción abre una bóveda señuelo y elimina para siempre todas las demás bóvedas del iPhone."
keyFacts:
  - "Una contraseña de coacción parece un desbloqueo normal, pero activa una acción protectora oculta."
  - "La idea viene de las alarmas y la banca, donde un código de coacción activa una alarma silenciosa."
  - "En los móviles, los códigos de coacción suelen abrir contenido inofensivo y borrar o bloquear el resto."
  - "En Velcrypt, el patrón de coacción abre una bóveda señuelo y elimina para siempre todas las demás."
  - "El borrado es irreversible; solo una copia de seguridad hecha antes recupera los datos."
  - "Es una herramienta de seguridad personal, nunca una forma de destruir pruebas ni de desobedecer órdenes legítimas."
  - "El iPhone no tiene un código de coacción integrado y la mayoría de los Android tampoco; GrapheneOS ofrece un PIN de coacción que borra el teléfono."
primaryKeyword: "contraseña de coacción"
keywords: ["contraseña de pánico", "código de coacción", "qué es una contraseña de coacción", "contraseña de coacción significado", "palabra clave de coacción", "ejemplos de palabras clave de coacción", "pin de coacción", "código de coacción alarma", "pin al revés cajero mito", "huella de coacción", "código de coacción móvil", "pin de coacción android", "grapheneos pin de coacción", "pin de pánico móvil", "patrón de coacción"]
datePublished: 2026-10-22
dateModified: 2026-10-31
summary: "Qué son las contraseñas, palabras clave y PIN de coacción, qué ofrecen iPhone y Android y cómo funciona el patrón de coacción de Velcrypt."
category: security
order: 45
related: [duress-pattern, what-is-a-decoy-vault, plausible-deniability-explained, forced-to-unlock-phone, self-destruct-photo-vault, set-up-decoy-vault-and-duress-pattern]
faq:
  - q: "¿Qué es una contraseña de coacción?"
    a: "Una contraseña de coacción es un secreto que solo usas bajo coacción. Para cualquiera que mire, introducirla parece un desbloqueo normal, pero en segundo plano también activa algo protector, como una alarma silenciosa, la apertura de contenido señuelo o el borrado de datos sensibles."
  - q: "¿Una contraseña de pánico es lo mismo que un código de coacción?"
    a: "Sí, en el uso cotidiano significan lo mismo. «Código de coacción» es habitual en los sistemas de alarma; «contraseña de pánico» o «PIN de coacción», en apps y dispositivos. Velcrypt usa un patrón en lugar de un PIN, así que llama a su versión patrón de coacción."
  - q: "¿Si tecleo el PIN al revés en un cajero se avisa a la policía?"
    a: "No. La historia del «PIN invertido» es un mito muy extendido. Los bancos han estudiado e incluso patentado ideas parecidas, pero los cajeros no funcionan así por lo general. No te fíes de ello."
  - q: "¿Qué es una palabra clave de coacción?"
    a: "Es una palabra o frase de apariencia corriente, acordada de antemano, que avisa a alguien de que estás en apuros sin que lo note la persona que te presiona. La usan lugares de trabajo, locales (como el programa británico «Ask for Angela») y familias, cada uno con una respuesta acordada."
  - q: "¿El iPhone o Android tienen un PIN de coacción integrado?"
    a: "El iPhone no tiene código de coacción. Mantener pulsados el botón lateral y un botón de volumen solo desactiva Face ID hasta que se introduce el código. La mayoría de los Android tampoco lo tienen, aunque el modo de bloqueo desactiva la biometría. GrapheneOS ofrece un PIN de coacción que borra todo el teléfono."
  - q: "¿Qué hace el patrón de coacción de Velcrypt?"
    a: "Al dibujarlo en la pantalla de desbloqueo se abre la bóveda señuelo en la que lo configuraste y, al mismo tiempo, se eliminan en silencio y de forma permanente todas las demás bóvedas de ese iPhone. El desbloqueo tiene el mismo aspecto y tarda lo mismo que uno normal."
  - q: "¿Puedo usar una contraseña de coacción cuando la policía o los agentes de frontera piden acceso?"
    a: "No deberías usarla para borrar datos en esa situación. Las leyes varían según el país, y eliminar datos en respuesta a un requerimiento legítimo puede ser un delito en sí mismo, como la destrucción de pruebas o la obstrucción. Busca asesoramiento jurídico."
---

La mayor parte de la seguridad consiste en mantener fuera a los desconocidos. Una contraseña de coacción sirve para otro momento: cuando alguien está a tu lado obligándote a dejarle entrar. Esta guía explica qué son las contraseñas de coacción, de dónde viene la idea, cómo funcionan las palabras clave de coacción, qué ofrecen iPhone y Android, cómo la usan las apps del móvil y cómo funciona el patrón de coacción de Velcrypt, incluidos sus límites.

## Qué es una contraseña de coacción

Una **contraseña de coacción** es un segundo secreto que solo usas cuando te están coaccionando. Para la persona que mira, introducirla parece exactamente un desbloqueo normal. Entre bastidores, hace algo más para protegerte a ti o a tus datos.

Verás varios nombres para la misma idea:

- **Código de coacción**, el término habitual en sistemas de alarma e instalaciones seguras.
- **Contraseña de pánico** o **PIN de pánico**, frecuentes en apps.
- **PIN de coacción** o **patrón de coacción**, según cómo se desbloquee el dispositivo.

Lo que la define es que la respuesta es **silenciosa**. Si introducir el código hiciera sonar una sirena, mostrara un aviso o provocara un cambio visible, te pondría en más peligro, porque la persona que te obliga sabría que te has resistido.

## De dónde viene la idea

### Sistemas de alarma

Muchas centralitas de alarma de casas y negocios admiten un código de coacción. Lo introduces en el teclado y la alarma se desactiva como siempre, así que un intruso que te haya obligado a desconectarla no ve nada raro. Al mismo tiempo, la centralita avisa discretamente a la central receptora de que estás en apuros.

Los códigos de coacción de las alarmas suelen funcionar solo con monitorización profesional, e introducir uno solicita una respuesta de emergencia real, aunque sea de prueba. Las empresas de alarmas y la policía también advierten que un código demasiado parecido al normal provoca falsas alarmas, así que elige uno que no puedas confundir.

### Bancos e instalaciones seguras

El personal de los bancos lleva mucho tiempo contando con alarmas silenciosas y señales de coacción: un botón, una palabra clave o un código que alerta a seguridad sin alertar al atracador. El objetivo es el mismo que con las alarmas: ceder en apariencia y pedir ayuda por debajo.

Quizá hayas oído que teclear el PIN del cajero al revés avisa a la policía. Es un mito. La idea viene de una patente de los años noventa para un «PIN de emergencia», pero un informe de 2010 del personal de la Comisión Federal de Comercio de EE. UU. (FTC) concluyó que ese sistema nunca se había instalado en cajeros, y los verificadores de datos han desmentido el bulo muchas veces. Si te atracan en un cajero, entrega lo que te pidan si eso te mantiene a salvo, y después llama a la policía y a tu banco.

### Software de cifrado

Las herramientas de cifrado de disco añadieron una idea relacionada: una segunda contraseña que abre un volumen exterior creíble mientras un volumen oculto queda fuera de la vista. No es un código de coacción en sentido estricto, porque no se activa nada, pero comparte el objetivo de que «ceder en parte» sea una opción segura. [La negación plausible, explicada](id:plausible-deniability-explained) cuenta esa historia.

## Palabras clave de coacción: la versión hablada

Una **palabra clave de coacción** es una contraseña de coacción que se dice en lugar de teclearse: una palabra o frase de apariencia corriente, acordada de antemano, que significa «no estoy bien, pero no puedo decirlo». Quien la oye por casualidad solo escucha una charla normal. Quien conoce el código escucha una petición de ayuda, y ya sabe qué hacer.

Dónde se usan:

- **Lugares de trabajo y equipos de seguridad.** Bancos, tiendas, hospitales y vigilantes suelen acordar una frase que se puede decir por teléfono o por radio delante de un agresor, para que un compañero pida ayuda sin que nadie lo note.
- **Programas de seguridad pública.** En el Reino Unido, muchos bares y locales participan en «Ask for Angela»: quien se siente inseguro en una cita o una noche de fiesta pregunta al personal por «Angela», y el personal formado le ayuda con discreción, por ejemplo llamando a un taxi. Este código es público a propósito, para que los locales puedan anunciarlo con carteles.
- **Familias y amigos.** Algunas familias acuerdan una palabra que un hijo o un familiar puede escribir o decir en una llamada para indicar «ven a buscarme» o «pide ayuda» sin dar explicaciones. Muchas familias usan además una *palabra de seguridad* para comprobar que una llamada angustiada viene de verdad de un familiar y no de un estafador que clona voces. Es una palabra de verificación más que un código de coacción, pero se aplican las mismas reglas.

Ejemplos del *tipo* de frase que funciona (inventa la tuya en lugar de copiarlas):

- preguntar por una persona que no existe, como «¿Está Angela esta noche?»;
- una pregunta sobre una mascota, un familiar o una tarea que quien escucha sabe que es falsa;
- un detalle extraño en una frase normal, como un color o una comida que nunca mencionas.

Una buena palabra clave de coacción suena natural en la conversación en la que la usarías, nunca sale por casualidad, va unida a una respuesta acordada (quién llama a quién y qué pasa después) y se repasa de vez en cuando para que nadie la olvide. Mantenla en privado: un código publicado en internet, o que conoce la persona que te da miedo, deja de funcionar.

## PIN de coacción en el móvil: qué ofrecen iPhone y Android

Quien busca un «código de coacción para el móvil», un «PIN de coacción» o una «huella de coacción» suele querer saber si su teléfono trae uno de serie. La respuesta corta: el iPhone no, y la mayoría de los Android tampoco.

### iPhone

- **Sin código de coacción.** iOS no tiene un segundo código que abra un señuelo, envíe una alerta o borre el teléfono.
- **Emergencia SOS desactiva Face ID.** Mantener pulsados el botón lateral y cualquiera de los botones de volumen durante unos dos segundos abre la pantalla de apagado y Emergencia SOS. <!-- TODO verify iOS label --> A partir de ahí, Face ID y Touch ID quedan desactivados hasta que se introduce el código, así que nadie puede desbloquear el móvil acercándolo a tu cara. Toca Cancelar si no quieres llamar; según tus ajustes, mantener pulsado más tiempo puede iniciar una llamada de emergencia. [Qué hacer si alguien te obliga a desbloquear el móvil](id:forced-to-unlock-phone) lo explica con más detalle.
- **Borrar datos no es un código de coacción.** La opción Borrar datos de Ajustes → Face ID y código <!-- TODO verify iOS label --> borra el iPhone tras 10 intentos fallidos de código. Protege frente a quien intenta adivinarlo, no frente a alguien que está a tu lado exigiéndote el código.
- **Las funciones de coacción viven dentro de las apps.** Como iOS no tiene un PIN de coacción para todo el sistema, cualquier función de coacción en el iPhone pertenece a una sola app y solo alcanza sus datos. El patrón de coacción de Velcrypt, más abajo, es un ejemplo.

### Android

- **Modo de bloqueo.** En Android 9 y posteriores, muchos móviles ofrecen el modo de bloqueo («Lockdown») en el menú de apagado; en algunas marcas hay que activarlo antes en los ajustes. <!-- TODO verify: Android label and Samsung One UI changes --> Bloquea el teléfono y desactiva el desbloqueo con huella y con la cara hasta que se introduce el PIN, el patrón o la contraseña.
- **Sin PIN de coacción en Android estándar.** El Android que traen los móviles de Google, Samsung y la mayoría de los fabricantes no incluye un PIN de coacción. <!-- TODO verify -->
- **PIN de coacción de GrapheneOS.** GrapheneOS, un sistema operativo centrado en la seguridad para móviles Google Pixel compatibles, tiene un PIN y una contraseña de coacción. Introducir cualquiera de los dos en cualquier lugar donde el teléfono pida sus credenciales borra todo el dispositivo, eSIM incluidas, al instante y de forma irreversible. Protege los datos, pero después es evidente que el móvil se ha restablecido.
- **Apps de terceros.** Algunas apps Android de código abierto, como Duress y Wasted en F-Droid, vigilan si se introduce una contraseña de coacción en la pantalla de bloqueo y entonces bloquean o borran el teléfono, usando permisos de accesibilidad y de administrador del dispositivo. Su fiabilidad depende del móvil y de la versión de Android. <!-- TODO verify -->

### Qué significa «huella de coacción»

Una **huella de coacción** es un dedo concreto registrado como alarma silenciosa. Algunos sistemas biométricos de control de acceso lo admiten: escaneas ese dedo, la puerta se abre como siempre y se envía una alarma de coacción a seguridad. Los móviles convencionales no lo ofrecen. <!-- TODO verify --> En un teléfono, la biometría es justamente el punto débil bajo coacción, porque alguien puede acercarte el móvil a la cara o presionar tu dedo contra el sensor. Por eso importa desactivar Face ID rápido, y por eso Velcrypt [no tiene desbloqueo con Face ID, por diseño](id:pattern-lock-vs-pin-vs-face-id).

## Cómo implementan las apps del móvil los códigos de coacción

En los móviles no suele haber una central a la que avisar, así que los códigos de coacción protegen los datos. Los enfoques habituales son:

1. **Abrir contenido inofensivo.** El código de coacción abre un señuelo: un segundo espacio de aspecto corriente. Se parece mucho a una [bóveda señuelo](id:what-is-a-decoy-vault) y, por sí solo, no borra nada.
2. **Abrir contenido inofensivo y borrar el resto.** El código de coacción abre el señuelo y, al mismo tiempo, borra los datos sensibles. Es la forma más fuerte, y no se puede deshacer.
3. **Borrarlo todo.** Algunos sistemas centrados en la seguridad ofrecen un PIN de coacción que borra el dispositivo o la app por completo. Protege los datos, pero deja claro que ha pasado algo.

Lo que separa una buena implementación de una mala es sobre todo **lo que se puede observar**:

- ¿El desbloqueo tiene el mismo aspecto y tarda lo mismo que uno normal?
- ¿Hay algún ajuste, indicador o archivo que revele que hay un código de coacción configurado?
- ¿Cambia algo en pantalla después?

Si cualquiera de estas respuestas delata el código, puede empeorar una situación ya tensa.

## Cómo funciona el patrón de coacción de Velcrypt

Velcrypt se desbloquea con un patrón dibujado en una cuadrícula de 5×5, y cada patrón abre su propia bóveda. Su [patrón de coacción](id:duress-pattern) es una función Premium construida sobre ese modelo:

- **Lo configuras desde dentro de una bóveda señuelo**, en Ajustes → Patrón de coacción. Un señuelo es una segunda bóveda con contenido inofensivo y creíble. Las bóvedas a partir de la primera requieren Premium.
- **Dibujas dos veces un patrón aparte y confirmas.** No puede ser un patrón que ya abra una bóveda.
- **En la pantalla de desbloqueo, dibujar el patrón de coacción abre el señuelo** y elimina en silencio y de forma permanente todas las demás bóvedas de ese iPhone.
- **Nada en pantalla muestra que haya ocurrido.** El desbloqueo tiene el mismo aspecto y tarda lo mismo que uno normal.
- **La app nunca muestra si hay un patrón de coacción configurado.** En el llavero de iOS siempre existe un registro cifrado de tamaño fijo; cuando no hay patrón de coacción, contiene bytes aleatorios.
- **Uno por iPhone.** Configurar un patrón de coacción nuevo sustituye al anterior. Para desactivarlo hay que dibujarlo, y desactivarlo no elimina nada.
- **Sigue funcionando aunque Premium caduque.** Solo configurarlo requiere Premium.

Si lo configuras en la única bóveda del teléfono, no hay nada más que eliminar, y Velcrypt te avisa de ello.

## Límites, con honestidad

### El borrado es permanente

Las bóvedas eliminadas no se pueden recuperar desde el teléfono. Los datos de las bóvedas se excluyen de las copias de seguridad de iCloud y del ordenador, así que la única vía de vuelta es una copia de seguridad cifrada que hayas hecho antes en Ajustes → Copia de seguridad. La copia de seguridad es gratuita, y el patrón de coacción no toca las copias guardadas fuera de la app. La [página de seguridad](id:security#encrypted-backup) explica cómo se protegen las copias.

### Eliminado no es lo mismo que borrado físicamente

El almacenamiento flash no garantiza que los bytes eliminados se borren físicamente de inmediato. Velcrypt se apoya en que los datos de las bóvedas están cifrados con AES-256-GCM y en que las claves se eliminan junto con los directorios de las bóvedas, así que los datos que queden son texto cifrado sin clave.

### Solo alcanza a las bóvedas de Velcrypt

Las copias en tu fototeca, en Eliminado, en iCloud, en chats o en el teléfono de otra persona no se tocan. [Borra los originales después de importarlos](id:delete-original-photos-after-import).

### No puede deshacer lo que alguien vio

Si alguien te ha visto o grabado dibujando tu patrón real, un patrón de coacción no cambia lo que sabe.

## Responsabilidad: para qué no es una contraseña de coacción

Una contraseña de coacción es una herramienta de seguridad personal. Está pensada para momentos como un robo, una amenaza o una pareja controladora que exige ver tu teléfono.

**No** es una forma de destruir pruebas ni de eludir un requerimiento legítimo de la policía, los agentes de frontera o un tribunal. Las leyes varían según el país, y eliminar datos en respuesta a un requerimiento legal puede ser un delito en sí mismo, por ejemplo destrucción de pruebas u obstrucción a una investigación. Si te enfrentas a un requerimiento legal, o crees que te enfrentarás a uno, busca asesoramiento jurídico. La [guía sobre fronteras](id:phone-privacy-border-crossing) trata los viajes en concreto.

## ¿Deberías usar una?

Un patrón de coacción tiene sentido si te imaginas que te pueden presionar para desbloquear tus bóvedas y prefieres perder esos archivos antes que dejar que los vean. Tiene menos sentido si los archivos son irreemplazables y no tienes copia de seguridad, o si te costaría recordar bajo estrés qué patrón hace qué.

Si decides usar uno, empieza por una copia de seguridad, crea un señuelo creíble y lee [cómo configurar una bóveda señuelo y un patrón de coacción](id:set-up-decoy-vault-and-duress-pattern). Si te lo planteas por una persona concreta, [qué hacer si alguien te obliga a desbloquear el móvil](id:forced-to-unlock-phone) aborda el panorama completo de seguridad. Los planes Premium están en la [página de precios](id:pricing).
