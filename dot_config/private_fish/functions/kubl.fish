function kubl --description 'alias for kubectl + args'
    set kubectl_args $argv

    # if there are args then pass them to kubectl
    if count $kubectl_args >/dev/null
        kubectl $kubectl_args
        return
    end

    # if there are no args then exec kubectl as a standalone
    kubectl
end
