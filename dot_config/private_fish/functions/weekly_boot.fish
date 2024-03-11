function weekly_boot --description '[Weekly] runs scripts to refresh docker images, restart containers, and restart MySQL services'
    # Confirm that user would like to proceed
    echo "[ALERT!]: THIS WILL DOWN YOUR CONTAINERS, PRUNE EXISTING IMAGES, & RE-PULL IMAGES!"

    if read_confirm
        # Sets the first argument to local variable
        set should_minify_js $argv[1]

        # Logical block for composing up without minified JS
        if test -z $should_minify_js
            echo "...composing down"
            echo "...authenticating with code artifact"
            echo "...restarting MySQL service"
            echo "...exporting environment variables for local MySQL connection"
            echo "...pruning docker images"
            echo "...pulling docker images"
            echo "...composing up with Mirage enabled"

            docker compose down
            aws_login_1
            aws_login_2
            aws_login_thor
            brew services restart mysql
            env_source ~/Projects/Elation/.env
            docker_prune
            docker_images
            hippo_up_legacy

            return
        end

        # Logical block for composing up with minified JS
        echo "...composing down"
        echo "...authenticating with code artifact"
        echo "...restarting MySQL service"
        echo "...exporting environment variables for local MySQL connection"
        echo "...pruning docker images"
        echo "...pulling docker images"
        echo "...composing up with Mirage enabled and minified JS"

        docker compose down
        aws_login_1
        aws_login_2
        aws_login_thor
        brew services restart mysql
        env_source ~/Projects/Elation/.env
        docker_prune
        docker_images
        hippo_up
    end
end
