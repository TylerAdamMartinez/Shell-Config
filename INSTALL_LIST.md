### Prerequisites

Before installing the tools below, ensure you have **Cargo (Rust)** and **Fisher** installed.

#### 1. Install Cargo (Rust)

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
```

#### Install all Cargo tools

This repository includes a script that installs all required Cargo-based tools (using **cargo-binstall** when available for much faster installs) and updates all installed Cargo packages afterward.

```sh
curl -fsSL https://raw.githubusercontent.com/TylerAdamMartinez/Shell-Config/current-setup/scripts/install-cargo-tools.sh | bash
```

The script installs the following tools:

##### Cargo Utilities

| Tool               | Description                                                                   |
| ------------------ | ----------------------------------------------------------------------------- |
| **cargo-binstall** | Downloads pre-built binaries instead of compiling from source when available. |
| **cargo-update**   | Updates all installed Cargo packages.                                         |

##### Shell Enhancements

| Tool           | Description                                                   |
| -------------- | ------------------------------------------------------------- |
| **Zoxide**     | Smarter `cd` command for quickly jumping between directories. |
| **Eza**        | Modern replacement for `ls`.                                  |
| **Bat**        | Enhanced `cat` with syntax highlighting.                      |
| **Starship**   | Fast, cross-shell prompt.                                     |
| **Television** | Fast fuzzy finder and workspace navigator.                    |
| **Yazi**       | Terminal-based file manager.                                  |

##### Productivity & Navigation

| Tool             | Description                                 |
| ---------------- | ------------------------------------------- |
| **Zellij**       | Terminal multiplexer.                       |
| **Fd**           | Faster alternative to `find`.               |
| **Ripgrep (rg)** | Extremely fast recursive text search.       |
| **Procs**        | Modern replacement for `ps`.                |
| **Oxker**        | Terminal UI for managing Docker containers. |

##### Disk & System Tools

| Tool       | Description                               |
| ---------- | ----------------------------------------- |
| **Dust**   | Visual disk usage analyzer.               |
| **Bottom** | Modern system monitor and process viewer. |

##### Development Tools

| Tool         | Description                         |
| ------------ | ----------------------------------- |
| **Marksman** | Markdown language server for Helix. |
| **Taplo**    | TOML formatter and language server. |

Finally, the script automatically updates every installed Cargo package:

```sh
cargo install-update --all --locked
```

So your Cargo-based tools stay on their latest compatible versions.


### Essential Tools
After installing **Cargo** and **Fisher**, install the following tools:

### Shell Enhancements
| Tool  | Description | Installation |
|--------|------------|--------------|
| | | |

### Productivity & Navigation
| Tool  | Description | Installation |
|--------|------------|--------------|
| **Fzf** | Fuzzy file finder | `sudo apt install fzf` |
| **Posting** | TUI for api requests testing | `brew install posting` |
| **Ghq** | Repository manager | `brew install ghq` (macOS) / `go install github.com/x-motemen/ghq@latest` (Linux) |
| **Peco** | Interactive filtering CLI tool | `brew install peco` (macOS) / `sudo apt install peco` (Linux) |
| **ffprobe** | Inspect media metadata (part of FFmpeg) | `brew install ffmpeg` (macOS) / `sudo apt install ffmpeg` (Linux) |
| **pdftoppm** | Convert PDF pages to images (PNG/JPEG) from Poppler | `brew install poppler` (macOS) / `udo apt install poppler-utils` (Linux) |
| **Htop** | An interactive process viewer | `brew install htop` |

### Node.js Version Manager
| Tool  | Description | Installation |
|--------|------------|--------------|
| **NVM** | Node.js version manager | <code>curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh \| bash</code> |
| **NVM for Fish** | Fish-compatible NVM wrapper | `fisher install jorgebucaran/nvm.fish` |

### 🧬 Helix LSP Setup

| Language  | LSP | Installation |
|-----------|-----|-------------|
| **C** | `clangd` | `sudo apt install clangd` (Linux) / `brew install llvm` (macOS) |
| **C#** | `omnisharp` | `dotnet tool install --global omnisharp` |
| **CSS** | `vscode-css-languageserver` | `npm install -g vscode-langservers-extracted` |
| **Dockerfile** | `docker-langserver` | `npm install -g dockerfile-language-server-nodejs` |
| **Fish** | `fish-language-server` | `npm install -g fish-lsp` |
| **HTML** | `vscode-html-languageserver` | `npm install -g vscode-langservers-extracted` |
| **Java** | `jdtls` | `brew install jdtls` (macOS) / Install via [Eclipse JDT Language Server](https://github.com/eclipse-jdtls/eclipse.jdt.ls) |
| **JavaScript** | `typescript-language-server` | `npm install -g typescript typescript-language-server` |
| **TypeScript** | `typescript-language-server` | `npm install -g typescript typescript-language-server` |
| **JSON** | `vscode-json-languageserver` | `npm install -g vscode-langservers-extracted` |
| **JSX/TSX** | `typescript-language-server` | `npm install -g typescript typescript-language-server` |
| **Kotlin** | `kotlin-language-server` | `brew install kotlin-language-server` (macOS) / `sdk install kotlin` (Linux) |
| **Python** | `ruff` | `pip install ruff` |
| **Rust** | `rust-analyzer` | `rustup component add rust-analyzer` |
| **YAML** | `yaml-language-server` | `npm install -g yaml-language-server` |

### Helix Formatter Setup

| Formatter  | Description | Installation Command |
|------------|------------|-----------------------|
| **Prettier** | Prettier is a versatile code formatter | `npm install -g prettier` |

### Installing Nerd Fonts
Some tools require a **Nerd Font** for proper icon support.

#### Steps to Install a Nerd Font
1. **Download a Nerd Font** from [nerdfonts.com](http://nerdfonts.com/).
2. **Unzip and move it** to your local font directory:
   ```sh
   mkdir -p ~/.fonts && mv [FONT_NAME].ttf ~/.fonts/
   ```
3. **Update the font cache**:
   ```sh
   fc-cache -fv
   ```
4. **Change your terminal font** to use the new Nerd Font.

--- 

### Final Step
After installing everything, restart your terminal to ensure the changes take effect.

