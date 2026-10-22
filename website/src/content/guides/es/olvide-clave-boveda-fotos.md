---
pageId: forgot-vault-pattern
title: "¿Olvidaste la contraseña o el patrón de tu bóveda de fotos?"
description: "¿Olvidaste la contraseña o el patrón de tu bóveda de fotos? Qué probar primero, por qué Velcrypt no se puede restablecer y cómo evitar quedarte sin acceso."
h1: "¿Olvidaste la contraseña o el patrón de tu bóveda de fotos? Qué puedes y qué no puedes hacer"
navTitle: "Olvidé el patrón de la bóveda"
answer: "En Velcrypt, un patrón olvidado no se puede restablecer ni recuperar, ni por ti ni por Velcrypt, porque la clave solo existe en tu memoria y ningún servidor guarda una copia. Lo que sí puedes hacer es probar con calma variaciones cercanas del patrón. Otras apps de bóveda pueden ofrecer recuperación por correo o cuenta; comprueba qué usa la tuya."
keyFacts:
  - "Velcrypt no tiene restablecimiento, ni correo de recuperación, ni frase de recuperación: las claves se derivan de tu patrón en el dispositivo."
  - "En Velcrypt, un patrón equivocado abre una bóveda vacía en lugar de mostrar un error, así que una bóveda vacía suele significar un patrón ligeramente distinto."
  - "En la primera versión, los datos de la bóveda están excluidos de las copias de seguridad de iCloud y del ordenador."
  - "Está prevista una opción de copia de seguridad cifrada / recuperación, sin fecha prometida."
  - "Si perder algo sería insoportable, guarda una copia en otro sitio de tu confianza."
primaryKeyword: "olvidé la contraseña de la bóveda de fotos"
keywords: ["olvidé el patrón de la bóveda", "recuperar bóveda de fotos", "olvidé el pin de la app de fotos ocultas", "restablecer patrón bóveda", "no puedo entrar en mi bóveda de fotos"]
datePublished: 2026-10-21
dateModified: 2026-10-21
summary: "Qué probar primero, por qué Velcrypt no puede restablecer un patrón olvidado, cómo gestionan la recuperación otras apps y hábitos para no quedarte fuera."
category: security
order: 44
related: [pattern-lock, pattern-strength-checker, pattern-lock-vs-pin-vs-face-id, photo-vault-without-account, offline-no-account, support]
faq:
  - q: "¿El soporte de Velcrypt puede restablecer mi patrón?"
    a: "No. Velcrypt no tiene cuenta ni servidor, y tus claves se derivan del patrón en tu iPhone. No hay nada que el equipo pueda restablecer o consultar, y por eso mismo nadie más puede entrar."
  - q: "Mi bóveda aparece de repente vacía. ¿He perdido mis datos?"
    a: "Probablemente no. En Velcrypt, un patrón que la app no ha visto abre una bóveda nueva y vacía, así que una bóveda vacía normalmente significa que dibujaste un patrón ligeramente distinto. Cierra la app, vuelve a intentarlo con cuidado y no añadas nada a la bóveda vacía."
  - q: "¿Reinstalar Velcrypt me permite empezar de nuevo y conservar mis fotos?"
    a: "No. Borrar la app borra del dispositivo sus datos cifrados. Reinstalarla te da una app limpia, no acceso a las bóvedas antiguas. Bórrala solo si has asumido que el contenido se ha perdido."
  - q: "¿Cómo gestionan otras apps de bóveda un PIN olvidado?"
    a: "Muchas apps con cuenta te permiten restablecer el PIN por correo o a través de una cuenta en la nube, lo que significa que existe una vía de recuperación fuera de tu memoria. Revisa las páginas de ayuda de tu app antes de necesitarlo, y ten en cuenta que una vía de recuperación también puede ser una puerta de entrada para otra persona."
  - q: "¿Velcrypt añadirá una opción de recuperación?"
    a: "Está prevista una opción de copia de seguridad cifrada y recuperación, pero no tiene fecha de lanzamiento. Hasta que exista, trata tu patrón como la única llave."
---

Esa sensación de vértigo cuando la forma que has dibujado cien veces de repente no funciona es real. Antes que nada: no borres ni reinstales la app. La mayoría de los patrones «olvidados» resultan ser patrones recordados con un pequeño error, y hay cosas sensatas que probar primero.

## Primero, prueba esto (en Velcrypt)

Velcrypt se comporta de forma distinta a la mayoría de las apps cuando te equivocas de patrón. No muestra ningún error. Cualquier patrón que no haya visto antes simplemente abre una bóveda nueva y vacía. Así que, si tu bóveda aparece vacía, la explicación más probable es que dibujaste un patrón ligeramente distinto, no que tus datos hayan desaparecido.

Repasa estos pasos con calma:

1. **No añadas nada a la bóveda vacía.** Si importas elementos en ella, creas una bóveda nueva con ese patrón equivocado, lo que más adelante genera confusión.
2. **Cierra la app y empieza de nuevo.** Velcrypt se bloquea cuando pasa a segundo plano (tras el tiempo que hayas configurado), lo que te da una pantalla de desbloqueo limpia.
3. **Revisa el punto de partida.** Un patrón es una secuencia de puntos, así que empezar por el otro extremo de la misma forma es, en general, un patrón distinto.
4. **Revisa si te saltas o añades puntos.** En una cuadrícula de 5×5, una línea recta puede pasar fácilmente por un punto más o uno menos de lo que pretendías.
5. **Piensa en cómo sueles estar.** La memoria muscular está ligada a la postura. Prueba a dibujar en la posición en la que sueles desbloquear: con una mano, con dos, sentado.
6. **Dibújalo en papel.** Traza la cuadrícula de 5×5, dibuja el patrón de memoria y compara variantes. Destruye el papel después.
7. **Tómate un descanso.** Bajo estrés, la memoria funciona peor. Volver a intentarlo más tarde, descansado, a menudo funciona.

## Si de verdad se ha perdido

Si nada de eso funciona, esta es la respuesta honesta: el contenido no se puede recuperar. Ni tú, ni Velcrypt, ni nadie.

No es una decisión de política que se pueda saltar. Es cómo funciona el cifrado:

- Velcrypt no tiene cuenta, ni correo, ni servidor. Consulta [sin conexión, sin cuenta](id:offline-no-account).
- Las claves de tu bóveda se desbloquean con una clave derivada de tu patrón en el dispositivo, mediante PBKDF2 y una sal guardada en el llavero de iOS. Sin el patrón, esa clave no se puede generar.
- Los datos de la bóveda se cifran con AES-256-GCM, que no se puede romper por fuerza bruta. La [explicación de AES-256](id:aes-256-encryption-explained) cuenta por qué.
- En la primera versión, los datos de la bóveda están excluidos de las copias de seguridad de iCloud y del Finder/iTunes, así que no hay ninguna copia anterior desde la que restaurar.

Las mismas propiedades que hacen privada tu bóveda hacen definitivo un patrón olvidado. Un sistema con un botón de «¿olvidaste el patrón?» necesariamente conserva una forma de entrar que no depende solo de ti.

### ¿Y las otras bóvedas?

Como cada patrón es su propia bóveda, olvidar un patrón no afecta a las demás. Si recuerdas el patrón de tu [bóveda señuelo](id:what-is-a-decoy-vault), esa bóveda se abre con normalidad.

## Por qué «sin restablecimiento» es una contrapartida deliberada

Los mecanismos de recuperación siempre crean una segunda llave. Cualquiera con acceso a tu bandeja de entrada puede iniciar un restablecimiento por correo. Cualquiera que entre en la cuenta puede restaurar una copia en la nube. Las preguntas de seguridad a menudo se pueden adivinar a partir de las redes sociales.

Velcrypt eligió no tener una segunda llave. Eso descarta toda una categoría de ataques y significa que no hay nada que requerir judicialmente, filtrar o robar con phishing. El precio es que tú cargas en exclusiva con la responsabilidad de recordar el patrón. Para mucha gente esa contrapartida merece la pena; para cierto contenido, no. Decide qué tipo de contenido estás guardando.

## Cómo evitar quedarte sin acceso

### Elige un patrón sólido pero fácil de recordar

Solidez y facilidad para recordar no son opuestos. Un buen patrón en la cuadrícula de 5×5:

- usa de 8 a 12 puntos y cambia de dirección varias veces,
- no empieza en una esquina ni traza una letra,
- tiene alguna lógica personal que solo tú conoces, como una forma ligada a un lugar o un gesto que te resulta natural.

Prueba una forma parecida (no la real) con el [comprobador de seguridad de patrones](id:pattern-strength-checker), y lee [patrón vs PIN vs Face ID](id:pattern-lock-vs-pin-vs-face-id) para saber qué hace débiles a los patrones.

### Practícalo

- Abre la bóveda con regularidad las primeras semanas para que el movimiento se convierta en memoria muscular.
- Evita cambiar el patrón justo antes de una época de estrés, como un viaje.
- Si tienes varias bóvedas, haz que sus patrones sean claramente distintos para no mezclarlos.

### Conserva los originales cuando perderlos dolería

Si perder una foto o un documento sería realmente insoportable, una bóveda no debería ser el único sitio donde existe. Para lo irremplazable, guarda una copia adicional en un sitio de tu confianza, como una unidad cifrada guardada en un lugar seguro. Es una contrapartida consciente: cada copia extra es un sitio más que proteger.

### No apuntes el patrón cerca del teléfono

Si necesitas un recordatorio por escrito, que sea algo que solo tú sepas interpretar y guárdalo lejos del dispositivo.

## Si usas otra app de bóveda

La recuperación varía mucho entre apps. Antes de necesitarlo, comprueba:

- **¿Hay una cuenta?** Las apps con inicio de sesión por correo a menudo permiten restablecer el PIN a través de ese correo.
- **¿Hay copia en la nube?** Algunas apps pueden restaurar el contenido después de reinstalarlas si estaba sincronizado con sus servidores.
- **¿Hay un código de recuperación?** Algunas apps generan uno durante la configuración. Si no lo guardaste, no te servirá.
- **¿Qué dice la página de ayuda?** Busca las instrucciones oficiales de recuperación del desarrollador. Desconfía de las herramientas de «desbloqueo» de terceros; rara vez funcionan y pueden ser estafas.

La [guía sobre bóvedas de fotos sin cuenta](id:photo-vault-without-account) explica las contrapartidas entre las apps con cuenta y las que funcionan solo en el dispositivo.

## Dónde encaja Velcrypt

Velcrypt es, por diseño, una bóveda solo en el dispositivo: sin cuenta, sin servidor, sin frase de recuperación y sin ninguna copia de tus claves en otro sitio. Está prevista una opción de copia de seguridad cifrada y recuperación como parte de una mejora Premium opcional, sin fecha prometida. Si tienes dudas, el [soporte](id:support) puede explicarte cómo se comporta la app, pero nadie allí puede abrirte una bóveda.
