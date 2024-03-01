function push_new --description 'Pushes an untracked branch on local to origin'
    set local_branch (git rev-parse --abbrev-ref HEAD)
    git push origin -u $local_branch
end
