function hippo_up --description 'Docker up with Mirage, dependency installs/updates, minified JS, python debugging enabled'
    ENABLE_MIRAGE_MOCK=True SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True docker compose -f docker-compose.yml up -d --remove-orphans
end
