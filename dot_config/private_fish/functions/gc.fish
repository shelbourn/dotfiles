function gc --description 'Git commit (interactive message with vi)'
    # logical branch if no args
    # enters vi for verbose git commit messages
    if test -z $argv
        git commit
        return
    end

    # logical branch with args
    # bypasses normal git commit message vi for verbose messages
    git commit -m $argv
end
