function unpause --description 'Unpauses all paused Docker containers'
    if test $argv[1] && test $argv[1] = hippo
        echo "Unpausing hippo and event streaming containers"
        docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml unpause
        return
    end

    echo "Unpausing thor containers"
    docker compose unpause
end
