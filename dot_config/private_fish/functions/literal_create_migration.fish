function create_migration --description 'Creates a Django migration for local DB -- args: <app name>'
    set app_name $argv

    if test -z $app_name
        # Return in anger
        echo "Argument for <app name> is required"
    end

    docker compose -f ~/Projects/Elation/hippo/docker-compose.yml exec hippo django-admin makemigrations $app_name
end
