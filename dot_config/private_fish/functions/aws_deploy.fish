function aws_deploy --description 'AWS SSO login for EL8-Deploy access'
aws sso login --profile el8-deploy
end
