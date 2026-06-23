# <p align="center"> [Tyler Adam Martinez's](https://github.com/TylerAdamMartinez) Shell Configuration

Rust-first shell, editor, terminal, and Git configuration.

## Setup

### 1. Install Fish

Linux:

```sh
sudo apt-get update
sudo apt-get install fish
```

macOS:

```sh
brew install fish
```

Set Fish as the default shell:

```sh
chsh -s "$(which fish)"
```

### 2. Install Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
```

### 3. Bootstrap CLI Tools

```sh
./scripts/bootstrap.sh
```

The bootstrap script reads the Cargo tool list from [Cargo.toml](./Cargo.toml), installs tools with `cargo-binstall` when possible, falls back to `cargo install`, and updates installed Cargo binaries.

See [INSTALL_LIST.md](./INSTALL_LIST.md) for the installed tools and optional non-Cargo dependencies.

