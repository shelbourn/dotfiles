function v --description 'Opens nvim with optional args [$argv]'
    set file_to_open $argv[1]

    if test -z $file_to_open
        nvim
    end

    nvim $file_to_open
end
