function ls --description 'use exa instead of ls'
    if test -x (which exa)
        exa $argv
    else
        /bin/ls $argv
    end
end