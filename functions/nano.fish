function nano --description 'use micro instead of nano'
    if test -x (which micro)
        micro $argv
    else
        /usr/local/bin/nano $argv
    end
end