# https://unix.stackexchange.com/questions/541551/how-can-i-reference-the-store-path-of-a-nix-package
# alias asdf "source \"\$(nix eval --raw nixpkgs#asdf-vm)/share/asdf-vm/asdf.fish\"; command asdf $argv"
function asdf
  source ~/.nix-profile/share/asdf-vm/asdf.fish
  command asdf $argv
end
# source /nix/store/hxayck2vshd49cjhsrcxcm5dnydr55a0-asdf-vm-0.11.1/share/asdf-vm/asdf.fish
