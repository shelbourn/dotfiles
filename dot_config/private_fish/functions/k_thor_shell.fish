function k_thor_shell --description 'shells into a k8s pod using the thor-app container, arg is pod'
kubectl exec -ti $argv -c thor-app -n thor-app-dev -- bash
end
