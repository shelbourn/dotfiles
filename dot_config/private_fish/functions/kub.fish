function kub --description 'alias for kubectx + args'
    set kubectx_arg $argv[1]

    # if an argument does not  exist then exec kubectx as a standalone
    if test -z $kubectx_arg
        kubectx
        return
    end

    # if an argument does exist then pass it to kubectx
    kubectx $kubectx_arg
end
