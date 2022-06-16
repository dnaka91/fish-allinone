function bci --wraps='brew info --cask' --description 'alias for brew info --cask'
    brew info --cask $argv
end
