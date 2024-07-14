function kl_ellie --description 'alias for retrieving all ellie pods + args'
    kl -n ellie-hippo get pods $argv
end
