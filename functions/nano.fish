function nano --description 'use micro instead of nano'
    if command -s micro > /dev/null
        micro $argv
    else
        /usr/local/bin/nano $argv
    end
end