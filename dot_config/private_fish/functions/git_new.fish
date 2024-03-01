function git_new --description 'Creates a new Git branch using the passed in argument (spaces replaced with hyphens) as the branch name'
    # Assigns the provided branch name (argument) to a var
    set raw_branch_name $argv

    # Parses the provided branch name and replaces ' ' with '-' then assigns it to a var
    set formatted_branch_name (string replace -a ' ' - $raw_branch_name)

    # Creates the new branch with the formatted branch name
    git checkout -b $formatted_branch_name
end
