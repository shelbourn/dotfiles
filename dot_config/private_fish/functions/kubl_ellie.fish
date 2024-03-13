function kubl_ellie --description 'alias for retrieving all ellie pods + args'
    kubectl -n ellie-hippo get pods $argv
end
