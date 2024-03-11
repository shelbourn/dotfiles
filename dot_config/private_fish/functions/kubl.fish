function kubl --description 'alias for kubectl + args'
    set kubectl_args $argv

    # if an argument does not  exist then exec kubectl as a standalone
    if test -z $kubectl_args
        kubectl
        return
    end

    # if an argument does exist then pass it to kubectl
    kubectl $kubectl_args
end
