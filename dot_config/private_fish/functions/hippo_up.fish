function hippo_up --description 'Docker up with Mirage, dependency installs/updates, minified JS, python debugging enabled'
    ENABLE_MIRAGE_MOCK=true SKIP_INSTALL=true docker compose -f docker-compose.yml up -d --remove-orphans
end
