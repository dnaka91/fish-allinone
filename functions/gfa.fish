function gfa --description 'run git fetch in all subfolders'
    set cur (pwd)
    for d in (find -s . -type d -maxdepth 5)
        if test -d $d/.git
            if test $d = '.'
                set d $cur
            end

            echo running git fetch in $d ...
            cd $d

            git fetch -p --all

            set git_status (git status --porcelain)
            set git_branch (git branch --show-current)

            if test -z "$git_status" -a -n "$git_branch"
                git merge --ff-only
            end

            cd $cur
        end
    end
end
