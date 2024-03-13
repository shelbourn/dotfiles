function hippo_up_legacy --description 'Docker compose up with legacy build, unminified JS, no dependencies + args'
    set docker_vars (string join echo $argv MINIFY_JS=False SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True)

    string join '' $docker_vars docker compose up -d --remove-orphans
end
