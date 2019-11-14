function git-squeeze --description 'do a git squash merge (like GitHub squash merge)'
    test -n $argv[1]
    and set msg (git log --format=%s --reverse HEAD..$argv[1] | head -n 1)
    and git merge --squash $argv[1]
    and git commit -m $msg
end