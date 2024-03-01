function untrack --description 'Temporarily untracks file with git diffs'
    # sets the argument to readable local var
    set file_to_untrack $argv[1]

    # if an argument is not passed then untrack the default file (.python-version)
    if test -z $file_to_untrack
        echo "...ignoring changes to .python-version"
        git update-index --assume-unchanged .python-version

        return
    end

    # if an argument is passed then untrack the file specified
    echo "...ignoring changes to $file_to_untrack"
    git update-index --assume-unchanged $file_to_untrack
end
