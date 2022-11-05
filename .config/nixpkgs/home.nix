{ config, pkgs, ... }:

# rust
# delta exa bat fd ripgrep sd starship du-dust

# go
# fzf lazygit hub gdu lf ...

{
  home.username = "rithviz";
  home.homeDirectory = "/home/rithviz";

  home.packages = [
    pkgs.asdf-vm
    pkgs.bat
    pkgs.delta
    pkgs.difftastic
    pkgs.exa
    pkgs.fzf
    pkgs.gdu
    pkgs.gh
    pkgs.git-filter-repo
    pkgs.go-task
    pkgs.gopass
    pkgs.gopass-hibp
    pkgs.htop
    pkgs.hub
    pkgs.jq
    pkgs.lazygit
    pkgs.lf
    pkgs.newsboat
    pkgs.neovim
    pkgs.p7zip
    pkgs.qbittorrent
    pkgs.ripgrep
    pkgs.starship
    pkgs.tmate
    pkgs.tmux
    pkgs.unar
    pkgs.yq
    pkgs.yadm
 ];

  home.stateVersion = "22.05";

  programs.home-manager.enable = true;
  programs.micro = {
    enable = true;
    settings = {
      colorscheme = "twilight";
      relativeruler = true;
      saveundo = true;
      tabsize = 2;
      tabstospaces = true;
      wordwrap = true;
    };
  };
  programs.firefox.enable = true;
}
