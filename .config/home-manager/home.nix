{ config, pkgs, ... }:

# rust
# delta exa bat fd ripgrep sd starship du-dust

# go
# fzf lazygit hub gdu lf ...

{
  home.username = "rithviz";
  home.homeDirectory = "/home/rithviz";
  news.display = "silent";

  home.packages = with pkgs; [
    air #reload go run
    #asdf-vm #package version manager, using rtx now
    babelfish #bash to fish
    bat #fancy cat
    bashmount # very useful
    btop #fancy process manager like htop
    cmatrix #screensaver
    delta #fancy diff
    difftastic #fancy diff
    duf #fancy du
    eget #download binaries from github releases
    espanso # TODO on wayland it is espanso-wayland
    eza #fancy ls
    exercism # TODO remove, some progamming exercises or shit
    fzf #fuzzy file finder
    gdu #disk usage analyzer tui
    gh #github api cli, dl releases, checkout prs etc
    git #version control, backup
    git-filter-repo #git history rewrite
    gitbatch #batch pull/fetch subfolder git repos
    go-task # TODO ?
    gopass #passwords and secrets manager
    gopass-hibp #plugin for gopass
    htop #process monitor
    hub #github client, create repos etc
    hugo #static site generator
    jid #jq query repl
    jq #json cli
    lazygit #git tui
    lazydocker #docker tui
    lf #file manager tui
    navi #bookmark commands and pkm (personal knowlegde management)
    newsboat #rss
    fastfetch #sysinfo summary
    neovim #editor but slow (for some weird reason)
    nms #esoteric sneakers movie terminal effect
    macchina #neofetch alternative
    onefetch #neofetch like tool for git repos
    p7zip #7z cli
    pulumi # TODO testdrive
    pv #progress vizualized
    qbittorrent
    qcomicbook
    qimgv #img viewer
    qrcp #fileserver with added qr ease of use
    rclone
    remote-touchpad #control screen via webui from different device
    ripgrep #modern grep cli
    rnote #note taking
    rustup #cargo, rust
    #rtx # package version manager for linux asdf rust clone (now installing via cargo as nix version is behind)
    screenfetch #neofetch alternative
    starship #prompt custom
    sysz #systemctl tui
    timeshift #system restore points
    tmate #share ssh with tmux
    tmux #no nohup
    unar #rar format
    ulauncher # TODO remove after checking if useful alts rofi, dmenu, voidlinux-youtuber-dotfiles, espanso
    viddy #watch alternative
    wtf #fancy dashboard tui
    xplr # TODO something temp, remove later
    yq #yaml cli
    yadm #dotfile manager
    zoxide #directory bookmarks and sort by most frequently used
 ];

  home.stateVersion = "24.05";

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
