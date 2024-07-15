function prune --description 'Prunes all Docker volumes. Use when error returned for not having enough space to pull images'
    docker system prune --all --force --volumes
end
