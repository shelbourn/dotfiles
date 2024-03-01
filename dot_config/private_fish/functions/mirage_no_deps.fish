function mirage_no_deps --description 'Docker compose up with Mirage and no dependency installs/updates'
SKIP_INSTALL=true ENABLE_MIRAGE_MOCK=true docker compose up -d
end
