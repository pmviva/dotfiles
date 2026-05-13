# AGENTS.md

This is a chezmoi source repo for personal dotfiles. Treat source names as chezmoi mappings, not literal target paths.

## Commands

- Use `pnpm`; `package.json` declares `packageManager: pnpm@11.1.1`.
- `pnpm install` runs `lefthook install` via `postinstall`.
- `pnpm-workspace.yaml` explicitly allows Lefthook builds with `allowBuilds.lefthook: true`.
- Commit messages are Conventional Commits; Lefthook validates them with `pnpm exec commitlint --color --edit {1}`.
- Safe verification commands: `chezmoi status`, `chezmoi diff`, and `pnpm exec commitlint --color --edit <commit-msg-file>`.

## Chezmoi conventions

- `dot_*` maps to hidden files, `executable_*` maps to executable targets, and `*.tmpl` is rendered by chezmoi.
- Keep OS/user applicability in `.chezmoiignore`; do not copy those conditionals into managed files unless file content itself must vary.
- Current gates: `.config/Code` and `.local/share` are Linux-only, `Library` is macOS-only, and `.local/bin/remove-log-files.sh` is Linux root-only.
- Repo-only files are intentionally ignored from chezmoi apply: `.atl`, `AGENTS.md`, package files, lockfiles, Lefthook, Commitlint, Renovate, EditorConfig, README, LICENSE, `node_modules`, and git metadata.

## Template flows

- `.chezmoi.yaml.tmpl` prompts once for `signingkey`; `dot_gitconfig.tmpl` consumes it as `[user] signingkey`.
- VS Code settings are shared through `.chezmoitemplates/Code/User/settings.json.tmpl`; Linux and macOS target files are thin wrappers that include that template.

## Do not run casually

- Do not run `chezmoi init --apply`, `chezmoi apply`, or install/cleanup helper scripts during analysis.
- `dot_local/bin/executable_clean-home.sh` is destructive and removes many `$HOME` paths, including `$HOME/workspace`.
- Install helpers such as `install-node`, `install-sdkman`, and `install-vscode-extensions` mutate the machine and may be interactive.
