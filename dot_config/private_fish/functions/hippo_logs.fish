function hippo_logs --description 'Docker compose logs --follow for Hippo'
    docker compose logs --follow hippo --tail 50
end
