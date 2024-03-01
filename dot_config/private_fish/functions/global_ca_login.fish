function global_ca_login --description 'Logs into AWS code artifact on us-west-2 for DockerAccess and sets the pip global index url with the CA auth token. Use for many things, including Billing-API.'
    export CODEARTIFACT_AUTH_TOKEN=$(aws codeartifact get-authorization-token --domain el8-global --domain-owner 570488747013 --region us-west-2 --query authorizationToken --output text --profile DockerAccess $argv)
    echo "CA login successful"
    pip config set global.index-url https://aws:$CODEARTIFACT_AUTH_TOKEN@el8-global-570488747013.d.codeartifact.us-west-2.amazonaws.com/pypi/el8-global-pypi/simple/
    echo \n"Pip global config url set successfully"
end
