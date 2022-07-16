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

# pnpm
set -gx PNPM_HOME "/home/rithviz/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
