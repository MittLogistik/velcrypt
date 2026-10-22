---
pageId: self-destruct-photo-vault
title: "Bóveda de fotos con autodestrucción en iPhone"
description: "Cómo funciona una bóveda de fotos que se borra sola en el iPhone: borrado por intentos fallidos o patrón de coacción, sus contrapartidas y las copias."
h1: "Bóvedas de fotos con autodestrucción en el iPhone: cómo funcionan y qué te cuestan"
navTitle: "Bóvedas con autodestrucción"
answer: "Una bóveda de fotos con autodestrucción borra su contenido cuando se cumple un disparador. Los dos más comunes son demasiados intentos fallidos y un código de coacción especial. El borrado por intentos fallidos lo puede activar cualquiera; un código de coacción, solo tú. Velcrypt usa un patrón de coacción que abre una bóveda señuelo y elimina para siempre las demás. No se puede deshacer: ten una copia."
keyFacts:
  - "Las funciones de autodestrucción borran el contenido de la bóveda al cumplirse un disparador; no se puede deshacer."
  - "El borrado por intentos fallidos lo puede activar cualquiera que se equivoque, incluido un niño o un atacante."
  - "Un código de coacción solo lo activas tú, de forma deliberada, y puede ser silencioso."
  - "El propio iPhone puede borrar todos los datos tras 10 intentos fallidos de código, si lo activas."
  - "El patrón de coacción de Velcrypt abre una bóveda señuelo y elimina para siempre todas las demás (Premium)."
  - "Una copia de seguridad cifrada hecha antes es la única vía de vuelta tras una autodestrucción."
primaryKeyword: "bóveda de fotos autodestrucción iphone"
keywords: ["bóveda de fotos que se borra sola", "app bóveda autodestrucción", "bóveda de fotos borrar tras intentos fallidos", "bóveda de fotos borrado automático", "borrar fotos en caso de pánico iphone"]
datePublished: 2026-10-22
dateModified: 2026-10-22
summary: "Borrado por intentos fallidos frente a patrón de coacción, el coste real del borrado irreversible y cómo tener una copia segura antes de confiar en ellos."
category: choosing
order: 24
related: [duress-pattern, duress-password-explained, set-up-decoy-vault-and-duress-pattern, what-is-a-decoy-vault, forgot-vault-pattern, are-photo-vault-apps-safe]
faq:
  - q: "¿Hay alguna bóveda de fotos para iPhone que se borre sola?"
    a: "Sí. Algunas apps de bóveda borran su contenido tras un número de intentos fallidos, y otras ofrecen un código de coacción o de pánico. Velcrypt tiene un patrón de coacción (Premium) que abre una bóveda señuelo y elimina para siempre todas las demás bóvedas del iPhone."
  - q: "¿Velcrypt borra las bóvedas tras demasiados patrones incorrectos?"
    a: "No. En Velcrypt, un patrón que no ha visto antes simplemente abre una bóveda nueva y vacía, así que no hay ningún «intento fallido» que contar. Solo se elimina algo cuando alguien dibuja el patrón de coacción que configuraste."
  - q: "¿Puedo recuperar las fotos después de que una bóveda se autodestruya?"
    a: "Desde el teléfono, no. En Velcrypt, la única vía es una copia de seguridad cifrada que hayas hecho antes en Ajustes → Copia de seguridad y guardado fuera de la app. El patrón de coacción no toca las copias guardadas en otro sitio."
  - q: "¿Una función de autodestrucción equivale a un borrado seguro?"
    a: "No exactamente. El almacenamiento flash no garantiza que los bytes eliminados se borren físicamente. Los datos de las bóvedas de Velcrypt están cifrados con AES-256-GCM y las claves se eliminan con las bóvedas, así que los datos que queden son texto cifrado ilegible."
  - q: "¿Puedo usar una bóveda con autodestrucción si la policía pide ver mi móvil?"
    a: "No. No uses ninguna función de borrado para destruir pruebas ni para desobedecer un requerimiento legítimo. Las leyes varían según el país, y eliminar datos ante un requerimiento legal puede ser un delito en sí mismo. Busca asesoramiento jurídico."
---

«Una bóveda que se borra sola» suena a la protección definitiva. A veces lo es. Pero una función de autodestrucción también es la única función de una app de bóveda que puede costarte todo en un segundo. Esta guía explica cómo funcionan los enfoques habituales, en qué es bueno y malo cada uno y cómo usarlos sin perder archivos que querías conservar.

## Qué significa «autodestrucción» en una bóveda de fotos

Una función de autodestrucción borra parte o todo el contenido de una bóveda cuando se cumple un disparador. En el iPhone verás sobre todo tres tipos:

1. **Borrado por intentos fallidos:** tras un número determinado de PIN o contraseñas incorrectos, la app borra su contenido.
2. **Código de coacción o de pánico:** un código especial que, al introducirlo, abre contenido inofensivo y borra el resto. [Las contraseñas de coacción, explicadas](id:duress-password-explained) cuenta el contexto.
3. **Borrado a nivel de dispositivo:** iOS puede borrar el iPhone entero tras 10 intentos fallidos de código (Ajustes › Face ID y código › Borrar datos), y Buscar puede borrar a distancia un móvil perdido.

Resuelven problemas distintos y fallan de maneras distintas.

## Borrado por intentos fallidos

La idea es sencilla: si alguien no para de probar, se borra todo antes de que acierte.

**Lo que hace bien**

- Funciona aunque no estés presente, por ejemplo si te roban el móvil.
- Pone un límite firme a adivinar PIN cortos.

**Dónde se queda corto**

- **Cualquiera puede activarlo.** Un niño jugando con tu móvil, un amigo que se hace el gracioso o un atacante que prefiere destruir tus archivos antes que rendirse pueden activarlo a propósito o por accidente.
- **Se nota.** Tras un borrado, la bóveda queda claramente vacía o reiniciada, lo que le dice a la otra persona que ha pasado algo.
- **Protege frente a adivinar, no frente a la coacción.** Si alguien te obliga a introducir el código correcto, el contador de intentos fallidos nunca entra en juego.

También conviene comprobar cómo cuenta la app los intentos: si el contador sobrevive a reiniciar la app y si de verdad borra los datos o solo te bloquea.

## Códigos y patrones de coacción

Un código de coacción lo activas tú de forma deliberada, normalmente cuando alguien te obliga a desbloquear la app. Las mejores implementaciones abren un señuelo creíble y borran en silencio el contenido sensible que hay detrás.

**Lo que hace bien**

- **Solo tú puedes activarlo.** Nadie lo dispara por adivinar.
- **Puede ser silencioso.** Si está bien hecho, nada en pantalla muestra que se haya eliminado algo.
- **Está hecho para la coacción,** justo la situación que un contador de intentos fallidos no puede resolver.

**Dónde se queda corto**

- **Tienes que poder usarlo.** Si alguien te quita el móvil cuando ya está desbloqueado, o te ve dibujar tu secreto real, no ayuda.
- **Tienes que recordarlo bajo estrés,** sin confundirlo con tu secreto real.
- **Es igual de irreversible** que cualquier otro borrado.

## Cómo lo hace Velcrypt

Velcrypt **no tiene borrado por intentos fallidos**, a propósito. Cada patrón dibujado en la cuadrícula de 5×5 abre su propia bóveda, y un patrón que la app no ha visto simplemente abre una bóveda nueva y vacía, sin error. No hay ningún «patrón incorrecto» que contar, que es lo que hace negables las [bóvedas ocultas](id:hidden-vaults), y además significa que nadie puede borrar tus bóvedas solo por equivocarse.

En su lugar, Velcrypt tiene un [patrón de coacción](id:duress-pattern), que forma parte de Premium:

- Lo configuras en Ajustes → Patrón de coacción, desde dentro de una [bóveda señuelo](id:what-is-a-decoy-vault) con contenido inofensivo.
- Dibujas dos veces un patrón aparte y confirmas. No puede ser un patrón que ya abra una bóveda.
- En la pantalla de desbloqueo, al dibujarlo se abre la bóveda señuelo y se eliminan en silencio y de forma permanente todas las demás bóvedas de ese iPhone. El desbloqueo tiene el mismo aspecto y tarda lo mismo que uno normal.
- La app nunca muestra si hay un patrón de coacción configurado. Hay uno por iPhone; uno nuevo sustituye al anterior. Para desactivarlo hay que dibujarlo, y eso no elimina nada.
- Sigue funcionando aunque Premium caduque; solo configurarlo requiere Premium.
- Si lo configuras en la única bóveda del teléfono, no hay nada más que eliminar, y la app te avisa.

## Comparación de los enfoques

| | Borrado por intentos fallidos | Código o patrón de coacción | «Borrar datos» del iPhone |
|---|---|---|---|
| Quién puede activarlo | Cualquiera que se equivoque suficientes veces | Solo quien conoce el secreto de coacción | Cualquiera que falle el código 10 veces |
| Pensado para | Adivinar, robo | Que te obliguen a desbloquear | Adivinar, robo |
| Se nota después | Normalmente | Puede ser silencioso | Sí, el móvil queda restablecido |
| Qué borra | El contenido de la app | Depende de la app; en Velcrypt, todas las bóvedas menos el señuelo | Todo lo que hay en el iPhone |
| Reversible | Solo desde una copia | Solo desde una copia | Solo desde una copia |

## La contrapartida inevitable: es permanente

Toda función de autodestrucción cambia recuperabilidad por protección. Antes de activar una, sé sincero contigo sobre tres cosas.

### Necesitas una copia de seguridad en otro sitio

Las bóvedas de Velcrypt se excluyen de las copias de seguridad de iCloud y del ordenador, así que una bóveda eliminada desaparece del teléfono. La única vía de vuelta es una **copia de seguridad cifrada que hayas hecho antes**. En Velcrypt, Ajustes → Copia de seguridad crea un archivo .velcrypt de la bóveda abierta, protegido con una contraseña de copia que tú eliges. Es gratis. Guárdalo fuera de la app, por ejemplo en Archivos, iCloud Drive o un ordenador, y el patrón de coacción no lo tocará. Guarda bien también la contraseña de la copia: si la olvidas, no se puede recuperar. Consulta la [página de seguridad](id:security#encrypted-backup) para ver cómo se protegen las copias.

### Eliminado no siempre es borrado físicamente

El almacenamiento flash no garantiza que los bytes eliminados se borren físicamente de inmediato. Lo que te protege es el cifrado: los datos de las bóvedas de Velcrypt están cifrados con AES-256-GCM y las claves se eliminan junto con los directorios de las bóvedas, así que los datos que queden son texto cifrado sin clave. Desconfía de cualquier app que prometa más que eso.

### Solo borra lo que hay dentro de la app

Los originales que sigan en Fotos, en Eliminado, en iCloud, en chats o en otro dispositivo no se ven afectados. [Borra los originales después de importarlos](id:delete-original-photos-after-import).

## Úsala con responsabilidad

Una función de autodestrucción es una herramienta de seguridad personal y de privacidad. Nunca la uses para destruir pruebas ni para eludir un requerimiento legítimo de la policía, los agentes de frontera o un tribunal. Las leyes varían según el país, y eliminar datos ante un requerimiento legal puede ser un delito en sí mismo. Si estás en esa situación, o crees que lo estarás, busca asesoramiento jurídico.

## ¿Deberías elegir una bóveda con autodestrucción?

Elige una si que te obliguen a desbloquear tu bóveda es un riesgo real para ti y prefieres perder los archivos antes que dejar que los vean. Descártala, o espera a tener una copia de seguridad, si los archivos son irreemplazables.

Elijas la app que elijas, comprueba cómo se activa su función de autodestrucción, si se nota y qué borra de verdad. Nuestra [lista de comprobación sobre la seguridad de las bóvedas de fotos](id:are-photo-vault-apps-safe) te ayuda. Si eliges Velcrypt, [cómo configurar una bóveda señuelo y un patrón de coacción](id:set-up-decoy-vault-and-duress-pattern) explica la configuración empezando por la copia de seguridad, y [precios](id:pricing) recoge los planes Premium.
