function connect_pod --description 'Script to connect to an Ellie K8s pod (pod name passed in as arg) -- used for DB operations on an Ellie branch'
    # Assigns pod name passed in as an arg to a local var
    set pod_name $argv

    # Executes script to connect to the K8s pod for the Ellie branch in question
    kubectl exec -it $pod_name -c hippo -- bash
end
