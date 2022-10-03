function kp --description 'Kill process'
  if test "x$argv[1]" != "x"
    kill $argv[1] (ps aux | fzf | awk '{ print $2 }')
  else
    kill -3 (ps aux | fzf | awk '{ print $2 }')
  end
end
