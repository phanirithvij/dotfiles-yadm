{ config, pkgs, ... }:

{
  home.username = "rithviz";
  home.homeDirectory = "/home/rithviz";

  home.packages = [
    pkgs.htop
    pkgs.bat
    pkgs.lf
    pkgs.lazygit
    pkgs.fzf
    pkgs.gdu
    pkgs.gh
    pkgs.git-filter-repo
    pkgs.hub
    pkgs.jq
    pkgs.neovide
    pkgs.newsboat
    pkgs.p7zip
    pkgs.qbittorrent
    pkgs.ripgrep
    pkgs.yadm
    pkgs.tmate
    pkgs.yq
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
}
