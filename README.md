<div align="center">

# ◈ ALL TOOLKIT

### A skill certa para cada desafio.

Um ponto de partida para agentes escolherem ferramentas e orientações especializadas com mais contexto.

[Instalar no Claude Code](#instalar-no-claude-code) · [Conheça as skills](#as-skills) · [Outros agentes](#outros-agentes) · [Licenças](#licenças-e-créditos)

**Português** · [English](README.en.md)

</div>

---

## Instalar no Claude Code

**Já tem o Claude Code instalado?** Abra uma sessão e cole, um de cada vez:

```text
/plugin marketplace add jeanvicen/All-Toolkit
```

```text
/plugin install all-toolkit@all-toolkit-marketplace
```

Revise o plugin, escolha onde deseja instalá-lo e confirme. Essa instalação adiciona o **All Toolkit** e busca automaticamente o plugin oficial **UI UX Pro Max** como dependência. Se o Claude pedir, execute `/reload-plugins` ou reinicie a sessão. Para a busca de design, tenha Python 3 disponível.

> É um marketplace independente, não um plugin oficial da Anthropic. Ao instalar, você também recebe código e dados do [UI UX Pro Max](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill), de Next Level Builder. O plugin usa uma revisão fixada do projeto original; atualizações precisam ser avaliadas e publicadas aqui.

### Primeiros passos

- Confira em `/plugin` se o All Toolkit e o UI UX Pro Max estão ativos.
- Peça uma tarefa naturalmente; o Claude pode selecionar as skills conforme a descrição.
- Para chamar a skill principal explicitamente, use `/all-toolkit:all-toolkit`.
- Exemplo: “Use o All Toolkit para planejar e criar uma landing page acessível para meu projeto.”

<details>
<summary><strong>Prefere instalar pelo terminal?</strong></summary>

Fora da sessão do Claude Code, execute:

```bash
claude plugin marketplace add jeanvicen/All-Toolkit
claude plugin install all-toolkit@all-toolkit-marketplace
```

Abra ou reinicie o Claude Code. O escopo padrão é o do usuário; veja os escopos na [documentação oficial](https://code.claude.com/docs/en/plugins/install).

</details>

## Como funciona

**Entender → Selecionar → Aplicar → Verificar**

All Toolkit orienta o agente a analisar o pedido e o projeto, escolher somente as skills úteis, aplicar orientações com as ferramentas disponíveis e conferir o resultado. Uma tarefa só de backend, por exemplo, não precisa acionar as skills visuais.

Skills são instruções, não uma atualização do modelo. A escolha automática e os resultados dependem do agente, do contexto e das ferramentas; não há garantia de que toda IA escolha corretamente ou suporte o mesmo formato.

## As skills

| Skill | Foco |
| --- | --- |
| **All Toolkit** | Selecionar orientações e verificar o trabalho |
| **UI UX Pro Max** | Interface, acessibilidade e pesquisa de design |
| **Design** | Direção criativa e design visual |
| **Brand** | Identidade e materiais de marca |
| **Design System** | Tokens, componentes e consistência |
| **UI Styling** | Estilização e acabamento de interfaces |
| **Banner Design** | Banners e peças visuais |
| **Slides** | Apresentações e slides |

As sete últimas vêm do projeto **UI UX Pro Max** e são mantidas por Next Level Builder. O instalador do marketplace baixa o plugin original; All Toolkit é uma integração independente.

## Outros agentes

O instalador para projetos continua disponível para **Codex** e agentes compatíveis com Agent Skills. Requer Git, Bash, Node.js com npm/npx, Python 3 e internet. Em Linux/macOS ou Windows com WSL/Git Bash:

```bash
git clone https://github.com/jeanvicen/All-Toolkit.git
cd seu-projeto
bash /caminho/para/All-Toolkit/install.sh --agent codex
```

Substitua `/caminho/para/All-Toolkit` pelo caminho real da pasta clonada. Use `--agent universal` para o layout `.agents/skills/` ou `--agent claude` para a instalação local anterior. O instalador baixa e executa a versão fixada do CLI oficial em uma pasta temporária e interrompe a instalação se alguma das oito pastas de destino já existir. Uma falha de disco ou permissão durante a cópia final pode deixar arquivos parciais; confira antes de tentar de novo.

Para instalar só o roteador, copie [`all-toolkit/`](all-toolkit/) para a pasta de skills do seu agente; isso não instala o UI UX Pro Max. Consulte a [especificação Agent Skills](https://agentskills.io/specification) e a documentação do agente.

## Segurança e limites

- Leia o código e as instruções de terceiros antes de instalar ou executar ferramentas. Não compartilhe segredos ou dados privados.
- Obtenha autorização para ações destrutivas, acesso privilegiado e mudanças em produção.
- As recomendações de design precisam ser avaliadas e o resultado, testado. Python 3 é necessário para a busca do UI UX Pro Max.
- [REA](https://github.com/morluto/rea) e o [catálogo de skills](https://github.com/skymined/awesome-claude-codex-skills) são referências externas, não são instalados automaticamente. REA se aplica somente à engenharia reversa autorizada.
- Em Linux, validamos os manifestos e testamos a instalação do marketplace em ambiente isolado com Claude Code 2.1.100: o plugin foi habilitado, a dependência baixada com sete skills e o script de busca retornou dados. Não houve teste de sessão autenticada ou seleção automática pelo modelo. O instalador anterior foi testado em layouts Claude, Codex e universal, também em Linux.

## Estrutura

```text
All-Toolkit/
├── .claude-plugin/           # plugin e marketplace do Claude Code
├── all-toolkit/SKILL.md      # roteador independente
├── install.sh                # instalação local para projetos
├── README.md                 # português
├── README.en.md              # inglês
├── THIRD_PARTY_NOTICES.md    # créditos de terceiros
└── LICENSE                   # licença do All Toolkit
```

## Licenças e créditos

- All Toolkit: [MIT](LICENSE).
- UI UX Pro Max: © 2024 Next Level Builder, [licença MIT](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/blob/main/LICENSE); detalhes em [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
- Outros projetos citados são independentes e possuem suas próprias licenças.

---
<div align="center"><strong>Ferramentas conscientes. Ações responsáveis. Trabalho verificado.</strong></div>
