function loginwest2 --description 'AWS code artifact login on us-west-2 for DockerAccess. Used for many things, including Billing-API'
    # export CODEARTIFACT_AUTH_TOKEN=$(aws codeartifact get-authorization-token --domain el8-global --domain-owner 570488747013 --region us-west-2 --query authorizationToken --output text --profile DockerAccess $argv)
    aws ecr get-login-password --profile DockerAccess --region us-west-2 | docker login --username AWS --password-stdin 570488747013.dkr.ecr.us-west-2.amazonaws.com
    echo "CA login successful"
end
