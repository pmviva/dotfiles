# **Dotfiles**

1. About
2. Installing
3. What gets managed
4. Notes
5. Authors
6. Contributing

## About

This repository contains my shell profiles, editor settings, Git configuration, and general-purpose scripts shared across the computers I use.

## Installing

```bash
chezmoi init --apply pmviva
```

During initialization, chezmoi will ask for my GitHub GPG signing key.

## What gets managed

* Shell configuration
* Git configuration
* Vim configuration
* VS Code settings
* Starship prompt
* General-purpose scripts in `~/.local/bin`

## Notes

Some files are applied only on specific operating systems.

Linux receives files such as `.config/Code` and `.local/share`. MacOS receives files under `Library`.

OS-specific rules are controlled in `.chezmoiignore`:

| Rule | Applied when |
|------|--------------|
| `.config/Code` | Linux only |
| `.local/share` | Linux only |
| `Library` | macOS only |
| `.local/bin/remove-log-files.sh` | Linux only, and only for the `root` user |

Scripts in `~/.local/bin` are reusable utilities I want available on every installation; they are not mandatory manual setup steps.

## Authors

* Pablo Martin Viva [pmviva@gmail.com](mailto:pmviva@gmail.com)

## Contributing

1. Clone it (`git clone https://github.com/pmviva/dotfiles.git`)
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit`)
4. Push to the branch (`git push -u origin feature/my-new-feature`)
5. Create a new Pull Request
