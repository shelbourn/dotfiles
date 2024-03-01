function env_source --description 'Load in .env file VARs'
    if test -z $argv[1]
        echo "Usage:"
        echo "  env_source <path/to/.env/file>"
        return 1
    end
    for line in (cat $argv | grep -v '^#' | grep -v '^\s*$')
        set item (string split -m 1 '=' $line)
        set -gx $item[1] $item[2]
        echo "Exported key $item[1]"
    end
end
