# ~/.config/fish/functions/shoka.fish

function shoka
    if test (count $argv) -eq 0
        set argv tui
    end
    switch "$argv[1]"
        case cd tui
            set -l tmp (mktemp); or return 1
            set -lx SHOKA_CD_OUT $tmp
            command shoka $argv
            set -l rc $status
            set -l dest ""
            if test $rc -eq 0
                set dest (cat $tmp)
            end
            rm -f $tmp
            if test $rc -eq 0; and test -n "$dest"
                cd -- $dest
            end
            return $rc
        case '*'
            command shoka $argv
    end
end
