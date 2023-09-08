function ls --description 'use eza instead of ls'
    if command -s eza >/dev/null
        eza $argv
    else
        /bin/ls $argv
    end
end
