function mirage_deps --description 'Docker up with Mirage, dependency installs/updates, unminified JS, python debugging enabled'
    ENABLE_MIRAGE_MOCK=true MINIFY_JS=False docker compose -f docker-compose.yml up -d --remove-orphans
end
