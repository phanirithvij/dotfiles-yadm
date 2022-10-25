# theme_gruvbox dark hard

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove fish shell greeting
set fish_greeting

# omf default theme settings
# https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#default
# https://github.com/oh-my-fish/theme-default/blob/master/functions/fish_prompt.fish
set -g theme_short_path yes
# set -g theme_ignore_ssh_awareness yes

# nvm (not using nvm anymore, using asdf)
# https://stackoverflow.com/a/42832284/8608146
# https://stackoverflow.com/a/69248519/8608146
#if type -q nvm
#  nvm use lts &> /dev/null
#end
# nvm end

# asdf-vm
source /nix/store/ivlgrrmk79k2ismzpmqb1whk6xd2svvy-asdf-vm-0.10.2/share/asdf-vm/asdf.fish
# source /opt/asdf-vm/asdf.fish
# asdf-vm end

# pnpm
set -gx PNPM_HOME "/home/rithviz/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# ported from .bash_profile which was added by nix post install.
# if test -e /home/rithviz/.nix-profile/etc/profile.d/nix.sh
  # https://superuser.com/a/1235985/1049709
  # bass source /home/rithviz/.nix-profile/etc/profile.d/nix.sh
# end
# using a plugin instead
# found from https://discourse.nixos.org/t/how-is-the-state-of-nix-support-for-fish-shell/9260/6

direnv hook fish | source

# https://starship.rs/#fish
starship init fish | source

# navi
navi widget fish | source
# navi end

# [ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish

