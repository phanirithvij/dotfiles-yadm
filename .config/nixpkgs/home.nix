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
    pkgs.htop
    pkgs.bat
    pkgs.delta
    pkgs.lf
    pkgs.lazygit
    pkgs.fzf
    pkgs.gdu
    pkgs.gh
    pkgs.git-filter-repo
    pkgs.hub
    pkgs.jq
    pkgs.newsboat
    pkgs.neovim
    pkgs.starship
    pkgs.p7zip
    pkgs.qbittorrent
    pkgs.ripgrep
    pkgs.yadm
    pkgs.tmate
    pkgs.tmux
    pkgs.unar
    pkgs.yq
    pkgs.go-task
    pkgs.exa
    pkgs.gopass
    pkgs.gopass-hibp
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
