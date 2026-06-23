# Install List

This repo is Rust-first for command-line tooling. If a reliable Rust CLI exists, prefer it over older C, Go, Python, or shell-based alternatives.

## Bootstrap

Install Rust, then run:

```sh
./scripts/bootstrap.sh
```

For remote install:

```sh
curl -fsSL https://raw.githubusercontent.com/TylerAdamMartinez/Shell-Config/current-setup/scripts/bootstrap.sh | bash
```

The canonical Cargo tool list lives in [Cargo.toml](./Cargo.toml) under:

```toml
[workspace.metadata.shell-config.cargo-tools]
```

## Cargo Tools

### Cargo Utilities

| Tool | Purpose |
| --- | --- |
| `cargo-binstall` | Install prebuilt Cargo binaries when available |
| `cargo-update` | Update installed Cargo binaries |
| `cargo-edit` | Manage Cargo dependencies from the CLI |
| `cargo-nextest` | Fast Rust test runner |
| `cargo-watch` | Run Cargo commands when files change |

### Shell And Navigation

| Tool | Purpose |
| --- | --- |
| `zoxide` | Smarter `cd` |
| `eza` | Rust replacement for `ls` |
| `bat` | Rust replacement for `cat` |
| `starship` | Cross-shell prompt |
| `zellij` | Terminal workspace and multiplexer |
| `fd-find` | Rust replacement for `find` |
| `ripgrep` | Rust replacement for `grep` |
| `ripgrep_all` | Search PDFs, archives, docs, and more with ripgrep |
| `television` | Rust fuzzy finder and workspace navigator |
| `skim` | Rust fuzzy finder for classic filter workflows |
| `yazi-fm` | Terminal file manager |
| `yazi-cli` | Yazi helper CLI |

### Development

| Tool | Purpose |
| --- | --- |
| `git-delta` | Better Git diff pager |
| `just` | Project command runner |
| `mise` | Runtime and tool version manager |
| `sd` | Rust replacement for common `sed` substitutions |
| `xh` | Rust HTTP client inspired by HTTPie |
| `hyperfine` | Command-line benchmarking |
| `tokei` | Code statistics |
| `tealdeer` | Fast `tldr` client |
| `choose` | Human-friendly `cut` and `awk` alternative |
| `grex` | Generate regular expressions from examples |

### System Tools

| Tool | Purpose |
| --- | --- |
| `procs` | Rust replacement for `ps` |
| `bottom` | System monitor |
| `du-dust` | Rust replacement for `du` |
| `oxker` | Docker container TUI |
| `macchina` | Rust system information fetcher |

### Editor Support

| Tool | Purpose |
| --- | --- |
| `marksman` | Markdown language server |
| `taplo-cli` | TOML formatter and language server |

## Optional Non-Cargo Dependencies

Some tools are still best installed outside Cargo:

| Tool | Purpose | Install |
| --- | --- | --- |
| `fish` | Shell | `brew install fish` or `sudo apt install fish` |
| `ffmpeg` | Media tooling, including `ffprobe` | `brew install ffmpeg` or `sudo apt install ffmpeg` |
| `poppler` | PDF tools, including `pdftoppm` | `brew install poppler` or `sudo apt install poppler-utils` |
| `rust-analyzer` | Rust language server | `rustup component add rust-analyzer` |
| `clangd` | C/C++ language server | `brew install llvm` or `sudo apt install clangd` |
| `node` | JavaScript tooling and language servers | Prefer `mise use -g node@lts` after bootstrap |
| `prettier` | JS/TS/HTML/CSS/Markdown formatter | `npm install -g prettier` |
| `typescript-language-server` | JS/TS language server | `npm install -g typescript typescript-language-server` |
| `vscode-langservers-extracted` | HTML/CSS/JSON language servers | `npm install -g vscode-langservers-extracted` |
| `yaml-language-server` | YAML language server | `npm install -g yaml-language-server` |

## Fonts

Install a Nerd Font for icon support in `eza`, `starship`, `yazi`, and WezTerm. The current WezTerm config expects `0xProto Nerd Font`.

Linux font install example:

```sh
mkdir -p ~/.fonts
fc-cache -fv
```

macOS font install example:

```sh
brew install --cask font-0xproto-nerd-font
```
