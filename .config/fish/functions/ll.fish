if type -q eza
    function ll --wraps='eza -laG --icons --classify --git --all --group-directories-first --links --header' --description 'List with eza'
        eza -laG --icons --classify --git --all --group-directories-first --links --header $argv
    end
end
