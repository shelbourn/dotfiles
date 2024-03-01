function react_logs --description 'Displays Docker logs for the React container (follow tail 50)'
    docker compose logs --follow --tail 50 react
end
