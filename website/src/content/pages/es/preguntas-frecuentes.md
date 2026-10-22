---
pageId: faq
title: "Preguntas frecuentes de Velcrypt: bóvedas y cifrado"
description: "Respuestas a las dudas más comunes sobre Velcrypt: bóvedas con patrón, cifrado, copias de seguridad, privacidad, precios y compatibilidad con iPhone."
h1: "Preguntas frecuentes sobre Velcrypt"
navTitle: "Preguntas frecuentes"
answer: "Velcrypt es una app para iPhone (iOS 17 o posterior) que guarda fotos, vídeos y documentos en bóvedas cifradas en tu dispositivo. Cada bóveda se abre con su propio patrón, no hay cuenta y no se sube nada, lo que también significa que un patrón olvidado no se puede recuperar."
keyFacts:
  - "App para iPhone, iOS 17 o posterior."
  - "Cada patrón abre su propia bóveda; un patrón desconocido abre una vacía."
  - "Cifrado AES-256-GCM, solo en el dispositivo, sin cuenta."
  - "No hay recuperación si olvidas el patrón o pierdes el teléfono."
  - "Versión gratuita más Premium opcional; precios por anunciar."
primaryKeyword: "velcrypt preguntas frecuentes"
keywords: ["dudas velcrypt", "cómo funciona velcrypt", "preguntas app bóveda de fotos", "ayuda patrón velcrypt", "copia de seguridad velcrypt"]
datePublished: 2026-10-21
dateModified: 2026-10-21
schemaType: FAQPage
order: 3
related: [security, pricing, support, pattern-lock, forgot-vault-pattern, hidden-vaults]
faq: []
faqGroups:
  - title: "Lo básico"
    items:
      - q: "¿Qué es Velcrypt?"
        a: "Velcrypt es una app para iPhone que guarda fotos, vídeos y documentos privados en bóvedas cifradas en tu dispositivo. Abres una bóveda dibujando un patrón en una cuadrícula de 5×5 puntos."
      - q: "¿Qué puedo guardar en Velcrypt?"
        a: "Fotos y vídeos de tu fototeca y documentos de la app Archivos. Dentro de una bóveda puedes organizar los elementos en álbumes, ver fotos y vídeos con zoom y deslizando, y mover o exportar elementos de forma segura."
      - q: "¿Importar una foto a Velcrypt la quita de mi fototeca?"
        a: "No. Importar crea una copia cifrada y el original sigue en Fotos hasta que lo borres. Después de borrarlo, vacía también «Eliminado», donde los elementos permanecen unos 30 días si no."
      - q: "¿Velcrypt tiene cámara integrada?"
        a: "No. Velcrypt no incluye cámara. Haces las fotos con la app Cámara del iPhone y luego las importas a una bóveda."
      - q: "¿Velcrypt es lo mismo que el álbum Oculto del iPhone?"
        a: "No. El álbum Oculto solo quita las fotos de la vista principal de la fototeca y se abre con Face ID o con tu código. Velcrypt cifra los archivos con una clave derivada de un patrón independiente que no es el código de tu dispositivo."
  - title: "Patrón y bóvedas"
    items:
      - q: "¿Qué hace falta para que un patrón de Velcrypt sea válido?"
        a: "Una línea continua que pase por al menos 6 puntos de la cuadrícula de 5×5, con al menos un cambio de dirección. Se recomiendan patrones más largos, de 8 a 12 puntos."
      - q: "¿Cómo creo una segunda bóveda?"
        a: "Dibuja un patrón nuevo que no hayas usado antes. Cada patrón es su propia bóveda, así que un patrón nuevo abre una bóveda nueva y vacía que puedes empezar a llenar."
      - q: "¿Por qué mi patrón ha abierto una bóveda vacía?"
        a: "Lo más probable es que hayas dibujado un patrón ligeramente distinto, que Velcrypt trata como otra bóveda. Vuelve a intentarlo despacio; por diseño, la app nunca muestra un mensaje de «patrón incorrecto»."
      - q: "¿Puedo ver una lista de mis bóvedas?"
        a: "No. Velcrypt no guarda ninguna lista de bóvedas, así que nada en la app revela cuántas existen. Tienes que recordar cada patrón tú mismo."
      - q: "¿Qué es una bóveda señuelo?"
        a: "Una bóveda señuelo es una bóveda de aspecto normal con contenido inofensivo que puedes abrir si te presionan, mientras tu bóveda privada sigue detrás de otro patrón. Nada en Velcrypt demuestra que la segunda bóveda exista."
      - q: "¿Qué es el patrón de coacción?"
        a: "El patrón de coacción es una función Premium prevista, próximamente. Al dibujarlo se abriría una bóveda que tú eliges y se retiraría en silencio el acceso a las demás."
      - q: "¿Puedo organizar los elementos dentro de una bóveda?"
        a: "Sí. Cada bóveda puede tener álbumes, y puedes seleccionar varios elementos a la vez y moverlos entre los álbumes de esa bóveda."
      - q: "¿Por qué Velcrypt no usa Face ID ni Touch ID?"
        a: "Por diseño. Una cara o un dedo pueden usarse sin tu consentimiento, por ejemplo mientras duermes o bajo presión, mientras que un patrón solo existe en tu memoria."
  - title: "Seguridad y cifrado"
    items:
      - q: "¿Cómo cifra Velcrypt mis archivos?"
        a: "Con AES-256-GCM mediante Apple CryptoKit. Cada bóveda tiene su propia clave maestra aleatoria de 256 bits y cada archivo recibe su propia clave derivada con HKDF."
      - q: "¿Cómo se convierte mi patrón en una clave?"
        a: "Velcrypt pasa el patrón por PBKDF2-HMAC-SHA512 con al menos 600.000 iteraciones y una sal aleatoria única de tu dispositivo, guardada en el llavero de iOS. El patrón en sí nunca se guarda."
      - q: "¿Velcrypt usa la Protección de datos de iOS?"
        a: "Sí. Los archivos de las bóvedas usan la clase de protección completa, así que iOS los mantiene cifrados siempre que el iPhone está bloqueado, además del cifrado propio de Velcrypt."
      - q: "¿Velcrypt se bloquea automáticamente?"
        a: "Sí. Se bloquea cuando la app pasa a segundo plano, tras un retardo que puedes configurar, y el contenido de la bóveda se oculta en el selector de apps."
      - q: "¿Velcrypt ha pasado una auditoría de seguridad?"
        a: "Todavía no se ha realizado ninguna auditoría independiente. Velcrypt usa algoritmos estándar y CryptoKit de Apple, y una revisión externa sería bienvenida."
      - q: "¿Contra qué no puede protegerte Velcrypt?"
        a: "Contra alguien que te vea dibujar el patrón, que te obliguen a desbloquear, entregar el teléfono con una bóveda abierta, malware en un dispositivo comprometido o con jailbreak, fotos de tu pantalla y copias que sigan existiendo en otros lugares. La página de seguridad detalla todos estos límites."
  - title: "Copias de seguridad y recuperación"
    items:
      - q: "¿Qué pasa si olvido mi patrón de Velcrypt?"
        a: "La bóveda no se puede volver a abrir. Velcrypt nunca guarda tu patrón ni tus claves, así que ni tú ni Velcrypt podéis recuperarla."
      - q: "¿Mi bóveda se incluye en la copia de seguridad de iCloud?"
        a: "No. En la primera versión, los datos de las bóvedas se excluyen de las copias de iCloud para que los archivos cifrados nunca salgan de tu dispositivo."
      - q: "¿Mi bóveda se incluye en una copia de Finder o iTunes?"
        a: "No. En la primera versión, los datos de las bóvedas también se excluyen de las copias de seguridad en el ordenador."
      - q: "¿Qué pasa con mis bóvedas si cambio de iPhone?"
        a: "En la primera versión, las bóvedas no se transfieren a un dispositivo nuevo. Exporta lo que quieras conservar antes de cambiar de teléfono y guárdalo en un lugar de confianza."
      - q: "¿Velcrypt ofrecerá copias de seguridad cifradas?"
        a: "Está prevista una opción de copia de seguridad cifrada dentro de Premium. Aún no tenemos fecha y no prometeremos ninguna hasta que esté lista."
      - q: "¿El soporte de Velcrypt puede restablecer mi patrón?"
        a: "No. El soporte no tiene acceso a tus bóvedas, patrones ni claves, así que no hay nada que restablecer por nuestra parte."
  - title: "Privacidad"
    items:
      - q: "¿Necesito una cuenta para usar Velcrypt?"
        a: "No. No hay registro, ni dirección de email, ni inicio de sesión. Instalas la app y dibujas un patrón."
      - q: "¿Velcrypt sube mis fotos?"
        a: "No. Velcrypt no tiene servidores para tu contenido y los archivos de las bóvedas nunca salen de tu iPhone."
      - q: "¿Velcrypt recopila analítica?"
        a: "Velcrypt no recopila analítica sobre el contenido de las bóvedas. Si en los ajustes de iOS has elegido compartir análisis con los desarrolladores de apps, Apple puede compartir con nosotros datos de fallos y diagnóstico."
      - q: "¿Otras personas pueden saber que uso Velcrypt?"
        a: "El icono de la app se ve en tu pantalla de inicio y las herramientas forenses podrían saber que Velcrypt guarda datos cifrados y, aproximadamente, cuántos. Velcrypt oculta el número de bóvedas y su contenido, no su propia existencia."
      - q: "¿Velcrypt muestra anuncios o vende datos?"
        a: "No. Velcrypt no tiene anuncios ni vende datos. Para empezar, ni siquiera recopila tu contenido."
  - title: "Precios y disponibilidad"
    items:
      - q: "¿Velcrypt es gratis?"
        a: "Hay una versión gratuita y una mejora Premium opcional. Los precios de Premium se anunciarán más adelante."
      - q: "¿Qué incluirá Premium?"
        a: "Las funciones Premium previstas son elementos ilimitados, más bóvedas, el patrón de coacción (próximamente) y una futura copia de seguridad cifrada."
      - q: "¿Dónde puedo conseguir Velcrypt?"
        a: "Velcrypt es una app para iPhone que se distribuye a través del App Store. Consulta el botón del App Store de este sitio para ver la disponibilidad actual."
      - q: "¿Quién gestiona los pagos?"
        a: "Apple gestiona todas las compras a través del App Store. Velcrypt nunca ve tus datos de pago."
  - title: "Compatibilidad"
    items:
      - q: "¿Qué versión de iOS necesita Velcrypt?"
        a: "Velcrypt requiere iOS 17 o posterior en iPhone."
      - q: "¿Hay app de Velcrypt para iPad, Mac o Android?"
        a: "No. Velcrypt es solo una app para iPhone y no existe versión web."
      - q: "¿Velcrypt se sincroniza entre dispositivos?"
        a: "No. No hay sincronización en la nube; cada bóveda vive solo en el iPhone donde se creó."
      - q: "¿Puedo importar documentos desde la app Archivos?"
        a: "Sí. Puedes importar documentos desde la app Archivos a cualquier bóveda, junto con fotos y vídeos."
---

Estas son las preguntas que más se hacen sobre Velcrypt, agrupadas por tema. Cada respuesta se entiende por sí sola, así que puedes ir directamente a la sección que necesites.

Si quieres el panorama técnico completo, la página del [modelo de seguridad](id:security) explica cómo tu patrón se convierte en una clave y cómo se cifran los archivos, además de aquello contra lo que Velcrypt no puede protegerte. Para saber qué incluye cada versión, consulta [precios](id:pricing). Si crees que has perdido el acceso a una bóveda, lee [olvidé el patrón de mi bóveda](id:forgot-vault-pattern) antes de intentar nada más, y recuerda que dibujar un patrón desconocido simplemente abre una bóveda nueva y vacía en lugar de mostrar un error.

¿No encuentras tu pregunta? [Contacta con soporte](id:support) y te ayudaremos en lo que podamos. Podemos responder dudas sobre cómo funciona la app, pero nunca podremos abrir, restablecer ni recuperar una bóveda por ti.
