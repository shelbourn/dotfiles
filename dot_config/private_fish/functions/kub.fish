function kub --description 'alias for kubectx + args'
    set kubectx_args $argv

    # if an argument does not  exist then exec kubectx as a standalone
    if test -z $kubectx_args
        kubectx
        return
    end

    # if an argument does exist then pass it to kubectx
    kubectx $kubectx_args
end
