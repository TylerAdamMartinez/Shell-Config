### Prerequisites
Before installing the tools below, ensure you have **Cargo** (Rust's package manager), **GitHub CLI (gh)**, and **Fisher** (Fish plugin manager) installed.

#### **1. Install Cargo (Rust)**
Cargo is needed to install many of the CLI tools.
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

#### **2. Install GitHub CLI (gh)**
GitHub CLI is useful for interacting with GitHub from your terminal.

**Ubuntu / Pop!_OS / Debian-based:**
```sh
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```

**macOS:**
```sh
brew install gh
```

**Windows (Winget):**
```powershell
winget install --id GitHub.cli
```

#### **3. Install Fisher (Fish Plugin Manager)**
Fisher is used to manage Fish shell plugins.
```sh
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

---

### Essential Tools
After installing **Cargo**, **GitHub CLI**, and **Fisher**, install the following tools:

### Shell Enhancements
| Tool  | Description | Installation |
|--------|------------|--------------|
| **Zoxide** | Smarter `cd` command (jump to directories quickly) | `cargo install zoxide` |
| **Exa** | Modern `ls` replacement | `cargo install exa` |
| **Bat** | Enhanced `cat` command | `cargo install bat` |
| **Yazi** | TUI-based file explorer | `brew install yazi` |
| **Htop** | An interactive process viewer | `brew install htop` |
| **Starship** | Cross-shell prompt | `cargo install starship --locked` |

### Productivity & Navigation
| Tool  | Description | Installation |
|--------|------------|--------------|
| **Zellij** | Terminal multiplexer | `cargo install zellij` |
| **Fzf** | Fuzzy file finder | `sudo apt install fzf` |
| **Fd** | Faster `find` alternative | `cargo install fd-find` |
| **Ripgrep (rg)** | Faster search tool | `cargo install ripgrep` |
| **Procs** | Modern process viewer | `cargo install procs` |
| **Ghq** | Repository manager | `brew install ghq` (macOS) / `go install github.com/x-motemen/ghq@latest` (Linux) |
| **Peco** | Interactive filtering CLI tool | `brew install peco` (macOS) / `sudo apt install peco` (Linux) |

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
| **Markdown** | `marksman` | `brew install marksman` (macOS) / `cargo install marksman` (Linux) |
| **Python** | `ruff` | `pip install ruff` |
| **Rust** | `rust-analyzer` | `rustup component add rust-analyzer` |
| **TOML** | `taplo` | `cargo install taplo-cli --features lsp` |
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

### Configuración para Teclado Español

| Aplicación  | Descripción                                        | Comando de instalación                                              |
| ----------- | -------------------------------------------------- | ------------------------------------------------------------------- |
| **Espanso** | Text expander for easy Spanish accents and phrases | `brew install espanso` (macOS) / `sudo apt install espanso` (Linux) |


#### Espanso Configuration
Once installed, you’ll need to set up Espanso with your preferred shortcuts.

📌 Go to:  
`~/.config/espanso/match/base.yml`  
in this repository to get the common Spanish accents and phrase configurations I use.  

After updating the `base.yml`, reload Espanso:

```bash
espanso restart
```
Now you'll be able to type accented letters and Spanish phrases with simple triggers (like :a → á, :gracias → ¡Gracias!).


--- 


### Final Step
After installing everything, restart your terminal to ensure the changes take effect.

