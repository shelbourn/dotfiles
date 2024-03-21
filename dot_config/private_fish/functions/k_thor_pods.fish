function k_thor_pods --description 'retrieves the k8s pods for the thor-app-dev ns'
kubectl get pods -n thor-app-dev
end
