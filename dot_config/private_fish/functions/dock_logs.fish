function dock_logs --description 'Displays Docker logs for all containers (follow tail 50'
docker compose logs --follow --tail 50
end
