function run_migration --description 'Runs a Django migration for local DB -- args: <app name>, <migration_name>'
    set app_name $argv[1]
    set migration_name $argv[2]

    if test -z $app_name || test -z $migration_name
        # Return in anger
        echo "Arguments for <app name> and <migration name> are required"
    end

    docker compose -f ~/Projects/Elation/hippo/docker-compose.yml exec hippo django-admin migrate $app_name $migration_name
end
