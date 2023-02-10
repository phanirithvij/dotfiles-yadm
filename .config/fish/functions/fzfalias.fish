function fzfalias
  fzf --height 40% --layout=reverse \
    --cycle --keep-right --padding=1,0,0,0 \
    --color=label:bold --tabstop=1 --border=sharp \
    --border-label="  $argv[1]  " \
    $argv[2..-1]
end
