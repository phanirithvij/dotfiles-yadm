# https://github.com/fish-shell/fish-shell/issues/6459
function capture_all
    begin;
        begin;
            eval $argv[1]
            set $argv[2] $status  # read sets the `status` flag => capture here
        end 2>| read -z __err
    end 1>| read -z __out
    # output arrays
    set $argv[3] (echo $__out | string split \n)
    set $argv[4] (echo $__err | string split \n)
    return 0
end
