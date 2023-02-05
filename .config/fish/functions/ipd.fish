function ipd --description='docker inspect ip addr'
  if test "x$argv[1]" != "x"
    docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $argv[1]
  else
    docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}'
  end
end
