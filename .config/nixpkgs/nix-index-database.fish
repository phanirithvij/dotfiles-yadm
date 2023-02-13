#!/usr/bin/env fish
function download_nixpkgs_cache_index
  set filename 'index-'(uname -m | string collect; or echo)'-'(uname | tr A-Z a-z | string collect; or echo)
  mkdir -p ~/.cache/nix-index && cd ~/.cache/nix-index
  # -N will only download a new version if there is an update.
  wget -q -N https://github.com/Mic92/nix-index-database/releases/latest/download/$filename
  ln -f $filename files
end
download_nixpkgs_cache_index
