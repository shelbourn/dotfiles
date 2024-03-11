function hippo_up_legacy --description 'Docker compose up with Mirage, un-minified JS, and python debugging enabled'
    ENABLE_MIRAGE_MOCK=true MINIFY_JS=false SKIP_INSTALL=true docker compose up -d
end
