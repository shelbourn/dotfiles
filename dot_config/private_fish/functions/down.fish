function down --description 'Docker compose down'
    set -l target_path ~/Projects/Elation/hippo
    set -l current_dir (pwd)

    if test "$current_dir" = "$target_path"
        echo "Currently working in the hippo repo"
        echo "Docker composing down Hippo with Event-Streaming"
        echo "Executing: docker compose -f docker-compose.yml -f docker-compose.event-streaming.yml down"
        docker compose -f docker-compose.yml -f docker-compose.event-streaming.yml down
    else
        echo "Currently working in the thor-web repo"
        echo "Docker composing down with docker-compose.yaml from current working directory"
        echo "Docker compose down"
        docker compose down
    end
end
