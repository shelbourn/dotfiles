function up --description 'docker compose up hippo, thor-web, event-streaming'
    docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml up -d
end
