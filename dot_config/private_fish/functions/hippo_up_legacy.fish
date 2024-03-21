function hippo_up_legacy --description 'Docker compose up with legacy build, unminified JS, no dependencies + args'
    SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True MINIFY_JS=False $argv docker compose -f docker-compose.yml up -d --remove-orphans
end
