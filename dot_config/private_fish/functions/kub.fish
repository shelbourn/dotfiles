function kub --description 'alias for kubectx + args'
    set kubectx_args $argv

    # if an argument(s) does  exist then pass it(them) to kubctx
    if test -n $kubectx_args
        kubectx $kubectx_args
        return
    end

    # if an argument does not exist then exec kubectx as a standalone
    kubectx
end
