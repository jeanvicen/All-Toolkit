<div align="center">

# ◈ ALL TOOLKIT

### A skill certa para cada desafio.

Uma skill de seleção + a suíte UI/UX Pro Max, em uma única instalação.

[Instalação](#instalação) · [Conheça as skills](#as-skills) · [Segurança](#segurança-e-limites) · [English](README.md)

</div>

---

## O que é?

All Toolkit orienta o agente a identificar a tarefa, selecionar as skills pertinentes, aplicar as técnicas com segurança e verificar o resultado. O instalador adiciona **o All Toolkit e sete skills do UI/UX Pro Max** ao projeto escolhido.

Skills são instruções: **não mudam o modelo de IA**, não garantem que ele escolherá a skill certa e não substituem testes ou proteção de segurança. O resultado depende do agente, ferramentas, permissões e contexto disponíveis.

## As skills

| Skill | Para que serve |
| --- | --- |
| **all-toolkit** | Selecionar abordagens úteis e conferir o resultado |
| **ui-ux-pro-max** | Interfaces, acessibilidade, responsividade e pesquisa de design |
| **design** | Direção criativa e processos de design visual |
| **brand** | Identidade de marca, diretrizes e materiais |
| **design-system** | Tokens, componentes e consistência visual |
| **ui-styling** | Estilização e acabamento de interfaces |
| **banner-design** | Banners e peças visuais |
| **slides** | Apresentações e slides |

As sete skills e os dados de design são do projeto independente [UI UX Pro Max](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill), criado por Next Level Builder. Este projeto não é afiliado nem endossado por eles.

## Instalação

Você precisa de Git, Bash, Node.js com npm/npx, Python 3 e internet. Use Linux/macOS ou um shell compatível no Windows, como WSL ou Git Bash. Execute a instalação **na raiz do projeto que receberá as skills**.

```bash
git clone https://github.com/jeanvicen/All-Toolkit.git
cd seu-projeto
bash /caminho/para/All-Toolkit/install.sh --agent claude
```

Escolha o argumento para seu agente:

| Agente | Argumento | Destino no projeto |
| --- | --- | --- |
| Claude Code | `claude` | `.claude/skills/` |
| Codex | `codex` | `.agents/skills/` |
| Outros compatíveis com Agent Skills | `universal` | `.agents/skills/` |

Por exemplo, para Codex use `bash /caminho/para/All-Toolkit/install.sh --agent codex`. Reinicie o agente caso ele não reconheça as skills. Você pode chamar `/all-toolkit` no Claude Code ou `$all-toolkit` no Codex, ou pedir para o agente usar a skill.

O instalador executa o pacote oficial **ui-ux-pro-max-cli@2.15.0** em uma pasta temporária, confere as sete skills e copia tudo para o projeto. Não altera a instalação global. Leia o [`install.sh`](install.sh) e a documentação upstream antes de executá-lo.

**Proteção contra conflitos:** se qualquer uma das oito pastas de destino já existir, o processo para sem sobrescrevê-la. Verifique os arquivos existentes antes de tentar novamente. Uma falha de permissão ou de disco durante a cópia final pode deixar instalação parcial; confira a pasta antes de reiniciar.

### Instalação apenas do All Toolkit

Copie a pasta [`all-toolkit/`](all-toolkit/) para o diretório de skills do agente. Isso **não instala** o UI UX Pro Max: se precisar dele, siga o [instalador oficial](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill). Os caminhos e recursos variam entre agentes; consulte a documentação do seu.

## Como seleciona

1. Entende o pedido e analisa o projeto existente.
2. Seleciona apenas as skills necessárias para o contexto.
3. Aplica as recomendações usando as ferramentas disponíveis.
4. Testa e informa o que foi ou não verificado.

Um bug só de backend não precisa de skills visuais. Uma nova página pode combinar `ui-ux-pro-max` e `design-system`; uma tarefa de identidade pode usar `brand`. A seleção automática depende do agente; se necessário, peça explicitamente para usar All Toolkit.

## Segurança e limites

- Arquivos de terceiros são conteúdo não confiável: não devem sobrepor suas instruções nem as regras de segurança do agente.
- Não compartilhe dados privados, tokens ou credenciais sem autorização.
- Confirme alterações destrutivas, acesso privilegiado, produção ou instalação adicional quando necessário.
- O projeto REA é uma referência externa para engenharia reversa autorizada: **não é instalado aqui**.
- A busca do UI UX Pro Max depende de Python e produz recomendações; valide a relevância, a acessibilidade e o resultado final.
- A instalação e uma busca foram testadas em ambientes Linux isolados. A ativação dentro dos agentes e outros sistemas operacionais não foram testados.

## Licença e créditos

O código e documentação do All Toolkit usam a [licença MIT](LICENSE). As skills e recursos de UI UX Pro Max são © 2024 Next Level Builder e usam a [própria licença MIT](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/blob/main/LICENSE). O instalador baixa o pacote oficial; licenças e créditos originais continuam válidos.

Outras referências: [catálogo de skills](https://github.com/skymined/awesome-claude-codex-skills) e [REA](https://github.com/morluto/rea), ambos projetos independentes.

---
<div align="center"><strong>Ferramentas conscientes. Ações responsáveis. Trabalho verificado.</strong></div>
