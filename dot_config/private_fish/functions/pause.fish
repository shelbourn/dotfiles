function pause --description 'Pauses all running Docker containers'
    if test $argv[1] && test $argv[1] = hippo
        echo "Pausing hippo containers"
        echo "docker compose -f docker-compose.yml pause"
        docker compose -f docker-compose.yml pause
        return
    end

    if test $argv[1] && test $argv[1] = event
        echo "Pausing hippo and event streaming containers"
        echo "docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml pause"
        docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml pause
        return
    end

    echo "Pausing docker containers"
    echo "docker compose pause"
    docker compose pause

end
