# theme_gruvbox dark hard

# remove fish shell greeting
set fish_greeting

# omf default theme settings
# https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#default
# https://github.com/oh-my-fish/theme-default/blob/master/functions/fish_prompt.fish
set -g theme_short_path yes
# set -g theme_ignore_ssh_awareness yes

if status is-interactive
  # Commands to run in interactive sessions can go here
  # https://github.com/fish-shell/fish-shell/issues/9523#issuecomment-1412141174

  alias lfc lfcd
  alias gb gitbatch
  alias wtf wtfutil
  # TODO remove this once sound is fixed (pipewire or pulseaudio)
  alias mpv 'mpv --mute'
  # abbr -a -p command kitty 'nixGL (which kitty)'
  abbr -a -p command cd z

  abbr -a -p command b btop
  abbr -a -p command c clear
  abbr -a -p command e exit
  abbr -a -p command h htop
  abbr -a -p command l exa
  abbr -a -p command j jrnl
  abbr -a -p command m micro
  abbr -a -p command copy 'xclip -sel clip'
  abbr -a -p command ll 'exa --long --header --icons --git -B'
  abbr -a -p command lla 'exa --long --header --icons --git --all -B'
  abbr -a -p command llh 'exa --long --header --icons --git'
  abbr -a -p command llS 'exa --long --header --icons --git -B -s size'
  abbr -a -p command llSh 'exa --long --header --icons --git -s size'
  abbr -a -p command opop xdg-open
  abbr -a -p command lac lazyconf
  abbr -a -p command laz lazygit
  abbr -a -p command lad lazydocker
  abbr -a -p command lar 'cd (yq ".recentrepos | @tsv" ~/.config/lazygit/state.yml | sed -e "s/\"//g" -e "s/\\\\\\\\t/\n/g" | fzfalias lazygit-repos); lazygit'
  abbr -a -p command unset 'set --erase'
  abbr -a -p command unl 'faillock -user $USER --reset'
  abbr -a -p command brimin 'sudo bash -c "echo 1000 | tee /sys/class/backlight/intel_backlight/brightness"'
  abbr -a -p command brimed 'sudo bash -c "echo 4000 | tee /sys/class/backlight/intel_backlight/brightness"'
  abbr -a -p command brimax 'cat /sys/class/backlight/intel_backlight/max_brightness | sudo tee /sys/class/backlight/intel_backlight/brightness'
  abbr -a -p command dohealth 'docker inspect --format "{{json .State.Health }}" xxxxxxxx | jq'
  abbr -a -p command dmuxpy 'dmux -P pythonupdates ~/Projects/pythone'
  abbr -a -p command dmuxsys 'dmux -P systemupdate ~/.config/nixpkgs'
  abbr -a -p command dmuxscl 'dmux -P systemupdate-cleanup ~/.config/nixpkgs'
  abbr -a -p command t tmux
  abbr -a -p command ta 'tmux a'
  abbr -a -p command at 'tmux a'
  abbr -a -p command tma 'tmux a'
  abbr -a -p command tag 'tmsu'

  abbr -a -p command tmpsize 'sudo mount -o remount,size=8589934592 /tmp'
  abbr -a -p command dosunix 'fd -H -E=node_modules -E=.git | xargs dos2unix'
  abbr -a -p command composes 'rg --files . | rg docker-compose.yml | fzf --preview "bat -p --color always --theme gruvbox-dark {}"'

  abbr -a -p command port 'netstat -tuplen'
  abbr -a -p command ports 'sudo netstat -tuplen'
  abbr -a -p command sport 'sudo lsof -i -P -n | rg LISTEN'
  abbr -a -p command wport 'viddy -p -d -n 0.2 -c netstat -tuplen'
  abbr -a -p command wports 'sudo viddy -p -d -n 0.2 -c netstat -tuplen'
  abbr -a -p command dufw 'CLICOLOR_FORCE=1 COLORTERM="truecolor" viddy -p -d -n 0.5 -c duf'
  abbr -a -p command wduf 'CLICOLOR_FORCE=1 COLORTERM="truecolor" viddy -p -d -n 0.5 -c duf'
  abbr -a -p command dufi 'CLICOLOR_FORCE=1 COLORTERM="truecolor" viddy -p -d -n 0.5 -c "duf -only local,fuse -hide-mp /boot/efi -output \"mountpoint, avail, usage, inodes_avail, inodes_usage, filesystem\" -sort usage"'
  abbr -a -p command dfa 'viddy -p -n 0.1 -c "df --output=source,iavail,ipcent,avail,pcent,target -h | (sed -u 1q; sort -h -r -k 4) # Sort by Avail"'
  abbr -a -p command dff 'viddy -p -n 0.1 -c "df --output=source,iavail,ipcent,avail,pcent,target -h | (sed -u 1q; sort -r -k 5) # Sort by Use%"'
  abbr -a -p command prog 'viddy -p -n 0.5 -c progress -w'
  abbr -a -p command wls 'viddy -p -d -n 0.1 -c exa --long --header --icons -B --color=always'
  abbr -a -p command wlsa 'viddy -p -t -d -n 0.1 -c exa --long --header --icons -B --all --color=always'
  abbr -a -p command wll 'viddy -p -d -n 0.1 -c exa --long --header --icons --git -B --color=always'
  abbr -a -p command wlla 'viddy -p -t -d -n 0.1 -c exa --long --header --icons --git -B --all --color=always'
  abbr -a -p command wpactl 'viddy \'pactl list | rg -U ".*bluez_card(.*\n)*"\''
  abbr -a -p command mem 'viddy -p -n 0.1 -c free -h'

  abbr -a -p command alacritty 'alacritty & disown;tmux splitw;exit'
  abbr -a -p command kitty 'kitty & disown;tmux splitw;exit'
  abbr -a -p command chrome 'google-chrome-stable & disown;tmux splitw;exit'
  abbr -a -p command f 'firefox & disown;tmux splitw;exit'
  abbr -a -p command firefox 'firefox & disown;tmux splitw;exit'
  abbr -a -p command tor '~/Desktop/tor.desktop & disown;tmux splitw;exit'
  abbr -a -p command zoom 'zoom & disown;tmux splitw;exit'
  abbr -a -p command telegram 'telegram-desktop & disown;tmux splitw;exit'
  abbr -a -p command discord 'discord & disown;tmux splitw;exit'
  abbr -a -p command authpass 'authpass & disown;tmux splitw;exit'
  abbr -a -p command gupupd 'GOFLAGS="-buildmode=pie -trimpath -modcacherw -ldflags=-s" gup update'
  # abbr -a -p command gupupd 'GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw -ldflags=-s" gup update'
  abbr -a -p command pacdiff 'DIFFPROG=kompare pacdiff'
  #abbr -a -p command pacdiff 'DIFFPROG=meld pacdiff'

  abbr -a -p command ex exercism

  abbr -a -p anywhere L --set-cursor '%| less'

  # https://fishshell.com/docs/current/cmds/abbr.html
  function last_history_item
      echo $history[1]
  end
  abbr -a -p anywhere !! --function last_history_item

  # https://superuser.com/a/1762626
  function last_history_token
      echo $history[1] | read -t -a tokens
      echo $tokens[-1]
  end
  abbr -a -p anywhere !\$ --function last_history_token
  # TODO useful https://superuser.com/a/1610597
  # nvm (not using nvm anymore, using asdf)
  # https://stackoverflow.com/a/42832284/8608146
  # https://stackoverflow.com/a/69248519/8608146
  #if type -q nvm
  #  nvm use lts &> /dev/null
  #end
  # nvm end
  # asdf-vm
  # source /opt/asdf-vm/asdf.fish
  # ported from .bash_profile which was added by nix post install.
  # if test -e /home/rithviz/.nix-profile/etc/profile.d/nix.fish
    # https://superuser.com/a/1235985/1049709
    # source /home/rithviz/.nix-profile/etc/profile.d/nix.fish
  # end
  # using a plugin instead
  # found from https://discourse.nixos.org/t/how-is-the-state-of-nix-support-for-fish-shell/9260/6
  # Setup functions instead of init to speed up shell init
  # https://superuser.com/a/1611283/1049709
  # direnv
  # direnv hook fish | source
  # navi
  navi widget fish | source
  # https://starship.rs/#fish
  starship init fish | source
  # zoxide
  zoxide init fish | source
  # atuin
  # atuin init fish | source
  rtx activate fish | source
end

# Wasmer
export WASMER_DIR="/home/rithviz/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
