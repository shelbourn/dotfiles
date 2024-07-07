function down --description 'Docker compose down'
    if test $argv[1] && test $argv[1] = hippo
        echo "Docker composing down hippo and event streaming containers"
        echo "docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml down"
        docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml down
        return
    end

    echo "Docker composing down containers"
    echo "docker compose -f docker-compose.yml down"
    docker compose -f docker-compose.yml down
end
