function navi
  command navi widget fish | source
  command navi $argv
  function navi
    command navi $argv
  end
end
