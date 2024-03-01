function pypi --description 'Logs into AWS CA for el8-global-pypi repo on us-west-2 on DockerAccess'
aws codeartifact login --tool pip --domain el8-global --domain-owner 570488747013 --repository el8-global-pypi --region us-west-2 --profile DockerAccess $argv
end
