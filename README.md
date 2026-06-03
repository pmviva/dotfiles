# **Dotfiles**

1. About
2. Installing mandatory tools
3. Installing
4. What gets managed
5. Notes
6. Authors
7. Contributing

## About

This repository contains my shell profiles, editor settings, Git configuration, and general-purpose scripts shared across the computers I use.

## Installing mandatory tools

Install the mandatory software tools with Homebrew:

```bash
curl -fsSL https://raw.githubusercontent.com/pmviva/dotfiles/main/brew/Brewfile | brew bundle --file=-
```

The mandatory tools include utilities such as `bat`, `chezmoi`, `dust`, `eza`, `fastfetch`, `fd`, `fzf`, `gh`, `lazydocker`, `lazygit`, `midnight-commander`, `neovim`, `pandoc`, `pastel`, `ripgrep`, `starship`, `tlrc`, `tmux`, `tree-sitter-cli`, and `zoxide`.

## Installing

```bash
chezmoi init --apply --ssh pmviva
```

During initialization, chezmoi will ask for my GitHub GPG signing key.

## What gets managed

* Chezmoi data and shared templates used to render managed files
* General-purpose scripts in `~/.local/bin`
* Git configuration
* Konsole profile and color scheme
* Midnight Commander profile and color scheme
* NPM configuration
* Shell configuration
* Starship prompt
* Tmux configuration
* VS Code settings

## Notes

Some files are applied only on specific operating systems.

Linux receives files such as `.config/Code` and `.local/share/konsole`. macOS receives files under `Library`.

Target-specific rules are controlled in `.chezmoiignore`:

| Rule | Applied when |
|------|--------------|
| `.config/Code` | Linux only |
| `.local/share/konsole` | Linux only |
| `Library` | macOS only |
| `.local/bin/remove-log-files.zsh` | Linux only; the script must be run as `root` or with `sudo` |

Scripts in `~/.local/bin` are reusable utilities; their availability on each installation is controlled by `.chezmoiignore`.

Available scripts:

| Script | Purpose |
|--------|---------|
| `clean-home.zsh` | Remove generated local configuration and cache directories |
| `install-node.zsh` | Install NVM and optionally Node.js |
| `install-rust.zsh` | Install Rustup |
| `install-sdkman.zsh` | Install SDKMAN, Java, and optional JVM tools |
| `install-vscode-extensions.zsh` | Install the preferred VS Code extensions |
| `remove-log-files.zsh` | Remove and truncate Linux log files |

Tmux configuration:

Tmux uses `Ctrl-a` as the prefix key. TPM is bootstrapped automatically when tmux starts.

Available tmux plugin commands:

| Keymap | Purpose |
|--------|---------|
| `prefix + Ctrl-r` | Restore sessions with tmux-resurrect |
| `prefix + Ctrl-s` | Save sessions with tmux-resurrect |
| `prefix + I` | Install plugins |
| `prefix + U` | Update plugins |
| `prefix + alt + u` | Remove plugins that are no longer configured |

## Authors

* Pablo Martin Viva [pmviva@gmail.com](mailto:pmviva@gmail.com)

## Contributing

1. Clone it (`git clone https://github.com/pmviva/dotfiles.git`)
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit`)
4. Push to the branch (`git push -u origin feature/my-new-feature`)
5. Create a new Pull Request
