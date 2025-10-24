if type -q exa
    function ll --wraps='exa -laG --icons --classify --git --all --group-directories-first --links --header' --description 'List with exa'
        exa -laG --icons --classify --git --all --group-directories-first --links --header $argv
    end
end
