{ config, pkgs, ... }:

{
  home.username = "rithviz";
  home.homeDirectory = "/home/rithviz";

  home.packages = [
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
