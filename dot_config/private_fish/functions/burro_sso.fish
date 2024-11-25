function burro_sso --description 'auths with AWS SSO for Burro admin'
    aws sso login --profile burro_production
    echo "Burro AWS authentication successful"
end
