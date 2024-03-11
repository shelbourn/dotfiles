function kub --description 'alias for kubectx + args'
    set kubectx_args $argv

    # if there are args then pass them to kubectx
    if count $kubectx_args >/dev/null
        kubectx $kubectx_args
        return
    end

    # if there are no args then exec kubectx as a standalone
    kubectx
end
