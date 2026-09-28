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

if type -q shoka
    shoka init-shell fish | source
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

# Run a system summary on startup, preferring Rust tools.
if type -q macchina
    macchina
else if type -q fastfetch
    fastfetch
end

# Activate mise
if type -q mise
    mise activate fish | source
end
