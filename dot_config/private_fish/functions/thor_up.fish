function thor_up --description 'Docker compose up LightningMD containers'
    docker compose up -d --remove-orphans
end
