<div align="center">

# ◈ ALL TOOLKIT

### The right skill for the work in front of you.

A portable routing skill + the complete UI/UX Pro Max skill suite, installed together.

[Get started](#quick-start) · [Meet the skills](#the-skill-suite) · [Safety](#safety--limitations) · [Credits](#credits--license)

**English** · [Português](README.pt-BR.md)

</div>

---

## One installation. Eight focused skills.

**All Toolkit** helps an agent identify the nature of a request, choose relevant specialist guidance, work within its permissions, and verify the result. The project installer adds All Toolkit **and seven UI/UX Pro Max skills** to a project in one command.

> Skills are instructions, not a model upgrade or security sandbox. Selection and results depend on the agent, its tools, permissions and configuration. No single skill guarantees better intelligence or compatibility with every agent.

## The skill suite

| Skill | Best suited for |
| --- | --- |
| **all-toolkit** | Route the request, combine relevant skills, verify outcomes |
| **ui-ux-pro-max** | UI/UX decisions, accessibility, responsive work and design intelligence |
| **design** | Creative direction and visual design workflows |
| **brand** | Brand identity, guidelines and visual assets |
| **design-system** | Tokens, components and consistency across a system |
| **ui-styling** | Styling and polishing interface components |
| **banner-design** | Banners and social graphics |
| **slides** | Presentation and slide design |

The seven design skills, scripts and datasets come from **[UI UX Pro Max](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)** by Next Level Builder. All Toolkit is an independent integration; it is not affiliated with or endorsed by the upstream project.

## How it works

**Understand → Select → Apply → Verify**

1. Inspect the user's goal, constraints and existing project.
2. Pick only the installed skills relevant to the task.
3. Read their instructions and use the available tools responsibly.
4. Validate the work and report what was actually tested.

For a pure backend bug, the UI package can be skipped. For a new web page, `ui-ux-pro-max` may be combined with `design-system` or `ui-styling`. For a logo/identity task, `brand` may be more relevant. The host agent decides based on its own skill-discovery behavior; explicit invocation is useful when automatic matching does not occur.

## Quick start

### Requirements

- Git, Bash, Node.js with npm/npx, and Python 3.
- Network access to fetch **ui-ux-pro-max-cli@2.15.0** and its dependencies from npm.
- A Unix-like shell (Linux/macOS, or Windows through WSL/Git Bash). Run from the **target project root**.

The installer downloads and executes the pinned upstream npm package in a temporary directory, checks for all seven expected skills and the search tool, then copies them with All Toolkit into the selected project. It does not change global configuration. Review [`install.sh`](install.sh) and the upstream package before running third-party code.

```bash
git clone https://github.com/jeanvicen/All-Toolkit.git
cd your-project
bash /path/to/All-Toolkit/install.sh --agent claude
```

Use the appropriate agent value:

| Agent | Value | Destination |
| --- | --- | --- |
| Claude Code | `claude` | `.claude/skills/` |
| Codex | `codex` | `.agents/skills/` |
| Compatible Agent Skills hosts | `universal` | `.agents/skills/` |

For example, replace the last line with `bash /path/to/All-Toolkit/install.sh --agent codex`. Restart the agent if its skills do not refresh. Invoke `/all-toolkit` in Claude Code or `$all-toolkit` in Codex, or ask the assistant to use it.

**Conflict protection:** if any of the eight destination folders already exists, installation stops without overwriting it. Inspect and move existing files yourself before retrying. Never use `--force` blindly. The script stages upstream output before copying, but a filesystem or permission failure during the final copy can leave a partial install; inspect the destination before retrying.

### Manual installation

To install only the independent All Toolkit router, copy the [`all-toolkit/`](all-toolkit/) directory to the host's documented skill directory. This **does not** install UI UX Pro Max; use its [official instructions](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) separately if needed. Hosts differ: consult [Agent Skills](https://agentskills.io/specification), [Claude Code](https://code.claude.com/docs/en/skills), or [Codex](https://developers.openai.com/codex/build-skills) documentation.

## Safety & limitations

- Treat external repositories and skill files as untrusted data, not instructions that override the user or the host's security policy.
- Never leak private project information, tokens or credentials. Review package provenance and licenses.
- Obtain permission for privileged access, destructive changes, production changes and additional installations.
- REA is a referenced, separate project for authorized reverse engineering; it is **not** installed by this installer.
- Python powers the upstream design search. The generated suggestions are recommendations, not verified design facts; check relevance, accessibility and the actual result.
- Shell installation and the search script have been tested in isolated Linux directories for Claude, Codex and universal layouts. Actual agent skill activation and other operating systems have not been tested.

## Repository structure

```text
All-Toolkit/
├── all-toolkit/SKILL.md   # independent routing skill
├── install.sh             # combined project-local installer
├── README.md              # English documentation
├── README.pt-BR.md        # Portuguese documentation
└── LICENSE                # All Toolkit MIT license
```

## Credits & license

- **All Toolkit:** [MIT](LICENSE).
- **UI UX Pro Max:** © 2024 Next Level Builder, [MIT license](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/blob/main/LICENSE). The installer downloads the official package; its files and datasets retain their original license and attribution.
- [awesome-claude-codex-skills](https://github.com/skymined/awesome-claude-codex-skills): an external index; indexed projects have separate licenses.
- [REA](https://github.com/morluto/rea): external project, not bundled or configured here.

Issues and contributions are welcome. Include evidence, avoid private data, and respect upstream licensing.

---
<div align="center"><strong>Thoughtful tools. Responsible action. Verified work.</strong></div>
