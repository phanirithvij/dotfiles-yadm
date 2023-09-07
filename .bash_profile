#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -f /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh

# https://stackoverflow.com/q/61865932/8608146
# export FZF_DEFAULT_COMMAND='fd --type f'
# https://github.com/junegunn/fzf/issues/980#issuecomment-733642870
# export FZF_DEFAULT_COMMAND="find . -maxdepth 1 | sed 's/^..//'"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if [ -e /home/rithviz/.nix-profile/etc/profile.d/nix.sh ]; then . /home/rithviz/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "$HOME/.cargo/env"
