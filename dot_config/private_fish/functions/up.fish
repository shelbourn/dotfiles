function up --description 'docker compose up hippo, thor-web, event-streaming'
    if test $argv[1] && test $argv[1] = hippo
        echo "Docker composing up hippo and event streaming"
        ENABLE_MIRAGE_MOCK=True SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml up -d --remove-orphans
        return
    end

    echo "Docker composing up thor"
    docker compose -f docker-compose.yml -f up -d --remove-orphans
end
