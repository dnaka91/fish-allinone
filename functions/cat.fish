function cat --description 'use bat instead of cat'
    if test -x (which bat)
        bat $argv
    else
        /bin/cat $argv
    end
end