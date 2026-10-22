---
pageId: password-protect-photos-iphone
title: "Cómo poner contraseña a las fotos en el iPhone"
description: "iOS no permite poner contraseña a una foto concreta. Estas son las opciones reales para proteger fotos con contraseña en el iPhone y qué protege cada una."
h1: "Cómo poner contraseña a las fotos en el iPhone"
navTitle: "Poner contraseña a las fotos"
answer: "iOS no puede poner contraseña a una foto individual. Las opciones integradas más parecidas son ocultarla en el álbum Oculto, bloqueado con Face ID, o añadirla a una nota bloqueada con su propia contraseña de Notas. Para proteger fotos concretas con un secreto que no sea el código del dispositivo, cópialas a una app de bóveda cifrada y borra los originales."
keyFacts:
  - "La app Fotos no tiene ningún ajuste de contraseña por foto ni por álbum."
  - "El álbum Oculto se abre con Face ID, Touch ID o el código del dispositivo, no con una contraseña aparte."
  - "Una nota bloqueada puede usar su propia contraseña de Notas, distinta del código del iPhone."
  - "Añadir una foto a una nota o a una bóveda crea una copia; el original sigue en Fotos hasta que lo borras."
  - "Una app de bóveda cifrada da a fotos concretas un bloqueo independiente del dispositivo."
primaryKeyword: "poner contraseña a fotos iphone"
keywords: ["contraseña para fotos iphone", "proteger fotos con contraseña iphone", "poner clave a fotos iphone", "bloquear fotos individuales iphone", "contraseña álbum fotos iphone"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Por qué iOS no tiene contraseña por foto y tres formas prácticas de poner un bloqueo real a fotos concretas."
category: hiding
order: 4
related: [lock-photos-iphone, hide-photos-iphone, velcrypt-vs-apple-notes-locked-notes, pattern-lock, encryption, delete-original-photos-after-import]
faq:
  - q: "¿Se puede poner contraseña a una sola foto en el iPhone?"
    a: "En la app Fotos, no. iOS solo bloquea los álbumes Oculto y Eliminado, y lo hace con Face ID, Touch ID o el código del dispositivo. Una foto solo puede tener su propia contraseña si mueves una copia a una nota bloqueada o a una app de bóveda."
  - q: "¿Puedo poner una contraseña distinta al álbum Oculto?"
    a: "No. El álbum Oculto siempre usa el Face ID, el Touch ID o el código de tu dispositivo. No existe ningún ajuste para una contraseña propia del álbum Oculto."
  - q: "¿Las fotos de las notas bloqueadas están cifradas?"
    a: "Sí. Apple cifra el contenido de las notas bloqueadas, incluidas las imágenes adjuntas. Si usas una contraseña de Notas aparte y la olvidas, Apple no puede recuperar esas notas."
  - q: "Si pongo contraseña a una foto, ¿desaparece de mi carrete?"
    a: "No automáticamente. Las notas bloqueadas y las apps de bóveda hacen una copia, así que tienes que borrar el original de Fotos y después de Eliminado para que desaparezca."
  - q: "¿Es más segura una contraseña que Face ID para las fotos?"
    a: "Para mantener fuera a quien está físicamente contigo, a menudo sí. Face ID se puede usar mientras duermes o bajo presión, y el bloqueo de Fotos recurre al código del dispositivo, que otras personas pueden conocer. Un secreto aparte evita ambas cosas."
---

Mucha gente busca la forma de poner contraseña a una foto, como harías con un PDF. iOS no lo ofrece. Lo que ofrece son algunas funciones parecidas, y cuál te sirve depende de lo que entiendas por «contraseña» y de quién quieras proteger la foto.

## Por qué no hay contraseña por foto

El modelo de seguridad del iPhone protege todo el dispositivo con un único código. Con el teléfono bloqueado, tus datos están cifrados; una vez desbloqueado, las apps que abres pueden mostrar su contenido. Las fotos no llevan cada una su propio bloqueo. La app Fotos añade una segunda petición solo para dos álbumes del sistema, Oculto y Eliminado, y esa petición usa el mismo Face ID, Touch ID o código que la pantalla de bloqueo.

Así que detrás de la pregunta hay en realidad dos necesidades distintas:

1. **«No la quiero en mi carrete».** Es un problema de visibilidad, y ocultarla lo resuelve.
2. **«Quiero que haga falta un secreto que solo yo sepa».** Es un problema de acceso, y necesita un bloqueo distinto del código de tu dispositivo.

## Opción 1: ocultarla tras Face ID

Si lo que más te preocupa es que alguien vea la foto al pasar el dedo, ocultarla es rápido:

1. Abre la foto en **Fotos**.
2. Toca **Más (•••)** › **Ocultar**.
3. Comprueba que **Usar Face ID** está activado en **Ajustes › Apps › Fotos** (Ajustes › Fotos antes de iOS 18).

La foto queda ahora en el álbum Oculto, detrás de la autenticación biométrica. No es una contraseña en el sentido habitual: cualquiera que conozca el código de tu iPhone puede elegir la alternativa del código y abrir el álbum. Tienes más detalles en [cómo ocultar fotos en el iPhone](id:hide-photos-iphone).

## Opción 2: una nota bloqueada con su propia contraseña

Notas de Apple es la única app integrada que te deja definir una contraseña aparte, distinta del código del dispositivo, para el contenido que elijas. Una nota bloqueada está cifrada, y las fotos adjuntas también.

1. Ve a **Ajustes › Apps › Notas › Contraseña** (Ajustes › Notas › Contraseña en versiones anteriores) y elige usar una contraseña personalizada en lugar del código del iPhone. Añade una pista que tú entiendas y los demás no.
2. En **Notas**, crea una nota nueva. Toca el botón de la cámara y haz una foto directamente en la nota o elige una de tu fototeca.
3. Toca **Más (•••)** › **Bloquear**.
4. Vuelve a Fotos y borra el original; después bórralo también de **Eliminado**.

<!-- TODO verify iOS label -->

Hacer la foto directamente dentro de la nota es el camino más limpio, porque nunca llega a tu carrete.

Ten en cuenta las contrapartidas. Notas se sincroniza con iCloud si usas iCloud para Notas, y Notas no está pensada para ver muchas fotos o videos. Si olvidas la contraseña personalizada, esas notas no se pueden abrir. [Velcrypt frente a las notas bloqueadas de Apple Notas](id:velcrypt-vs-apple-notes-locked-notes) desarrolla la comparación.

## Opción 3: una app de bóveda cifrada

Una bóveda de fotos es una app que guarda su propia copia cifrada de tus imágenes, bloqueada con un secreto que gestiona la app. Es lo más parecido a una contraseña real por foto: tú decides exactamente qué fotos entran, y el código del dispositivo no las abre.

Antes de confiar en una, fíjate en varias cosas:

- **Cifrado real,** no solo una carpeta oculta. La app debe cifrar los archivos en el dispositivo con un cifrado autenticado moderno.
- **Un bloqueo independiente del dispositivo.** Si la bóveda se abre solo con Face ID, hereda el mismo problema de la alternativa del código que el álbum Oculto.
- **Un tratamiento de datos claro.** ¿Sube datos a un servidor? ¿Necesita una cuenta? ¿Qué pasa si olvidas el código?

[¿Son seguras las apps de bóveda de fotos?](id:are-photo-vault-apps-safe) trata estas preguntas en profundidad.

## Comparación de las opciones

| | Ocultar | Nota bloqueada | App de bóveda |
| --- | --- | --- | --- |
| Distinto del código del dispositivo | No | Sí, con una contraseña de Notas personalizada | Normalmente |
| Saca la foto del carrete | Sí, la mueve a Oculto | Solo si borras el original | Solo si borras el original |
| Cómodo para muchas fotos | Sí | No | Sí |
| Funciona bien con videos | Sí | Mal | Normalmente |
| Integrado en iOS | Sí | Sí | No |

## Elegir un secreto que valga la pena

Una contraseña aparte solo sirve si es realmente distinta. Unos cuantos hábitos marcan la diferencia:

- **No reutilices el código del iPhone.** Si las personas de las que te proteges conocen tu código, una contraseña de Notas o un código de bóveda iguales les dan acceso a ambos.
- **Evita lo obvio.** Cumpleaños, aniversarios, secuencias tipo 1234 y el mismo código que tu app del banco son lo primero que cualquiera prueba.
- **Hazlo memorable solo para ti.** En la mayoría de los casos no podrás restablecerlo, así que elige algo que recuerdes dentro de meses sin tener que apuntarlo en un papel dentro de la funda.
- **Cuida tu entorno.** Cualquier secreto se puede leer por encima de tu hombro. Introdúcelo cuando nadie esté mirando la pantalla.

## Una nota sobre los originales

Elijas el bloqueo que elijas, una copia protegida no sirve de nada si sigue habiendo una copia sin proteger. Después de mover una foto a una nota o una bóveda, bórrala de Fotos, elimínala también de Eliminado y piensa en otros sitios donde pueda estar: un álbum compartido de iCloud, un chat, una app de almacenamiento en la nube. La guía para [borrar los originales después de importar](id:delete-original-photos-after-import) explica cada paso.

## Dónde encaja Velcrypt

Velcrypt responde a la segunda necesidad: un secreto que solo tú conoces. En lugar de escribir una contraseña, dibujas un [patrón](id:pattern-lock) en una cuadrícula de 5×5 puntos. Tiene que pasar por al menos seis puntos con al menos un cambio de dirección, y se recomiendan patrones de ocho a doce puntos. Velcrypt no usa Face ID ni Touch ID en absoluto, así que ni el código de tu iPhone ni tu cara pueden abrirlo.

Cada patrón abre su propia bóveda, y las fotos que contiene están [cifradas](id:encryption) con AES-256-GCM mediante claves derivadas de ese patrón. Como todo se queda en el dispositivo y está excluido de las copias de seguridad, no hay forma de restablecer un patrón olvidado. Si prefieres una contraseña que se pueda recuperar, vale la pena sopesar esa limitación con honestidad antes de mover algo importante.
