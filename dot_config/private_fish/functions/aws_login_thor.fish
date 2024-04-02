function aws_login_thor --description 'AWS SSO  authentication for LightningMD (Thor)'
    aws sso login --profile thor_admin
    aws ecr get-login-password --profile thor_admin --region us-east-1 | docker login --username AWS --password-stdin 570488747013.dkr.ecr.us-east-1.amazonaws.com
    echo "Thor AWS authentication successful"
end
