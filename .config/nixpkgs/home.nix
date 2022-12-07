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
    pkgs.btop
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
    pkgs.lazydocker
    pkgs.lf
    pkgs.newsboat
    pkgs.neovim
    pkgs.nms #esoteric sneakers movie terminal effect
    pkgs.p7zip
    pkgs.qbittorrent
    pkgs.rclone
    pkgs.ripgrep
    pkgs.starship
    pkgs.sysz
    pkgs.tmate
    pkgs.tmux
    pkgs.unar
    pkgs.ulauncher
    pkgs.viddy
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
