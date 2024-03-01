function loginwest1 --description 'AWS code artifact login on us-west-1 for DockerAccess. Used for Hippo'
    aws ecr get-login-password --profile DockerAccess --region us-west-1 | docker login --username AWS --password-stdin 570488747013.dkr.ecr.us-west-1.amazonaws.com $argv
    aws ecr get-login-password --profile DockerAccess --region us-east-1 | docker login --username AWS --password-stdin 570488747013.dkr.ecr.us-east-1.amazonaws.com $argv
    echo "CA login successful"
end
