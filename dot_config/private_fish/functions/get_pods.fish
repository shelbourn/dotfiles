function get_pods --description 'Shows a list of active k8s pods -- optional arg to filter by pod name'
# If an arg (string to filter by) exists, executes the command to list all K8s Ellie pods filtered by passed in string (arg)
if not test -z $argv
kubectl get pods | grep $argv
return 0
end
kubectl get pods
end
