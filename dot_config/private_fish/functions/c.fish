function c --description 'Alias for chezmoi with args as $argv'
    # sets local vars (args)
    set command $argv[1]
    set sub_command $argv[2]

    # if no args, run chezmoi normally
    # if command exists without sub_command, execute chezmoi + command
    # if command and sub_command exist, execute chezmoi + command + sub_command
    if test -z command
        chezmoi
    else if test -z sub_command
        chezmoi $args
    end

    chezmoi $command $sub_command

end
