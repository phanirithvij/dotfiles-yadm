{ config, pkgs, ... }:

# rust
# delta exa bat fd ripgrep sd starship du-dust

# go
# fzf lazygit hub gdu lf ...

{
  home.username = "rithviz";
  home.homeDirectory = "/home/rithviz";

  home.packages = [
    pkgs.air #reload go run
    #pkgs.asdf-vm #package version manager
    pkgs.babelfish #bash to fish
    pkgs.bat #fancy cat
    pkgs.btop #fancy process manager like htop
    pkgs.cmatrix #screensaver
    pkgs.delta #fancy diff
    pkgs.difftastic #fancy diff
    pkgs.duf #fancy du
    pkgs.eget #download binaries from github releases
    pkgs.exa #fancy ls
    pkgs.exercism
    pkgs.fzf #fuzzy file finder
    pkgs.gdu #disk usage analyzer tui
    pkgs.gh #github api cli, dl releases, checkout prs etc
    pkgs.git #version control, backup
    pkgs.git-filter-repo #git history rewrite
    pkgs.gitbatch #batch pull/fetch subfolder git repos
    pkgs.go-task # TODO ?
    pkgs.gopass #passwords and secrets manager
    pkgs.gopass-hibp #plugin for gopass
    pkgs.htop #process monitor
    pkgs.hub #github client, create repos etc
    pkgs.hugo #static site generator
    pkgs.jid #jq query repl
    pkgs.jq #json cli
    pkgs.lazygit #git tui
    pkgs.lazydocker #docker tui
    pkgs.lf #file manager tui
    pkgs.navi #bookmark commands and pkm (personal knowlegde management)
    pkgs.newsboat #rss
    pkgs.neofetch #sysinfo summary
    pkgs.neovim #editor but slow (for some weird reason)
    pkgs.nms #esoteric sneakers movie terminal effect
    pkgs.macchina #neofetch alternative
    pkgs.onefetch #neofetch like tool for git repos
    pkgs.p7zip #7z cli
    pkgs.pv #progress vizualized
    pkgs.qbittorrent
    pkgs.qcomicbook
    pkgs.qimgv #img viewer
    pkgs.qrcp #fileserver with added qr ease of use
    pkgs.rclone
    pkgs.remote-touchpad #control screen via webui from different device
    pkgs.ripgrep #modern grep cli
    pkgs.rnote #note taking
    pkgs.rustup #cargo, rust
    pkgs.screenfetch #neofetch alternative
    pkgs.starship #prompt custom
    pkgs.sysz #systemctl tui
    pkgs.timeshift #system restore points
    pkgs.tmate #share ssh with tmux
    pkgs.tmux #no nohup
    pkgs.unar #rar format
    pkgs.ulauncher
    pkgs.viddy #watch alternative
    pkgs.wtf #fancy dashboard tui
    pkgs.yq #yaml cli
    pkgs.yadm #dotfile manager
    pkgs.zoxide #directory bookmarks and sort by most frequently used
 ];

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
  # nano like text editor, best tool for non-coding, not an ide
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
