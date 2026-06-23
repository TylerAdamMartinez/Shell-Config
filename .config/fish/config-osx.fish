# ~/.config/fish/config-osx.fish

if test -x /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
    eval (/usr/local/bin/brew shellenv)
end

if type -q eza
    alias ll "eza -laG --icons --classify --git --all --group-directories-first"
end
