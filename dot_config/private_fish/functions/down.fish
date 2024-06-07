function down --description 'Docker compose down'
    docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml down
end
