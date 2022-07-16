# Manually added from the github readme

# Tweak according to need. This is not a complete list of keys!
set --local letters 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'
set --local numbers '1234567890'
set --local special '!@#$%^&*_+-=\\;,./<>?:|'
set --local pairs '\'"()[]{}'
set --local characters (string split '' "$letters$numbers$special$pairs")

# Use fish_key_reader to find out bindings. These are a combination of escape sequences and hex codes.
# The following should already be sent by your terminal:
set --local left                \e'[C'
set --local right               \e'[D'
set --local shift_left          \e'[1;2D'
set --local shift_right         \e'[1;2C'
set --local backspace           \x7f
set --local delete              \e'[3~'
set --local option_left         \eb
set --local option_right        \ef
# The following will need to be added to be sent by your terminal:
set --local option_shift_left   \e'[1;2H'
set --local option_shift_right  \e'[1;2F'

# I added these two
set --local ctrl_shift_left     \e'[1;6D'
set --local ctrl_shift_right    \e'[1;6C'

set --local command_shift_left  \e'[H'
set --local command_shift_right \e'[F'
set --local command_left        \ca
set --local command_right       \ce
set --local command_backspace   \cU
set --local command_delete      \ck
set --local option_backspace    \cw
set --local option_delete       \ed
set --local command_c           \e'[Q'
set --local command_x           \e'[O'
set --local command_v           \e'[L'

if functions --query _natural_selection
    bind $left                '_natural_selection forward-char'
    bind $right               '_natural_selection backward-char'
    bind $shift_left          '_natural_selection backward-char --is-selecting'
    bind $shift_right         '_natural_selection forward-char --is-selecting'
    bind $command_left        '_natural_selection beginning-of-line'
    bind $command_right       '_natural_selection end-of-line'
    bind $command_shift_left  '_natural_selection beginning-of-line --is-selecting'
    bind $command_shift_right '_natural_selection end-of-line --is-selecting'
    bind $option_left         '_natural_selection backward-word'
    bind $option_right        '_natural_selection forward-word'
    bind $option_shift_left   '_natural_selection beginning-of-line --is-selecting'
    bind $option_shift_right  '_natural_selection end-of-line --is-selecting'
    bind $ctrl_shift_left     '_natural_selection backward-word --is-selecting'
    bind $ctrl_shift_right    '_natural_selection forward-word --is-selecting'
    bind $delete              '_natural_selection delete-char'
    bind $backspace           '_natural_selection backward-delete-char'
    bind $command_delete      '_natural_selection kill-line'
    bind $command_backspace   '_natural_selection backward-kill-line'
    bind $option_backspace    '_natural_selection backward-kill-word'
    bind $option_delete       '_natural_selection kill-word'
    bind $command_c           '_natural_selection copy-to-clipboard'
    bind $command_x           '_natural_selection cut-to-clipboard'
    bind $command_v           '_natural_selection paste-from-clipboard'

    for character in $characters
        set --local escaped (string escape -- $character)
        bind $character "_natural_selection --is-character -- $escaped"
    end
end
