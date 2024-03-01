function aws_dock --description 'AWS SSO login for DockerAccess'
    aws sso login --profile DockerAccess
end
