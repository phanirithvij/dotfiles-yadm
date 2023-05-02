#!/usr/bin/env bash

# https://unix.stackexchange.com/a/666676/312058
{
  export PS1='poor prompt > '
  tmpf="$(mktemp)"
  trap '
    . "$tmpf"
    rm "$tmpf"
    trap - USR1
  ' USR1
  # wizard in background
  tmpf="$tmpf" bash -c '
    sleep 10  # delay
    PS1="RICH PROMPT >>> "
    declare -p PS1 >>"$tmpf"
    kill -s USR1 "$PPID"
  ' &
}
