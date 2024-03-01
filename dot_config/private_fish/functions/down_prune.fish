function down_prune --description 'Docker compose down and prune images'
docker compose down
docker system prune --all --force --volumes
end
