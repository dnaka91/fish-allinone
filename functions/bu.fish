function bu --description 'upgrade all brew formulae and casks'
    echo running brew upgrade ...
    brew upgrade
    or return

    # filter casks that would always update
    for cask in (brew cask outdated --greedy --verbose)
        if test ! (string match -e '(latest) != latest' $cask)
            set -a casks (string split ' ' $cask)[1]
        end
    end

    echo running brew cask upgrade ...
    brew cask upgrade $casks
    or return

    echo running brew cleanup ...
    brew cleanup --prune=0 -s
end