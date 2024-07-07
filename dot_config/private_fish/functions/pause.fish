function pause --description 'Pauses all running Docker containers'
    if test $argv[1] && test $argv[1] = hippo
        echo "Pausing hippo and event streaming containers"
        docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml pause
        return
    end

    echo "Pausing thor containers"
    docker compose pause
end
