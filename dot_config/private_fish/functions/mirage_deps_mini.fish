function mirage_deps_mini --description 'Docker compose up with Mirage, dependency installs/updates, minified JS, and python debugging enabled'
    ENABLE_MIRAGE_MOCK=true docker compose up -d
end
