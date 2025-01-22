function sso_dev --description 'authenticates via SSO to AWS with DeveloperAccess'
aws sso login --profile DeveloperAccess
end
