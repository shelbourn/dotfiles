function hippo_up --description 'Docker up with no legacy build and no dependencies + args'
    # logical branch for no args
    # if test -z $argv
    # SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True docker compose -f docker-compose.yml up -d --remove-orphans
    # return
    # end

    # logical branch with args
    # SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True $argv docker compose -f docker-compose.yml up -d --remove-orphans

    ##### COMMENTED OUT ALL COMPOSE FNS FOR NOW BECAUSE THEY SUCK #####

    ENABLE_MIRAGE_MOCK=True SKIP_INSTALL=True MINIFY_JS=False docker compose -f docker-compose.yml -f docker-compose-event-streaming.yml up -dd

end
