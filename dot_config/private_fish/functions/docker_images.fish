function docker_images --description 'Force pulls all remote Docker images while ignoring pull failures'
docker compose pull --ignore-pull-failures
end
