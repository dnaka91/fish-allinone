function ll --description 'use eza instead of ls -l'
    if command -s eza >/dev/null
        eza -l --git $argv
    else
        /bin/ls -l $argv
    end
end
