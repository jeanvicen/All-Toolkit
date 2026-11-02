<div align="center">

# ◈ ALL TOOLKIT

### The right skill for the work in front of you.

A practical starting point for agents to select and apply specialist guidance.

[Install for Claude Code](#install-for-claude-code) · [The skills](#the-skills) · [Other agents](#other-agents) · [Credits](#credits--licenses)

[Português](README.md) · **English**

</div>

---

## Install for Claude Code

Already using Claude Code? Open a session and paste these one at a time:

```text
/plugin marketplace add jeanvicen/All-Toolkit
```

```text
/plugin install all-toolkit@all-toolkit-marketplace
```

Review the plugin, select the installation scope and confirm. This installs **All Toolkit** and automatically fetches the official **UI UX Pro Max** plugin as a dependency. Run `/reload-plugins` or restart the session if prompted. The design search requires Python 3.

> This is an independent marketplace, not an Anthropic-official plugin. The installation also fetches code and data from [UI UX Pro Max](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill), by Next Level Builder. It uses a pinned upstream revision; updates must be reviewed and published here.

### Getting started

- Check `/plugin` for All Toolkit and UI UX Pro Max.
- Ask for your task normally; Claude may select relevant skills based on their descriptions.
- Explicitly invoke the router using `/all-toolkit:all-toolkit`.
- Example: “Use All Toolkit to plan and create an accessible landing page for my project.”

<details>
<summary><strong>Prefer the terminal?</strong></summary>

Outside a Claude Code session:

```bash
claude plugin marketplace add jeanvicen/All-Toolkit
claude plugin install all-toolkit@all-toolkit-marketplace
```

Start or restart Claude Code. The default installation scope is user; consult the [official scope guide](https://code.claude.com/docs/en/plugins/install).

</details>

## How it works

**Understand → Select → Apply → Verify**

All Toolkit instructs the agent to inspect the goal and existing project, select only relevant skills, use its available tools responsibly, and verify the result. For a nonvisual backend fix, it can skip the UI skills.

Skills are instructions, not an upgrade to the AI model. Skill discovery and results depend on the agent, context, tools and configuration; automatic selection and compatibility with every AI are not guaranteed.

## The skills

| Skill | Focus |
| --- | --- |
| **All Toolkit** | Select specialist guidance and verify work |
| **UI UX Pro Max** | Interface, accessibility and design search |
| **Design** | Creative direction and visual design |
| **Brand** | Brand identity and materials |
| **Design System** | Tokens, components and consistency |
| **UI Styling** | Interface styling and polish |
| **Banner Design** | Banners and visual assets |
| **Slides** | Presentations and slides |

The last seven belong to **UI UX Pro Max**, maintained by Next Level Builder. The marketplace installer fetches the upstream plugin; All Toolkit is an independent integration.

## Other agents

The existing project-local installer supports **Codex** and Agent Skills-compatible hosts. It requires Git, Bash, Node.js with npm/npx, Python 3, and network access. On Linux/macOS or Windows with WSL/Git Bash:

```bash
git clone https://github.com/jeanvicen/All-Toolkit.git
cd your-project
bash /path/to/All-Toolkit/install.sh --agent codex
```

Replace the path with the actual clone location. Use `--agent universal` for the `.agents/skills/` layout, or `--agent claude` for the previous project-local Claude setup. The installer downloads and runs a pinned official CLI in a temporary directory and refuses to overwrite any of the eight existing destination folders. Disk or permission errors during the final copy can leave a partial install; inspect the destination before retrying.

To install the router alone, copy [`all-toolkit/`](all-toolkit/) to your host's documented skill directory. This does **not** install UI UX Pro Max. See the [Agent Skills specification](https://agentskills.io/specification) and your agent's documentation.

## Safety & limitations

- Review third-party code and instructions before installing or executing tools. Never expose secrets or private data without authorization.
- Obtain permission for destructive operations, privileged access and production changes.
- Design suggestions require relevance checks and actual testing. Python 3 is required for the UI UX Pro Max search.
- [REA](https://github.com/morluto/rea) and the [skill catalog](https://github.com/skymined/awesome-claude-codex-skills) are references, not automatically installed. REA is for authorized reverse engineering only.
- On Linux, we validated the manifests and installed the marketplace in an isolated Claude Code 2.1.100 environment: the router was enabled, its dependency was downloaded with seven skills, and the search script returned data. We did not test an authenticated agent session or model-driven selection. The previous project installer was tested in Claude, Codex and universal layouts, also on Linux.

## Credits & licenses

- All Toolkit: [MIT](LICENSE).
- UI UX Pro Max: © 2024 Next Level Builder, [MIT license](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/blob/main/LICENSE); see [third-party notices](THIRD_PARTY_NOTICES.md).
- Other referenced projects are independent and have their own licenses.

---
<div align="center"><strong>Thoughtful tools. Responsible action. Verified work.</strong></div>
