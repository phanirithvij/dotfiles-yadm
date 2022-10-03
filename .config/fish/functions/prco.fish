# https://lebenplusplus.de/2019/04/04/check-out-your-github-pull-request-with-an-interactive-shell-menu/
function prco --description "Checkout pull requests fzf"
   hub pr list             | # Download list of pull requests
   fzf                     | # Show list as selectable menu
   egrep -o '[[:digit:]]+' | # extract sequences of digits
   head -n 1               | # drop all but the first sequence (PR id)
   xargs hub pr checkout     # convert pro ID input to argument & check out
end

