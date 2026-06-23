# ~/.config/fish/config-linux.fish

if test -x /home/linuxbrew/.linuxbrew/bin/brew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

if type -q eza
    alias ll "eza -laG --icons --classify --git --all --group-directories-first"
end
