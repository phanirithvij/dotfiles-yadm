function wal_bg
  wal -n -i "$argv"
  feh --bg-max "$(cat "$HOME/.cache/wal/wal")"
end
