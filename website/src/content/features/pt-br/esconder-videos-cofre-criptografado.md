---
pageId: hide-videos
title: "Esconder vídeos no iPhone em um cofre criptografado"
description: "Importe vídeos para um cofre criptografado do Velcrypt, assista dentro do app, apague os originais do Fotos e planeje o espaço de armazenamento."
h1: "Esconder vídeos em um cofre criptografado"
navTitle: "Esconder vídeos"
answer: "O Velcrypt importa vídeos da sua biblioteca do Fotos como cópias criptografadas e os reproduz dentro do cofre. Os originais ficam no Fotos até você apagá-los e esvaziar o álbum Apagados. Vídeos são grandes, então confira o espaço livre antes de importar muitos de uma vez."
keyFacts:
  - "Importar copia o vídeo para o cofre; o original continua no Fotos."
  - "Os vídeos são reproduzidos dentro do Velcrypt, sem sair do cofre."
  - "Cada vídeo é criptografado no aparelho com AES-256-GCM."
  - "Até você apagar o original, o vídeo ocupa espaço em dobro temporariamente."
  - "Apagados guarda vídeos apagados por cerca de 30 dias, a menos que você o esvazie."
primaryKeyword: "app para esconder vídeos iphone"
keywords: ["esconder vídeos iphone", "cofre de vídeos iphone", "cofre de vídeos criptografado", "trancar vídeos iphone", "ocultar vídeos do rolo da câmera", "app de vídeos privados"]
datePublished: 2026-10-21
dateModified: 2026-10-22
summary: "Importe vídeos como cópias criptografadas, assista dentro do cofre e limpe os originais sem ficar sem espaço."
status: available
schemaType: WebPage
order: 7
related: [hide-videos-iphone, delete-original-photos-after-import, hide-photos, albums, store-intimate-photos-safely-iphone]
faq:
  - q: "Dá para assistir aos vídeos sem exportá-los do Velcrypt?"
    a: "Sim. Os vídeos são reproduzidos no visualizador do próprio Velcrypt enquanto o cofre está aberto. Você não precisa exportá-los para o app Fotos para assistir."
  - q: "Por que meu espaço livre diminuiu depois de importar vídeos?"
    a: "Importar cria uma cópia, então, até você apagar o original do Fotos e esvaziar Apagados, o vídeo existe duas vezes. Quando o original some, o espaço é liberado."
  - q: "Os vídeos escondidos no cofre entram no Backup do iCloud?"
    a: "Não. Os dados do cofre ficam fora dos backups do iCloud e do computador. Os vídeos do cofre existem apenas no seu iPhone, a não ser que você crie um backup criptografado em Ajustes → Backup."
  - q: "Os vídeos do Velcrypt sincronizam com meus outros aparelhos?"
    a: "Não. O Velcrypt não tem sincronização na nuvem e roda apenas no iPhone. Um vídeo no seu cofre fica só no celular em que você o importou."
---

Vídeos costumam ser ainda mais pessoais do que fotos, e são igualmente fáceis de encontrar por acaso no rolo da câmera. O Velcrypt permite levá-los para um cofre criptografado e assistir a eles ali, sem que o app Fotos volte a entrar na história.

## Como funciona a importação de vídeos

Importar um vídeo funciona do mesmo jeito que [importar fotos](id:hide-photos). Você escolhe um ou mais vídeos no seletor do iOS, e o Velcrypt salva uma cópia criptografada no cofre que estiver aberto. Arquivos maiores demoram um pouco mais, porque o vídeo inteiro é criptografado no aparelho antes de ser armazenado.

Assim como nas fotos, a importação é uma **cópia**. O vídeo original continua na biblioteca do Fotos até você apagá-lo. Isso dá a chance de conferir se o vídeo roda direito no cofre antes de remover qualquer coisa.

Cada vídeo é criptografado com AES-256-GCM usando uma chave própria, derivada da chave mestra do cofre. A cadeia de chaves completa está na página de [criptografia](id:encryption).

## Reprodução dentro do cofre

O Velcrypt tem um player próprio, então você pode assistir aos vídeos sem exportá-los. A reprodução acontece enquanto o cofre está aberto; quando você sai do app, o Velcrypt se bloqueia conforme o ajuste de [bloqueio automático](id:auto-lock), e o seletor de apps não mostra nenhuma prévia do que estava passando.

Você pode guardar vídeos junto com fotos relacionadas no mesmo [álbum](id:albums) e deslizar entre eles no visualizador.

## Removendo os originais

Um vídeo escondido só é privado depois que o original some:

1. **Abra o Fotos e selecione os vídeos** que você acabou de importar.
2. **Apague-os.** Eles vão para Apagados.
3. **Abra Apagados.** No iOS 18 e posteriores, ele fica em “Utilitários” no app Fotos; em versões anteriores, fica perto do fim da aba Álbuns.
4. **Apague-os ali também.** Caso contrário, continuam recuperáveis por cerca de 30 dias.

<!-- TODO verify iOS label -->

Se você usa as Fotos do iCloud, apagar um vídeo no iPhone também o apaga dos outros aparelhos que usam a mesma biblioteca. O guia sobre [apagar os originais depois de importar](id:delete-original-photos-after-import) traz os detalhes, incluindo álbuns compartilhados e outros lugares onde cópias costumam se esconder.

## Uma observação sobre espaço de armazenamento

Arquivos de vídeo são grandes. Poucos minutos de gravação em alta resolução podem ocupar gigabytes, e o cofre armazena mais ou menos a mesma quantidade de dados que o original.

Tenha três coisas em mente:

- **Armazenamento em dobro temporário.** Entre a importação e a exclusão do original, o vídeo existe duas vezes. Importe aos poucos se o celular estiver quase cheio.
- **Apagados ainda conta.** Vídeos apagados continuam ocupando espaço até Apagados ser esvaziado ou o prazo de cerca de 30 dias passar.
- **Confira antes de grandes importações.** Ajustes › Geral › Armazenamento do iPhone mostra quanto espaço está livre e quanto o Velcrypt usa.

| Etapa | Espaço usado |
| --- | --- |
| Antes da importação | Só o original |
| Depois da importação | Original + cópia criptografada |
| Depois de apagar o original | Cópia criptografada + item em Apagados |
| Depois de esvaziar Apagados | Só a cópia criptografada |

## Bom saber

- Vídeos gravados com o app Câmera vão primeiro para a fototeca. Para pular essa etapa, grave com a câmera do cofre do Velcrypt, que salva direto no cofre; se usar o app Câmera, importe o vídeo e depois apague o original.
- Padrões diferentes abrem [cofres ocultos](id:hidden-vaults) diferentes. Se alguns vídeos nunca devem ficar ao lado de outros, dê a eles um cofre próprio em vez de só um álbum separado.
- Os dados do cofre não entram nos backups do iCloud nem do computador. Para vídeos insubstituíveis, crie um backup criptografado em Ajustes → Backup ou guarde uma segunda cópia em um lugar de sua confiança.
- Se um vídeo já foi enviado em uma conversa ou publicado em um álbum compartilhado, essas cópias estão fora do cofre. O guia sobre [guardar fotos íntimas com segurança](id:store-intimate-photos-safely-iphone) aborda esse risco com mais profundidade.

Para um panorama de todas as opções, nativas e de terceiros, veja [como esconder vídeos no iPhone](id:hide-videos-iphone).
