function hippo_bash --description 'Opens a bash CLI in hippo'
    docker compose exec --user root hippo bash
end
