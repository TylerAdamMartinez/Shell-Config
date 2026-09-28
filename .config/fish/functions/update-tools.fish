# ~/.config/fish/functions/update-tools.fish

function update-tools --description 'Update system packages and Cargo-installed CLI tools'
    set -l os (uname -s)

    echo "==> Updating tools on $os"

    switch $os
        case Darwin
            # macOS — Homebrew
            if type -q brew
                echo "==> Updating Homebrew..."
                brew update
                brew upgrade
                brew upgrade --cask
                brew cleanup
            else
                echo "==> Homebrew is not installed; skipping."
            end

        case Linux
            # Fedora — DNF
            if test -f /etc/fedora-release
                if type -q dnf
                    echo "==> Authenticating sudo..."
                    if not sudo -v
                        echo "sudo authentication failed."
                        return 1
                    end

                    echo "==> Updating Fedora packages..."
                    sudo dnf upgrade --refresh -y

                    echo "==> Removing unused packages..."
                    sudo dnf autoremove -y

                    echo "==> Cleaning DNF cache..."
                    sudo dnf clean all
                else
                    echo "==> DNF is not installed; skipping."
                end
            else
                echo "==> Unsupported Linux distribution."
            end

        case '*'
            echo "==> Unsupported operating system: $os"
    end

    # Rust / Cargo tools
    if type -q cargo; and type -q cargo-install-update
        echo "==> Updating Cargo-installed tools..."
        cargo install-update --all --locked
    else if type -q cargo
        echo "==> cargo-install-update is not installed; skipping Cargo updates."
    end

    echo "==> Tool updates finished."
end
