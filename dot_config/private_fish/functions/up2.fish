function up2 --description 'docker compose up hippo, thor-web, event-streaming'
    if test $argv[1] && test $argv[1] = hippo
        echo "Docker composing up hippo containers"
        echo "ENABLE_MIRAGE_MOCK=True SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml up -d --remove-orphans"
        ENABLE_MIRAGE_MOCK=True SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml up -d --remove-orphans
        return
    end

    if test $argv[1] && test $argv[1] = event
        echo "Docker composing up hippo and event streaming containers"
        echo "ENABLE_MIRAGE_MOCK=True SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml up -d --remove-orphans"
        ENABLE_MIRAGE_MOCK=True SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose.event-streaming.yml up -d --remove-orphans
        return
    end

    if test $argv[1] && test $argv[1] = clean
        echo "Docker composing up hippo and event streaming containers with no MIRAGE MOCK"
        echo "SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml up -d --remove-orphans"
        SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose.event-streaming.yml up -d --remove-orphans
        return
    end

    echo "Docker composing up containers"
    echo "docker compose -f docker-compose.yml up -d --remove-orphans"
    docker compose -f docker-compose.yml up -d --remove-orphans

end
