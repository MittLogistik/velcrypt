---
pageId: calculator-vault-apps-explained
title: "Apps de calculadora secreta: camuflaje frente a cifrado"
description: "Las apps de calculadora secreta esconden fotos tras una calculadora falsa. Cómo funciona el camuflaje, por qué no es cifrado y dónde iOS delata la app."
h1: "Las apps de calculadora secreta, explicadas"
navTitle: "Apps de calculadora secreta"
answer: "Una calculadora secreta es una bóveda de fotos que parece y funciona como una calculadora hasta que escribes un código secreto como si fuera una operación. El camuflaje puede engañar a una mirada rápida, pero no es cifrado, e iOS revela la identidad real de la app en lugares como la búsqueda de la biblioteca de apps, Spotlight, Almacenamiento del iPhone y tus compras del App Store."
keyFacts:
  - "Las calculadoras secretas esconden una bóveda de fotos tras una calculadora que funciona; un código escrito como operación la abre."
  - "Camuflar y cifrar son cosas distintas: el camuflaje oculta que la bóveda existe, el cifrado protege los archivos."
  - "Spotlight, la biblioteca de apps, Almacenamiento del iPhone, Tiempo de uso y el historial de compras del App Store pueden revelar la app real."
  - "Una calculadora que ocupa varios gigabytes de almacenamiento es una pista evidente."
  - "Muchas calculadoras secretas se financian con anuncios; revisa la etiqueta de privacidad del App Store antes de usar una."
primaryKeyword: "app calculadora secreta"
keywords:
  - "calculadora secreta iphone"
  - "calculadora falsa para ocultar fotos"
  - "app calculadora para esconder fotos"
  - "calculadora bóveda de fotos"
  - "cómo encontrar apps de calculadora ocultas"
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Cómo funcionan las bóvedas camufladas de calculadora, por qué camuflar no es lo mismo que cifrar y cuándo el truco sigue teniendo sentido."
category: choosing
order: 22
related:
  - velcrypt-vs-calculator-vault-apps
  - are-photo-vault-apps-safe
  - plausible-deniability-explained
  - what-is-a-decoy-vault
  - best-private-photo-vault-apps-iphone
faq:
  - q: "¿Cómo funcionan las apps de calculadora secreta?"
    a: "Se abren como una calculadora que funciona. Cuando escribes un código concreto, a menudo seguido de la tecla igual o de porcentaje, la app cambia a una bóveda de fotos oculta. Sin el código se comporta como una calculadora normal."
  - q: "¿Alguien puede encontrar una calculadora secreta en mi iPhone?"
    a: "Sí, si la busca. El nombre real y el tamaño de la app aparecen en sitios como la búsqueda de la biblioteca de apps, Ajustes › General › Almacenamiento del iPhone, Tiempo de uso y tu historial de compras del App Store."
  - q: "¿Las apps de calculadora secreta están cifradas?"
    a: "Algunas sí y otras no. El camuflaje de calculadora no dice nada sobre cómo se guardan los archivos, así que comprueba si el desarrollador documenta un cifrado en reposo real."
  - q: "¿Una calculadora secreta es mejor que una bóveda normal?"
    a: "No en sí misma. Añade un camuflaje, que puede ayudar frente a una mirada rápida, pero la protección de tus archivos sigue dependiendo del cifrado y de la solidez de tu código."
  - q: "¿Hay una alternativa mejor que camuflar una app?"
    a: "En iOS 18 y posteriores puedes ocultar cualquier app tras Face ID en la carpeta de apps ocultas de la biblioteca de apps. Otro enfoque es la negación plausible, en la que una bóveda no demuestra que exista más contenido aunque se abra."
---

En el App Store, un número sorprendente de «calculadoras» no son realmente calculadoras. Son bóvedas de fotos disfrazadas. La idea es ingeniosa: nadie mira dos veces una calculadora. Pero conviene entender exactamente qué hace y qué no hace el disfraz antes de confiarle algo delicado.

## Cómo funciona el camuflaje de calculadora

Una calculadora secreta es una app de bóveda de fotos diseñada para parecer y comportarse como una calculadora normal. Su icono se parece al de una calculadora, su nombre en la pantalla de inicio suele ser algo como «Calculadora» y, al abrirla, hace operaciones de verdad. La bóveda solo aparece cuando introduces un código secreto, normalmente un número seguido de una tecla concreta como **=** o **%**.

Algunas variantes van más allá: un historial falso de «cálculos recientes», un código señuelo que abre una galería inofensiva o una opción para que la app se cierre o falle si se introduce un código incorrecto. Las funciones varían mucho de un desarrollador a otro.

<!-- TODO verify -->

## Camuflar no es cifrar

Aquí se responden dos preguntas distintas:

- **El camuflaje** responde: «¿Notará alguien que hay una bóveda en este teléfono?»
- **El cifrado** responde: «Si alguien llega a los archivos, ¿puede leerlos?»

El cifrado es el proceso de transformar los datos para que solo se puedan leer con la clave correcta. Un camuflaje de calculadora no hace nada respecto a esa pregunta. Los archivos podrían estar bien cifrados o podrían ser imágenes normales dentro del almacenamiento de la app, detrás de una pantalla de código. La calculadora no te lo dice. Busca una explicación clara de cómo se guardan los archivos y de cómo se relaciona la clave con tu código; nuestra [lista de seguridad para bóvedas](id:are-photo-vault-apps-safe) explica qué mirar.

Lo contrario también es cierto: una bóveda puede tener un cifrado sólido y ningún camuflaje.

## Dónde revela iOS la app real

iOS no se diseñó para mantener en secreto la identidad de una app, así que una app camuflada deja rastros en varios lugares. Cualquiera que sepa dónde mirar puede encontrarlos:

| Dónde | Qué puede revelar |
| --- | --- |
| **Spotlight y la búsqueda de la biblioteca de apps** | Buscar el nombre real de la app, o explorar las categorías de la biblioteca de apps, puede hacerla aparecer |
| **Ajustes › General › Almacenamiento del iPhone** | Una «calculadora» que ocupa gigabytes |
| **Tiempo de uso** | Cuánto tiempo pasas en tu «calculadora» |
| **Historial de compras del App Store** | El nombre real de la app y su ficha en el App Store |
| **Mantener pulsado el icono** | Opciones como compartir la app, que pueden llevar a su página del App Store |
| **Dos calculadoras** | La Calculadora de Apple sigue en el teléfono salvo que la hayas eliminado |

La pista del almacenamiento es especialmente difícil de evitar: las fotos y los videos ocupan espacio, e iOS muestra con honestidad el tamaño de cada app. Si alguien sospecha activamente, un camuflaje suele ayudar menos de lo que la gente espera.

## Cuándo puede seguir ayudando el camuflaje

Eso no hace inútiles a las calculadoras secretas. Un camuflaje tiene valor real en algunas situaciones:

- **Exposición casual.** Es poco probable que un niño, un amigo o un compañero que echa un vistazo a tu pantalla de inicio investigue una calculadora.
- **Evitar preguntas.** Algunas personas simplemente no quieren explicar por qué tienen una app de «bóveda».
- **Dispositivos compartidos** en los que nadie está buscando nada.

Si alguien está buscando específicamente, o podría presionarte para abrir apps, el camuflaje es una capa fina. En esa situación, otras dos ideas suelen aguantar mejor.

### Ocultar la app con el propio iOS

En iOS 18 y posteriores puedes mantener pulsadas la mayoría de las apps y elegir requerir Face ID u ocultar la app. Las apps ocultas pasan a una carpeta **Ocultas** al final de la biblioteca de apps, bloqueada con Face ID, Touch ID o tu código, y dejan de aparecer en Spotlight. Es una función del sistema que funciona con cualquier app, no solo con bóvedas. Se aplica la misma salvedad que con el álbum Oculto: quien conozca tu código puede abrir la carpeta.

<!-- TODO verify iOS label -->

### Negación plausible en lugar de camuflaje

La negación plausible es la idea de que, aunque alguien vea la app o te obligue a abrirla, nada demuestra que haya algo más que encontrar. Una bóveda señuelo es una forma de conseguirlo: un segundo código abre un espacio inocente. Una forma más sólida es un diseño en el que cualquier código abre algo y la app nunca confirma cuántos espacios existen. Explicamos ambas en [¿qué es una bóveda señuelo?](id:what-is-a-decoy-vault) y en [la negación plausible, explicada](id:plausible-deniability-explained).

## Preguntas antes de elegir una calculadora secreta

1. ¿El desarrollador explica cómo se cifran los archivos, y no solo cómo se ocultan?
2. ¿Qué incluye la etiqueta de privacidad del App Store? Muchas calculadoras secretas se financian con anuncios, lo que normalmente implica SDK de rastreo.
3. ¿Hay una cuenta o subida a la nube, y es opcional?
4. ¿Cómo recuperas el acceso si olvidas el código?
5. ¿Importar copia la foto y deja el original en tu fototeca?

<!-- TODO verify -->

Ese último punto sorprende a la gente con cualquier tipo de bóveda. El original sigue en Fotos y en **Eliminado** hasta que lo eliminas; consulta [borrar los originales después de importar](id:delete-original-photos-after-import).

## Cómo lo aborda Velcrypt

Velcrypt no finge ser otra cosa. No es una calculadora funcional; con Premium puedes elegir iconos alternativos para la pantalla de inicio (como una calculadora, un temporizador o una regla), pero el nombre Velcrypt sigue viéndose. Su protección se centra en lo que pasa una vez abierta la app. Cada bóveda se abre con su propio patrón dibujado en una cuadrícula de 5×5, y cualquier patrón que la app no haya visto antes simplemente abre una bóveda vacía, sin ningún error y sin nada que demuestre que existen otras bóvedas ([bóvedas ocultas](id:hidden-vaults)). Los archivos se cifran con AES-256-GCM mediante claves derivadas del patrón ([cifrado](id:encryption)), y todo se queda en el dispositivo.

La contrapartida es que la app se ve en tu pantalla de inicio, salvo que uses la función de iOS para ocultar apps. Y el contenido de la bóveda no está en las copias de iCloud, así que un patrón olvidado significa contenido perdido, y un teléfono perdido también, salvo que hayas creado una copia de seguridad cifrada. Para una comparación directa, consulta [Velcrypt frente a las apps de calculadora secreta](id:velcrypt-vs-calculator-vault-apps).
