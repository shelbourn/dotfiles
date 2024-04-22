function startup --description 'Executes a collection of startup scripts'
    aws_login_1
    # aws_login_2
    aws_login_thor
    mysql_env
    # hippo
    # thor
    # remote_container_patch
    # untrack
    # untrack .devcontainer/devcontainer.json
    # untrack elation/elation_billing/services/api_proxy.py
    # untrack elation/elation_billing/services/auth.py
    pyenv shell 3.6.15
end
