---
pageId: hide-photos
title: "Ocultar fotos en iPhone en una bóveda cifrada | Velcrypt"
description: "Importa fotos de tu fototeca a una bóveda cifrada de Velcrypt, borra los originales y las copias del álbum Eliminado y organízalas en álbumes."
h1: "Oculta tus fotos en una bóveda cifrada"
navTitle: "Ocultar fotos"
answer: "Velcrypt importa fotos de tu fototeca como copias cifradas dentro de una bóveda. Los originales siguen en Fotos hasta que los borres, así que después de importar debes eliminarlos y vaciar el álbum Eliminado. Dentro de la bóveda puedes ordenar las fotos en álbumes y verlas con zoom y deslizando."
keyFacts:
  - "Importar copia la foto en la bóveda; el original se queda en Fotos."
  - "Después, borra los originales y vacía el álbum Eliminado, donde si no permanecen unos 30 días."
  - "Cada foto importada se cifra con AES-256-GCM en el propio dispositivo."
  - "Organiza las fotos en álbumes dentro de cada bóveda."
  - "Mira las fotos pellizcando para hacer zoom y deslizando entre ellas."
primaryKeyword: "app para ocultar fotos iphone"
keywords: ["bóveda de fotos cifrada iphone", "app álbum de fotos privado", "esconder fotos iphone", "app para bloquear fotos", "bóveda de fotos secreta"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Importa fotos como copias cifradas, borra los originales y el álbum Eliminado y míralas en álbumes con zoom y deslizamiento."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "¿Velcrypt borra la foto de mi carrete?"
    a: "No automáticamente. Al importar se crea una copia cifrada en la bóveda y el original se queda en Fotos. Borra tú el original y elimínalo después también del álbum Eliminado."
  - q: "¿Cuánto tiempo se quedan las fotos borradas en el álbum Eliminado?"
    a: "Unos 30 días, salvo que las borres antes desde el álbum Eliminado. Hasta entonces, cualquiera que pueda abrir ese álbum puede recuperarlas."
  - q: "¿Es diferente ocultar una foto en Velcrypt que en el álbum Oculto del iPhone?"
    a: "Sí. El álbum Oculto sigue formando parte de tu fototeca y puede sincronizarse con Fotos de iCloud. Una foto en Velcrypt se cifra con claves derivadas de tu patrón y no se incluye en las copias de iCloud ni del ordenador."
  - q: "¿Velcrypt sube mis fotos a algún sitio?"
    a: "No. Velcrypt no tiene servidores ni cuentas. Las fotos importadas se cifran y se guardan solo en tu iPhone."
---

El carrete es el lugar más visitado de tu teléfono. Cualquiera a quien se lo dejes para ver una foto puede seguir deslizando y ver todo lo demás. Pasar tus fotos privadas a Velcrypt las saca de ese recorrido y las pone detrás de un patrón y de cifrado.

## Cómo funciona la importación de fotos

Importar es traer una foto de la fototeca de tu iPhone a una bóveda de Velcrypt. Eliges una o varias fotos con el selector de fotos estándar de iOS y Velcrypt guarda una copia cifrada en la bóveda que tienes abierta.

La palabra clave es **copia**. Velcrypt no mueve ni borra nada de tu fototeca. El original se queda exactamente donde estaba hasta que lo elimines. Es una medida de seguridad, porque puedes comprobar que la importación ha funcionado antes de borrar nada, pero significa que hay un paso más que te toca a ti.

Cada foto importada se cifra en el dispositivo con AES-256-GCM, con una clave derivada de la clave maestra de esa bóveda. Cómo se generan esas claves se explica en la página de [cifrado](id:encryption).

## Cómo eliminar los originales

Una foto solo es privada si las demás copias han desaparecido. Después de importar:

1. **Abre Fotos y selecciona los originales** que acabas de importar.
2. **Elimínalos.** Pasan al álbum Eliminado.
3. **Abre el álbum Eliminado.** En iOS 18 y posteriores está en «Utilidades», dentro de la app Fotos; en versiones anteriores aparece cerca del final de la pestaña Álbumes.
4. **Vuelve a eliminarlos desde ahí.** Si no, se pueden recuperar durante unos 30 días.

<!-- TODO verify iOS label -->

Desde iOS 16, los álbumes Eliminado y Oculto se bloquean por defecto con Face ID, Touch ID o tu código, pero cualquiera que conozca el código de tu dispositivo puede abrirlos. Si usas Fotos de iCloud, al borrar una foto en un dispositivo también desaparece de los demás. El proceso completo está en [borrar los originales tras importarlos](id:delete-original-photos-after-import).

Piensa también en las copias que haya en otros sitios: fotos enviadas por chat, álbumes compartidos, adjuntos de correo o un ordenador con el que sincronizaste alguna vez. Velcrypt solo puede proteger lo que está dentro de la bóveda.

## Organizar las fotos en álbumes

Dentro de cada bóveda puedes crear álbumes, por ejemplo «Documentos», «Personal» o «Viaje», y ordenar en ellos tus fotos. La selección múltiple te permite mover muchas fotos a la vez, y puedes pasar elementos de un álbum a otro cuando cambie tu forma de organizarte. Consulta la función de [álbumes](id:albums) para más detalles.

Los álbumes pertenecen a la bóveda en la que están. Otro patrón abre otra bóveda con sus propios álbumes, y así es como las [bóvedas ocultas](id:hidden-vaults) mantienen colecciones distintas completamente separadas.

## Ver las fotos dentro de la bóveda

Las fotos se abren en el visor integrado de Velcrypt. Puedes pellizcar para ampliar los detalles y deslizar a izquierda o derecha para recorrer un álbum. Las fotos se descifran para mostrarlas mientras la bóveda está abierta, y la app se vuelve a bloquear sola cuando sales, según tu ajuste de [bloqueo automático](id:auto-lock).

## Velcrypt frente al álbum Oculto

| | Álbum Oculto del iPhone | Bóveda de Velcrypt |
| --- | --- | --- |
| Dónde está la foto | En tu fototeca | En una bóveda cifrada dentro de la app |
| Cómo se desbloquea | Face ID, Touch ID o código del dispositivo | Tu patrón de Velcrypt |
| iCloud | Se sincroniza con Fotos de iCloud si está activado | No se incluye en las copias de iCloud ni del ordenador |
| Colecciones separadas | Un único álbum Oculto | Una bóveda distinta por patrón |

El álbum Oculto es cómodo y suficiente para mucha gente. Sus límites se explican en [¿es privado el álbum Oculto del iPhone?](id:is-iphone-hidden-album-private), y en [cómo ocultar fotos en el iPhone](id:hide-photos-iphone) tienes un repaso más amplio de todas las opciones.

## Conviene saber

- Velcrypt no tiene cámara integrada. Haz la foto con la app Cámara, impórtala y después borra el original.
- Las fotos pueden llevar datos de ubicación y del dispositivo. Si piensas compartirlas más adelante, [elimina antes los metadatos](id:remove-photo-metadata-iphone).
- En la primera versión no se hace copia de seguridad de la bóveda. Si una foto es irreemplazable, guarda una segunda copia en un lugar de confianza.
