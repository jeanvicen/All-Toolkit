#!/usr/bin/env bash
# Install All Toolkit + UI/UX Pro Max into the current project. No global changes.
set -euo pipefail
version=2.15.0
here="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
usage() { printf 'Usage: bash install.sh --agent claude|codex|universal\nRun from the target project directory. Node.js, npm/npx, Python 3 and network access required.\n'; }
[[ ${1:-} == --agent && $# -eq 2 ]] || { usage; exit 2; }
case "$2" in
  claude) platform=claude; root=.claude/skills;;
  codex) platform=codex; root=.agents/skills;;
  universal) platform=universal; root=.agents/skills;;
  *) usage; exit 2;;
esac
for cmd in node npx python3; do command -v "$cmd" >/dev/null 2>&1 || { echo "Missing required command: $cmd" >&2; exit 1; }; done
[[ -f "$here/all-toolkit/SKILL.md" ]] || { echo 'Cannot find all-toolkit/SKILL.md beside this installer.' >&2; exit 1; }
project="$(pwd -P)"
# Avoid changing a path redirected elsewhere by a symlink.
for part in "${root%%/*}" "$root"; do [[ ! -L "$project/$part" ]] || { echo "Refusing symlinked destination: $project/$part" >&2; exit 1; }; done
names=(all-toolkit ui-ux-pro-max banner-design brand design-system design slides ui-styling)
for name in "${names[@]}"; do
  [[ ! -e "$project/$root/$name" && ! -L "$project/$root/$name" ]] || { echo "Already exists: $project/$root/$name. Nothing installed; inspect it first." >&2; exit 1; }
done
stage="$(mktemp -d)"
trap 'rm -rf -- "$stage"' EXIT
printf 'Installing All Toolkit and UI/UX Pro Max CLI %s for %s into %s/%s\n' "$version" "$platform" "$project" "$root"
printf 'This downloads and executes the official npm package in a temporary directory.\n'
(cd "$stage" && npx --yes "ui-ux-pro-max-cli@$version" init --ai "$platform")
for name in "${names[@]:1}"; do [[ -f "$stage/$root/$name/SKILL.md" ]] || { echo "Upstream package did not provide $name; nothing copied to project." >&2; exit 1; }; done
[[ -f "$stage/$root/ui-ux-pro-max/scripts/search.py" ]] || { echo 'Search script missing; nothing copied.' >&2; exit 1; }
mkdir -p -- "$project/$root"
# Do not overwrite if a second process populated a destination during staging.
for name in "${names[@]}"; do
  [[ ! -e "$project/$root/$name" && ! -L "$project/$root/$name" ]] || { echo "Destination appeared during installation: $name. Stopping." >&2; exit 1; }
done
cp -R -- "$here/all-toolkit" "$project/$root/all-toolkit"
for name in "${names[@]:1}"; do cp -R -- "$stage/$root/$name" "$project/$root/$name"; done
printf '\nInstalled 8 skills in %s/%s. Restart your agent if needed.\n' "$project" "$root"
printf 'Third-party skills: Next Level Builder, MIT. See https://github.com/nextlevelbuilder/ui-ux-pro-max-skill/blob/main/LICENSE\n'
