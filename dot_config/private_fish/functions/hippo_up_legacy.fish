function hippo_up_legacy --description 'Docker compose up with Mirage, un-minified JS, and python debugging enabled'
    ENABLE_MIRAGE_MOCK=True MINIFY_JS=False SKIP_LEGACY_FE_BUILD=False SKIP_INSTALL=True docker compose up -d
end
