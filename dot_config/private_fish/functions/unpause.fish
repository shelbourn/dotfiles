function unpause --description 'Unpauses all paused Docker containers'
    if test $argv[1] && test $argv[1] = hippo
        echo "Unpausing hippo containers"
        echo "docker compose -f docker-compose.yml unpause"
        docker compose -f docker-compose.yml unpause
        return
    end

    if test $argv[1] && test $argv[1] = event
        echo "Unpausing hippo and event streaming containers"
        echo "docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml unpause"
        docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml unpause
        return
    end

    echo "Unpausing Docker containers"
    echo "docker compose unpause"
    docker compose unpause

end
