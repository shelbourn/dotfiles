function thor_logs --description 'Follows and tails (50) LightningMD Docker logs'
    # CD LightningMD Repo directory
    thor

    # Follow and tail (50) LightningMD Docker logs
    docker compose logs --follow --tail 50
end
