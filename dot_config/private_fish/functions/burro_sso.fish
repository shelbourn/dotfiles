function burro_sso --description 'auths with AWS SSO for Burro admin'
    aws sso login --profile 552781463826_AdminAccess
    echo "Burro AWS authentication successful"
end
