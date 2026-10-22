---
pageId: are-photo-vault-apps-safe
title: "¿Son seguras las apps de bóveda de fotos? 9 puntos clave"
description: "Las bóvedas de fotos van del cifrado real a una simple pantalla de PIN. Usa esta lista para evaluar cifrado, datos recopilados, nube y recuperación."
h1: "¿Son seguras las apps de bóveda de fotos?"
navTitle: "¿Son seguras las bóvedas de fotos?"
answer: "Algunas sí y otras no. Una bóveda de fotos es tan segura como su cifrado, los datos que recopila y dónde guarda la información. Una bóveda fiable explica cómo cifra los archivos, recopila pocos datos, te dice si algo va a un servidor y es honesta sobre qué pasa si olvidas tu código o borras la app."
keyFacts:
  - "Una pantalla de PIN por sí sola no protege los archivos; busca un cifrado en reposo documentado y ligado a tu secreto."
  - "La etiqueta de privacidad del App Store muestra qué datos dice recopilar una app y si te rastrea."
  - "Las bóvedas financiadas con anuncios suelen incluir código publicitario de terceros."
  - "Borrar una app de bóveda normalmente borra sus archivos del dispositivo; revisa las opciones de copia antes de desinstalarla."
  - "Importar a una bóveda normalmente copia la foto, así que el original sigue en Fotos hasta que lo borras."
primaryKeyword: "son seguras las apps de bóveda de fotos"
keywords:
  - "es segura una bóveda de fotos"
  - "apps para ocultar fotos son seguras"
  - "las apps de bóveda pueden ver mis fotos"
  - "privacidad bóveda de fotos"
  - "app de fotos secretas segura"
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Una lista práctica para evaluar cualquier bóveda de fotos: cifrado, etiqueta de privacidad, cuenta, nube, anuncios, desinstalación y recuperación."
category: choosing
order: 21
related:
  - best-private-photo-vault-apps-iphone
  - photo-vault-without-account
  - aes-256-encryption-explained
  - calculator-vault-apps-explained
  - delete-original-photos-after-import
  - security
faq:
  - q: "¿El desarrollador de una app de bóveda puede ver mis fotos?"
    a: "Si la app sube tus fotos a sus servidores sin cifrado de extremo a extremo, el desarrollador podría acceder a ellas técnicamente. Si la app guarda los archivos solo en tu dispositivo, o los cifra con una clave que solo tienes tú, no puede."
  - q: "¿Hackean las apps de bóveda de fotos?"
    a: "A lo largo de los años se han encontrado fallos en apps de bóveda, normalmente cuando los archivos se guardaban sin cifrar o protegidos solo por una pantalla de PIN. Elegir una app que documente un cifrado real y guarde lo mínimo posible reduce ese riesgo."
  - q: "¿Qué pasa con mis fotos si borro una app de bóveda?"
    a: "En las bóvedas en el dispositivo, borrar la app normalmente borra con ella los archivos de la bóveda. En las bóvedas con copia en la nube, tus archivos pueden seguir en tu cuenta. Revisa la documentación de la app antes de desinstalarla y exporta antes lo que quieras conservar."
  - q: "¿Una app de bóveda es más segura que el álbum Oculto del iPhone?"
    a: "Puede serlo, si usa un secreto aparte y un cifrado real, porque el álbum Oculto se abre con el código del dispositivo. Una bóveda que solo añade una pantalla de PIN, o que sube archivos de forma insegura, puede no ser ninguna mejora."
  - q: "¿Una app de bóveda debería pedir acceso total a la fototeca?"
    a: "No lo necesita para importar; el selector de fotos del sistema puede entregarle solo los elementos que elijas. Algunas bóvedas piden un acceso más amplio para borrar los originales por ti. Concede solo lo que requieran las funciones que usas."
---

«Bóveda» suena tranquilizador, pero la palabra no dice nada sobre cómo guarda realmente la app tus archivos. Algunas apps de bóveda lo cifran todo con una clave derivada de tu secreto. Otras guardan tus fotos en una carpeta normal y le ponen un teclado numérico delante. No puedes inspeccionar el código, pero puedes aprender mucho de lo que una app te cuenta y de lo que te pide.

Usa la lista siguiente con cualquier bóveda que estés valorando, también con la nuestra.

## La lista de comprobación

### 1. ¿Explica su cifrado?

El cifrado en reposo significa que los archivos se guardan de forma ilegible y solo se pueden leer con la clave correcta. Una bóveda segura te dice, con un lenguaje claro, qué algoritmo usa (por ejemplo AES-256), cómo se deriva la clave a partir de tu PIN, contraseña o patrón, y dónde se guardan las claves.

Las frases vagas como «seguridad de nivel bancario» sin detalles son una señal de alarma. También lo es cualquier descripción que solo hable de la pantalla de bloqueo. Consulta [el cifrado AES-256, explicado](id:aes-256-encryption-explained) para ver cómo son las respuestas sólidas.

### 2. ¿El secreto es distinto del código del dispositivo?

Si la bóveda se abre con Face ID y recurre al código del iPhone, cualquiera que conozca ese código puede entrar, que es la misma limitación que el [álbum Oculto](id:is-iphone-hidden-album-private) integrado. Un PIN, una contraseña o un patrón aparte son una capa significativa.

### 3. ¿Qué dice la etiqueta de privacidad?

En la página de la app en el App Store, desplázate hasta **Privacidad de la app**. Apple agrupa lo que declara el desarrollador en datos usados para rastrearte, datos vinculados a ti y datos no vinculados a ti. En una bóveda, lo ideal sería ver **Datos no recopilados** o una lista corta y explicable. Las etiquetas las declara el propio desarrollador, pero una lista larga de identificadores, datos de uso y ubicación en una app de privacidad debería hacerte dudar.

<!-- TODO verify iOS label -->

### 4. ¿Exige una cuenta?

Una cuenta basada en el correo no es insegura en sí misma, y a menudo permite la copia de seguridad. Pero significa que la empresa sabe quién eres y que usas una bóveda, y añade una cuenta que puede sufrir una filtración o un phishing. Si no necesitas funciones en la nube, una [bóveda sin cuenta](id:photo-vault-without-account) lo evita.

### 5. ¿Algo va a la nube?

Averigua si tus fotos salen alguna vez del teléfono. Si hay copia en la nube, comprueba si tiene cifrado de extremo a extremo (solo tú tienes la clave) o si simplemente está cifrada en los servidores de la empresa. En nuestra guía sobre bóvedas sin cuenta describimos una prueba práctica sencilla: usa la app en modo Avión y fíjate en qué deja de funcionar.

### 6. ¿Se financia con anuncios?

Las apps con anuncios suelen incluir SDK publicitarios de terceros, que recopilan datos del dispositivo y hacen peticiones de red que tú no controlas. Eso no significa que se filtren tus fotos, pero amplía el número de partes implicadas. La etiqueta de privacidad suele reflejarlo en el apartado de rastreo.

### 7. ¿Qué pasa cuando la desinstalas?

En iOS, las apps guardan sus archivos en su propio contenedor privado. Cuando borras una app, iOS borra ese contenedor y, con él, cualquier contenido de la bóveda guardado solo en el dispositivo. Es bueno para la privacidad y peligroso para tus datos. Antes de desinstalar cualquier bóveda, exporta lo que quieras conservar y comprueba si la app tiene una copia en la nube que también debas borrar.

### 8. ¿Cómo funciona la recuperación?

Pregúntate qué pasa si olvidas tu secreto o pierdes el teléfono. Respuestas posibles:

- **Recuperación por correo o cuenta:** cómoda, pero significa que alguien que no eres tú puede conceder el acceso.
- **Una clave de recuperación o una copia que controlas tú:** sólida, si la guardas con cuidado.
- **Sin recuperación:** la opción más privada y la menos indulgente.

Ninguna es la adecuada para todo el mundo. Lo que importa es que la app te lo diga con honestidad. Consulta [¿olvidaste el patrón de tu bóveda?](id:forgot-vault-pattern) para ver cómo lo gestionamos nosotros.

### 9. ¿Qué hace con los originales?

La mayoría de las bóvedas copian la foto cuando la importas. El original sigue en Fotos, y quizá en iCloud, hasta que lo borras, y después permanece en **Eliminado** unos 30 días. Una buena app te lo recuerda; una descuidada te deja creer que la foto se ha movido. Nuestra guía para [borrar los originales después de importar](id:delete-original-photos-after-import) explica la limpieza.

## Señales de alarma de un vistazo

| Señal | Por qué importa |
| --- | --- |
| No menciona cómo se cifran los archivos | Puede que solo sea una pantalla de bloqueo |
| Se abre con el código del dispositivo como alternativa | Cualquiera con tu código entra |
| Etiqueta de privacidad larga con rastreo | Terceros implicados en una app de privacidad |
| Cuenta obligatoria para el uso básico | Tu identidad queda vinculada a tu bóveda |
| Copia en la nube sin cifrado de extremo a extremo | La empresa podría acceder a las copias |
| Promesas de seguridad absoluta e inquebrantable | Ningún producto de seguridad honesto promete eso |

## Lo que ninguna bóveda puede proteger

Incluso una bóveda bien hecha tiene límites, y una app honesta lo dice. No puede impedir que alguien te vea introducir tu secreto, el malware en un teléfono con jailbreak, a una persona a la que le das el teléfono con la bóveda abierta ni que alguien fotografíe tu pantalla. Y no puede llegar a las copias que existen en otros sitios: en Fotos, en iCloud, en un chat o en el teléfono de alguien a quien le enviaste la imagen.

## Cómo responde Velcrypt a la lista

Por transparencia, así se mide nuestra propia app:

- **Cifrado:** AES-256-GCM mediante Apple CryptoKit. Las claves se obtienen de tu patrón mediante PBKDF2-HMAC-SHA512 con al menos 600.000 iteraciones, cada bóveda tiene su propia clave maestra aleatoria y además se aplica la protección de datos de iOS. Detalles en nuestra [página de seguridad](id:security) y en la [página de la función de cifrado](id:encryption).
- **Secreto:** un patrón en una cuadrícula de 5×5, distinto del código del dispositivo; sin Face ID, por diseño.
- **Cuenta y nube:** ninguna. Sin registro, sin servidores, sin subidas ([sin conexión, sin cuenta](id:offline-no-account)).
- **Recuperación:** solo con una copia de seguridad cifrada que tú crees. El contenido de la bóveda está excluido de las copias de seguridad de iCloud y del ordenador, pero en Ajustes → Copia de seguridad puedes crear un archivo cifrado con una contraseña propia y restaurarlo en otro iPhone. Un patrón o una contraseña de copia olvidados no se pueden recuperar.
- **Originales:** importar copia el elemento; el original lo eliminas tú.

Si una bóveda que estás valorando puede responder a estos puntos con la misma claridad, es buena señal. Para una comparación más amplia de opciones, consulta [las mejores apps de bóveda de fotos para iPhone](id:best-private-photo-vault-apps-iphone).
