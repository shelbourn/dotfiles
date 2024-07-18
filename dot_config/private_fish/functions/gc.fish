function gc --description 'Git commit (interactive message with vi)'
    set cmd (commandline -opc)
    if test (count $cmd) -gt 1
        set cmd (string join ' ' $cmd[1..-1])
    end

    if test -z "$cmd"
        echo "Usage: gc <git command> [git options]"
        return 1
    end

    git $cmd
end
