function hippo_up --description 'Docker up with no legacy build and no dependencies + args'
    # logical branch for no args
    if test -z $argv
        SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True docker compose -f docker-compose.yml up -d --remove-orphans
    end

    # logical branch with args
    SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True $argv docker compose -f docker-compose.yml up -d --remove-orphans
end
