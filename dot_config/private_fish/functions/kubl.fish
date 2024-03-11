function kubl --description 'alias for kubectl + args'
    set kubectl_arg $argv[1]

    # if an argument does not  exist then exec kubectl as a standalone
    if test -z $kubectl_arg
        kubectl
        return
    end

    # if an argument does exist then pass it to kubectl
    kubectl $kubectl_arg
end
