---
pageId: hide-videos
title: "Ocultar vídeos en iPhone en una bóveda cifrada | Velcrypt"
description: "Importa vídeos a una bóveda cifrada de Velcrypt, reprodúcelos dentro de la app, borra los originales de Fotos y calcula el espacio que ocupan."
h1: "Oculta tus vídeos en una bóveda cifrada"
navTitle: "Ocultar vídeos"
answer: "Velcrypt importa vídeos de tu fototeca como copias cifradas y los reproduce dentro de la bóveda. Los originales siguen en Fotos hasta que los borres y vacíes el álbum Eliminado. Los vídeos ocupan mucho, así que comprueba el espacio libre antes de importar muchos a la vez."
keyFacts:
  - "Importar copia el vídeo en la bóveda; el original se queda en Fotos."
  - "Los vídeos se reproducen dentro de Velcrypt, sin salir de la bóveda."
  - "Cada vídeo se cifra en el dispositivo con AES-256-GCM."
  - "Hasta que borres el original, el vídeo ocupa espacio por duplicado de forma temporal."
  - "El álbum Eliminado guarda los vídeos borrados unos 30 días, salvo que lo vacíes."
primaryKeyword: "app para ocultar vídeos iphone"
keywords: ["bóveda de vídeos cifrada iphone", "app de vídeos privados iphone", "bloquear vídeos iphone", "bóveda de vídeos secreta", "esconder vídeos del carrete"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Importa vídeos como copias cifradas, reprodúcelos dentro de la bóveda y borra los originales sin quedarte sin espacio."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "¿Puedo ver los vídeos sin exportarlos de Velcrypt?"
    a: "Sí. Los vídeos se reproducen en el visor de Velcrypt mientras la bóveda está abierta. No hace falta exportarlos a la app Fotos para verlos."
  - q: "¿Por qué ha bajado mi espacio libre después de importar vídeos?"
    a: "Importar crea una copia, así que hasta que borres el original de Fotos y vacíes el álbum Eliminado, el vídeo existe dos veces. Cuando el original desaparece, se libera el espacio."
  - q: "¿Se incluyen los vídeos de mi bóveda en la copia de seguridad de iCloud?"
    a: "No. Los datos de la bóveda quedan fuera de las copias de iCloud y del ordenador. Los vídeos de la bóveda existen solo en tu iPhone, salvo que crees una copia de seguridad cifrada de Velcrypt."
  - q: "¿Los vídeos de Velcrypt se sincronizan con mis otros dispositivos?"
    a: "No. Velcrypt no tiene sincronización en la nube y solo funciona en iPhone. Un vídeo de tu bóveda se queda en el teléfono en el que lo importaste."
---

Los vídeos suelen ser más personales que las fotos, y es igual de fácil toparse con ellos en el carrete. Velcrypt te permite pasarlos a una bóveda cifrada y verlos allí, sin que la app Fotos vuelva a intervenir.

## Cómo funciona la importación de vídeos

Importar un vídeo funciona igual que [importar fotos](id:hide-photos). Eliges uno o varios vídeos con el selector de iOS y Velcrypt guarda una copia cifrada en la bóveda que tienes abierta. Los archivos grandes tardan algo más, porque todo el vídeo se cifra en el dispositivo antes de guardarse.

Igual que con las fotos, la importación es una **copia**. Tu vídeo original se queda en la fototeca hasta que lo borres. Así puedes comprobar que se reproduce bien en la bóveda antes de eliminar nada.

Cada vídeo se cifra con AES-256-GCM con su propia clave, derivada de la clave maestra de la bóveda. La cadena de claves completa está en la página de [cifrado](id:encryption).

## Reproducción dentro de la bóveda

Velcrypt tiene un reproductor integrado, así que puedes ver los vídeos sin exportarlos. La reproducción ocurre mientras la bóveda está abierta; cuando sales de la app, Velcrypt se bloquea según tu ajuste de [bloqueo automático](id:auto-lock) y el selector de apps no muestra ninguna vista previa de lo que se estaba reproduciendo.

Puedes guardar los vídeos junto a fotos relacionadas en el mismo [álbum](id:albums) y recorrerlos deslizando en el visor.

## Cómo eliminar los originales

Un vídeo oculto solo es privado cuando el original ha desaparecido:

1. **Abre Fotos y selecciona los vídeos** que acabas de importar.
2. **Elimínalos.** Pasan al álbum Eliminado.
3. **Abre el álbum Eliminado.** En iOS 18 y posteriores está en «Utilidades», dentro de la app Fotos; en versiones anteriores aparece cerca del final de la pestaña Álbumes.
4. **Elimínalos también desde ahí.** Si no, se pueden recuperar durante unos 30 días.

<!-- TODO verify iOS label -->

Si usas Fotos de iCloud, al borrar un vídeo en tu iPhone también se borra de los demás dispositivos que usan la misma fototeca. La guía sobre [borrar los originales tras importarlos](id:delete-original-photos-after-import) explica los detalles, incluidos los álbumes compartidos y otros lugares donde suelen quedar copias.

## Una nota sobre el espacio de almacenamiento

Los archivos de vídeo son grandes. Unos minutos de grabación en alta resolución pueden ocupar varios gigabytes, y la bóveda guarda aproximadamente la misma cantidad de datos que el original.

Ten en cuenta tres cosas:

- **Espacio doble temporal.** Entre la importación y el borrado del original, el vídeo existe dos veces. Importa por tandas si tu teléfono está casi lleno.
- **El álbum Eliminado también cuenta.** Los vídeos borrados siguen ocupando espacio hasta que vacías el álbum Eliminado o pasan los unos 30 días.
- **Compruébalo antes de importar mucho.** En Ajustes › General › Almacenamiento del iPhone ves cuánto espacio libre tienes y cuánto usa Velcrypt.

| Paso | Espacio ocupado |
| --- | --- |
| Antes de importar | Solo el original |
| Después de importar | Original + copia cifrada |
| Después de borrar el original | Copia cifrada + elemento en Eliminado |
| Después de vaciar Eliminado | Solo la copia cifrada |

## Conviene saber

- Con la cámara de la bóveda, los vídeos nuevos van directamente a la bóveda y nunca llegan a tu fototeca. Si grabas con la app Cámara, importa el vídeo y después borra el original.
- Patrones distintos abren [bóvedas ocultas](id:hidden-vaults) distintas. Si algunos vídeos no deberían estar nunca junto a otros, dales una bóveda propia en lugar de solo un álbum aparte.
- La bóveda no se incluye en las copias de iCloud ni del ordenador. Para vídeos irreemplazables, crea una copia de seguridad cifrada en Ajustes → Copia de seguridad y guárdala fuera del iPhone.
- Si alguna vez enviaste un vídeo por chat o lo publicaste en un álbum compartido, esas copias están fuera de la bóveda. La guía sobre [cómo guardar fotos íntimas de forma segura](id:store-intimate-photos-safely-iphone) trata ese riesgo con más detalle.

Para un repaso más amplio de todas las opciones, tanto de iOS como de terceros, consulta [cómo ocultar vídeos en el iPhone](id:hide-videos-iphone).
