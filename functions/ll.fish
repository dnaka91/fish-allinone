function ll --description 'use exa instead of ls -l'
    if test -x (which exa)
        exa -l $argv
    else
        /bin/ll -l $argv
    end
end