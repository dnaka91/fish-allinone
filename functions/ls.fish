function ls --description 'use exa instead of ls'
    if command -s exa >/dev/null
        exa $argv
    else
        /bin/ls $argv
    end
end
