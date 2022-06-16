function ll --description 'use exa instead of ls -l'
    if command -s exa >/dev/null
        exa -l $argv
    else
        /bin/ls -l $argv
    end
end
