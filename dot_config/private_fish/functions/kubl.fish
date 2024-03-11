function kubl --description 'alias for kubectl + args'
    set kubectl_args $argv

    # if an argument(s) does exist then pass it(them) to kubectl
    if test -n $kubectl_args
        kubectl $kubectl_args
        return
    end

    # if an argument does not exist then exec kubectl as a standalone
    kubectl
end
