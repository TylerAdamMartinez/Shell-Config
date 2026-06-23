#!/usr/bin/env bash
set -e

cargo install cargo-binstall
cargo install cargo-update

TOOLS=(
    zoxide
    eza
    bat
    starship
    zellij
    fd-find
    ripgrep
    procs
    oxker
    du-dust
    bottom
    television
    marksman
)

for tool in "${TOOLS[@]}"; do
    cargo binstall -y "$tool" || cargo install --locked "$tool"
done

cargo binstall -y taplo-cli || cargo install taplo-cli --features lsp
cargo binstall -y yazi-fm yazi-cli || {
    cargo install yazi-fm
    cargo install yazi-cli
}

cargo install-update --all --locked
