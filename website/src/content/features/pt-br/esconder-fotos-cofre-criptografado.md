---
pageId: hide-photos
title: "Esconder fotos no iPhone em um cofre criptografado"
description: "Importe fotos da biblioteca do iPhone para um cofre criptografado do Velcrypt, apague os originais e as cópias em Apagados e organize tudo em álbuns."
h1: "Esconder fotos em um cofre criptografado"
navTitle: "Esconder fotos"
answer: "O Velcrypt importa fotos da sua biblioteca do Fotos como cópias criptografadas dentro de um cofre. Os originais ficam no Fotos até você apagá-los, então, depois de importar, remova-os e esvazie o álbum Apagados. Dentro do cofre você organiza as fotos em álbuns e as vê com zoom e deslize."
keyFacts:
  - "Importar copia a foto para o cofre; o original continua no Fotos."
  - "Apague os originais depois e esvazie Apagados, onde os itens ficam cerca de 30 dias."
  - "Cada foto importada é criptografada com AES-256-GCM no próprio aparelho."
  - "Organize as fotos em álbuns dentro de cada cofre."
  - "Veja as fotos com zoom de pinça e deslize entre elas."
primaryKeyword: "app para esconder fotos iphone"
keywords: ["esconder fotos iphone", "cofre de fotos iphone", "cofre de fotos criptografado", "ocultar fotos iphone", "app para trancar fotos", "álbum secreto de fotos"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Importe fotos como cópias criptografadas, limpe os originais e Apagados e navegue por elas em álbuns com zoom e deslize."
status: available
schemaType: WebPage
order: 6
related: [hide-photos-iphone, delete-original-photos-after-import, albums, encryption, is-iphone-hidden-album-private]
faq:
  - q: "O Velcrypt apaga a foto do meu rolo da câmera?"
    a: "Não automaticamente. Importar cria uma cópia criptografada no cofre e deixa o original no Fotos. Apague o original você mesmo e depois remova-o também de Apagados."
  - q: "Quanto tempo as fotos apagadas ficam em Apagados?"
    a: "Cerca de 30 dias, a menos que você as apague de Apagados antes. Até lá, qualquer pessoa que consiga abrir esse álbum pode recuperá-las."
  - q: "Esconder fotos no Velcrypt é diferente de usar o álbum Ocultos?"
    a: "Sim. O álbum Ocultos continua fazendo parte da sua biblioteca do Fotos e pode sincronizar pelas Fotos do iCloud. Uma foto no Velcrypt é criptografada com chaves derivadas do seu padrão e não entra nos backups do iCloud nem do computador."
  - q: "O Velcrypt envia minhas fotos para algum lugar?"
    a: "Não. O Velcrypt não tem servidores nem conta. As fotos importadas são criptografadas e armazenadas apenas no seu iPhone."
---

O rolo da câmera é o lugar mais visitado do seu celular. Quem o pega emprestado para ver uma foto pode rolar além dela e ver todo o resto. Levar as fotos privadas para o Velcrypt as tira dessa rolagem e as coloca atrás de um padrão e de criptografia.

## Como funciona a importação de fotos

Importar é trazer uma foto da biblioteca do Fotos do iPhone para um cofre do Velcrypt. Você escolhe uma ou várias fotos com o seletor de fotos padrão do iOS, e o Velcrypt guarda uma cópia criptografada no cofre que estiver aberto.

A palavra importante é **cópia**. O Velcrypt não move nem apaga nada na sua biblioteca do Fotos. O original fica exatamente onde estava até você removê-lo. É uma medida de segurança, porque você pode conferir se a importação deu certo antes de apagar qualquer coisa, mas significa que um passo a mais fica por sua conta.

Cada foto importada é criptografada no aparelho com AES-256-GCM, usando uma chave derivada da chave mestra daquele cofre. Como essas chaves são construídas está explicado na página de [criptografia](id:encryption).

## Removendo os originais

Uma foto só é privada se as outras cópias tiverem sumido. Depois de importar:

1. **Abra o Fotos e selecione os originais** que você acabou de importar.
2. **Apague-os.** Eles vão para o álbum Apagados.
3. **Abra Apagados.** No iOS 18 e posteriores, ele fica em “Utilitários” no app Fotos; em versões anteriores, fica perto do fim da aba Álbuns.
4. **Apague-os de novo ali.** Caso contrário, continuam recuperáveis por cerca de 30 dias.

<!-- TODO verify iOS label -->

Desde o iOS 16, os álbuns Apagados e Ocultos são bloqueados por padrão com Face ID, Touch ID ou o código, mas qualquer pessoa que saiba o código do aparelho ainda consegue abri-los. Se você usa as Fotos do iCloud, apagar em um aparelho remove a foto dos outros também. O passo a passo completo está em [apagar os originais depois de importar](id:delete-original-photos-after-import).

Pense também em cópias em outros lugares: fotos enviadas em conversas, álbuns compartilhados, anexos de e-mail ou um computador com o qual você sincronizou um dia. O Velcrypt só consegue proteger o que está dentro do cofre.

## Organizando fotos em álbuns

Dentro de cada cofre você pode criar álbuns, como “Documentos”, “Pessoal” ou “Viagem”, e distribuir as fotos entre eles. A seleção múltipla permite mover muitas fotos de uma vez, e você pode mover itens entre álbuns sempre que mudar a sua organização. Veja o recurso [álbuns](id:albums) para mais detalhes.

Os álbuns pertencem ao cofre em que estão. Outro padrão abre outro cofre, com álbuns próprios, e é assim que os [cofres ocultos](id:hidden-vaults) mantêm coleções diferentes totalmente separadas.

## Vendo as fotos dentro do cofre

As fotos abrem no visualizador do Velcrypt. Você pode fazer o movimento de pinça para ampliar detalhes e deslizar para a esquerda ou para a direita para percorrer um álbum. As fotos são descriptografadas para exibição enquanto o cofre está aberto, e o app se bloqueia sozinho quando você sai, conforme o ajuste de [bloqueio automático](id:auto-lock).

## Velcrypt x álbum Ocultos

| | Álbum Ocultos do iPhone | Cofre do Velcrypt |
| --- | --- | --- |
| Onde a foto fica | Na sua biblioteca do Fotos | Em um cofre criptografado no app |
| Como é desbloqueado | Face ID, Touch ID ou código do aparelho | Seu padrão do Velcrypt |
| iCloud | Sincroniza com as Fotos do iCloud, se ativado | Não entra nos backups do iCloud nem do computador |
| Coleções separadas | Um único álbum Ocultos | Um cofre separado para cada padrão |

O álbum Ocultos é prático e suficiente para muita gente. Os limites dele estão em [o álbum Ocultos do iPhone é privado?](id:is-iphone-hidden-album-private), e um panorama de todas as opções está em [como esconder fotos no iPhone](id:hide-photos-iphone).

## Bom saber

- Fotos tiradas com o app Câmera vão primeiro para a fototeca. Para pular essa etapa, use a câmera do cofre do Velcrypt, que salva direto no cofre; se usar o app Câmera, importe a foto e depois apague o original.
- Fotos podem carregar dados de localização e do aparelho. Se você pretende compartilhá-las depois, [remova os metadados da foto](id:remove-photo-metadata-iphone) antes.
- Os dados do cofre não entram nos backups do iCloud nem do computador. Se uma foto for insubstituível, crie um backup criptografado em Ajustes → Backup ou guarde uma segunda cópia em um lugar de sua confiança.
