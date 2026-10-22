---
pageId: duress-password-explained
title: "Contraseña de coacción: qué hace un código de pánico"
description: "Qué es una contraseña de coacción o de pánico, de dónde viene la idea, cómo la usan las apps del móvil y cómo funciona el patrón de coacción de Velcrypt."
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
primaryKeyword: "contraseña de coacción"
keywords: ["contraseña de pánico", "código de coacción", "qué es una contraseña de coacción", "pin de pánico móvil", "patrón de coacción"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Qué son las contraseñas de coacción y los códigos de pánico, de dónde vienen, cómo los usan las apps y cómo funciona el patrón de coacción de Velcrypt."
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
  - q: "¿Qué hace el patrón de coacción de Velcrypt?"
    a: "Al dibujarlo en la pantalla de desbloqueo se abre la bóveda señuelo en la que lo configuraste y, al mismo tiempo, se eliminan en silencio y de forma permanente todas las demás bóvedas de ese iPhone. El desbloqueo tiene el mismo aspecto y tarda lo mismo que uno normal."
  - q: "¿Puedo usar una contraseña de coacción cuando la policía o los agentes de frontera piden acceso?"
    a: "No deberías usarla para borrar datos en esa situación. Las leyes varían según el país, y eliminar datos en respuesta a un requerimiento legítimo puede ser un delito en sí mismo, como la destrucción de pruebas o la obstrucción. Busca asesoramiento jurídico."
---

La mayor parte de la seguridad consiste en mantener fuera a los desconocidos. Una contraseña de coacción sirve para otro momento: cuando alguien está a tu lado obligándote a dejarle entrar. Esta guía explica qué son las contraseñas de coacción, de dónde viene la idea, cómo la usan las apps del móvil y cómo funciona el patrón de coacción de Velcrypt, incluidos sus límites.

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

### Bancos e instalaciones seguras

El personal de los bancos lleva mucho tiempo contando con alarmas silenciosas y señales de coacción: un botón, una palabra clave o un código que alerta a seguridad sin alertar al atracador. El objetivo es el mismo que con las alarmas: ceder en apariencia y pedir ayuda por debajo.

Quizá hayas oído que teclear el PIN del cajero al revés avisa a la policía. Es un mito. La idea se ha debatido e incluso patentado, pero los cajeros no funcionan así por lo general, así que no cuentes con ello.

### Software de cifrado

Las herramientas de cifrado de disco añadieron una idea relacionada: una segunda contraseña que abre un volumen exterior creíble mientras un volumen oculto queda fuera de la vista. No es un código de coacción en sentido estricto, porque no se activa nada, pero comparte el objetivo de que «ceder en parte» sea una opción segura. [La negación plausible, explicada](id:plausible-deniability-explained) cuenta esa historia.

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
