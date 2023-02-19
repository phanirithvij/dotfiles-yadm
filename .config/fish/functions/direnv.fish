function direnv
  command direnv hook fish | source
  command direnv $argv
  function direnv
    command direnv $argv
  end
end
