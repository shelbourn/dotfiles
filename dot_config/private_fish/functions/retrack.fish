function retrack --description 'Removes any temporary untracking of file with git diffs'
    # sets the argument to readable local var
    set file_to_retrack $argv[1]

    # if an argument is not passed then retrack the default file (.python-version)
    if test -z $file_to_retrack
        echo "...re-tracking changes to .python-version"
        git update-index --no-assume-unchanged .python-version

        return
    end

    # if an argument is passed then retrack the file specified
    echo "...re-tracking changes to $file_to_retrack"
    git update-index --no-assume-unchanged $file_to_retrack
end
