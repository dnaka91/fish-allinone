function cat --description 'use bat instead of cat'
    if command -s bat > /dev/null
        bat $argv
    else
        /bin/cat $argv
    end
end