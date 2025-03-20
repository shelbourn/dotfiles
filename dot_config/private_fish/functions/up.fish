function up --description 'docker compose up hippo, thor, event-streaming'
    set -l target_path ~/Projects/Elation/hippo
    set -l current_dir (pwd)

    if test "$current_dir" = "$target_path"
        echo "Currently working in the hippo repo"
        echo "Docker composing up Hippo with Event-Streaming"
        echo "Executing: SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml up -d --remove-orphans"
        SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose.event-streaming.yml up -d --remove-orphans
    else
        echo "Currently working in the the thor-web repo"
        echo "Docker composing up with docker-compose.yaml from current working directory"
        echo "Docker compose up -d --remove-orphans"
        docker compose up -d --remove-orphans
    end
end
