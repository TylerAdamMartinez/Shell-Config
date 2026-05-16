# ~/.config/fish/config.fish

set fish_greeting ""

fish_vi_key_bindings

# Add this to bind Ctrl + F in insert mode to accept autosuggestion
bind -M insert \cf accept-autosuggestion

if type -q zoxide
    zoxide init fish | source
end

if type -q starship
    starship init fish | source
end

alias ll "ls -l"

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

# Run neofetch on startup
if type -q neofetch
    neofetch
end

function update_everything_once_a_day
    set -l stamp_dir "$HOME/.cache/fish"
    set -l stamp_file "$stamp_dir/last-update"
    set -l today (date +%F)

    mkdir -p "$stamp_dir"

    if test -f "$stamp_file"; and test (cat "$stamp_file") = "$today"
        return
    end

    echo "$today" > "$stamp_file"

    echo "Running daily updates..."

    if type -q brew
        brew update
        brew upgrade
        brew upgrade --cask
        brew cleanup
    end

    if type -q cargo; and type -q cargo-install-update
        cargo install-update --all --locked
    end

    echo "Daily updates finished."
end

if status is-interactive
    update_everything_once_a_day
end
