#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
manifest="$repo_root/Cargo.toml"

if [[ -f "$HOME/.cargo/env" ]]; then
    # shellcheck disable=SC1091
    source "$HOME/.cargo/env"
fi

if ! command -v cargo >/dev/null 2>&1; then
    echo "Cargo is required. Install Rust first:"
    echo "  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
    exit 1
fi

if [[ ! -f "$manifest" ]]; then
    ref="${SHELL_CONFIG_REF:-current-setup}"
    manifest="$(mktemp -t shell-config-cargo.XXXXXX.toml)"
    curl -fsSL "https://raw.githubusercontent.com/TylerAdamMartinez/Shell-Config/$ref/Cargo.toml" -o "$manifest"
fi

tool_names() {
    awk '
        $0 == "[workspace.metadata.shell-config.cargo-tools]" { in_section = 1; next }
        in_section && /^\[/ { exit }
        in_section && /^[[:space:]]*[A-Za-z0-9_.-]+[[:space:]]*=/ {
            line = $0
            sub(/#.*/, "", line)
            sub(/=.*/, "", line)
            gsub(/^[[:space:]]+|[[:space:]]+$/, "", line)
            print line
        }
    ' "$manifest"
}

install_package() {
    local package="$1"

    case "$package" in
        cargo-binstall)
            if ! command -v cargo-binstall >/dev/null 2>&1; then
                cargo install --locked cargo-binstall
            fi
            ;;
        cargo-update)
            if ! command -v cargo-install-update >/dev/null 2>&1; then
                cargo binstall -y cargo-update || cargo install --locked cargo-update
            fi
            ;;
        taplo-cli)
            cargo binstall -y taplo-cli || cargo install --locked taplo-cli --features lsp
            ;;
        yazi-fm | yazi-cli)
            cargo binstall -y "$package" || cargo install "$package"
            ;;
        *)
            cargo binstall -y "$package" || cargo install --locked "$package"
            ;;
    esac
}

while IFS= read -r package; do
    [[ -z "$package" ]] && continue
    echo "Installing $package"
    install_package "$package"
done < <(tool_names)

if command -v cargo-install-update >/dev/null 2>&1; then
    cargo install-update --all --locked
fi
