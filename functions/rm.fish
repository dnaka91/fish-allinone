function rm --description 'use rip instead of rm'
    if test -x (which rip)
        rip $argv
    else
        echo "rip not installed"
    end
end