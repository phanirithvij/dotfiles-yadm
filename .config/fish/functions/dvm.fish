# https://gist.github.com/bdangit/73203912eb4539f0b5198193257b0104

# Docker Version Manager wrapper for *nix
# Implemented as a POSIX-compliant function
# Should work on sh, dash, bash, ksh, zsh
# To use, source this file from your bash profile

begin # This ensures the entire script is downloaded
    set DVM_SCRIPT_SOURCE $_

    # __dvm_has() {
    #   type "$1" > /dev/null 2>&1
    # }
    #
    # function __dvm_has
    #     type "$1" >
    # }

    # Make zsh glob matching behave same as bash
    # This fixes the "zsh: no matches found" errors
    # if __dvm_has "unsetopt"; then
    #   unsetopt nomatch 2>/dev/null
    #   DVM_CD_FLAGS="-q"
    # fi

    # Auto detect the DVM_DIR when not set

    if test -z "$DVM_DIR"
        if test -n (status -f)
            set DVM_SCRIPT_SOURCE (status -f)
            set ORIGIN_DIR (pwd)
            set -x DVM_DIR (cd $DVM_CD_FLAGS $DVM_SCRIPT_SOURCE > /dev/null ; pwd)
            cd "$ORIGIN_DIR"
            set -e ORIGIN_DIR
        else
            set -Ux DVM_DIR (pwd)
        end
    end

    set -e DVM_SCRIPT_SOURCE 2> /dev/null

    function dvm
        if not test -f "$DVM_DIR/dvm-helper/dvm-helper"
            echo "Installation corrupt: dvm-helper is missing. Please reinstall dvm."
            return 1
        end

        if test (uname) = "Darwin"
            which gsed > /dev/null
            if test $status -ne 0
                echo "Install gnu-sed. \`brew install gnu-sed`"
                return 1
            end
        end

        set DVM_OUTPUT $DVM_DIR/.tmp/dvm-output.sh
        set DVM_OUTPUT_FISH $DVM_DIR/.tmp/dvm-output.fish

        rm -f "$DVM_OUTPUT"
        rm -f "$DVM_OUTPUT_FISH"

        env DVM_DIR=$DVM_DIR $DVM_DIR/dvm-helper/dvm-helper --shell sh $argv

        if test -e "$DVM_OUTPUT"
            # convert sh to fish
            if test (uname) = "Darwin"
                gsed -r -e  "s%export (\w+)=\"%set -gx \1 %g" -e "s%:% %g" -e "s%\"\$%%g" "$DVM_OUTPUT" > "$DVM_OUTPUT_FISH"
            else
                sed -r -e  "s%export (\w+)=\"%set -gx \1 %g" -e "s%:% %g" -e "s%\"\$%%g" "$DVM_OUTPUT" > "$DVM_OUTPUT_FISH"
            end
            source "$DVM_OUTPUT_FISH"
        end
    end
end

