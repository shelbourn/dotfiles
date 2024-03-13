function kubl_ns --description 'alias for retrieving all el8-dev-services + args'
    kubectl get services --all-namespaces $argv
end
