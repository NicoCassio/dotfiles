if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_tmux_default_session_name main
    set fish_tmux_autoquit false
    set fish_tmux_autostart true
    # set fish_tmux_autostart_once true
    #
    set -gx ATUIN_NOBIND true
    atuin init fish | source
    bind -M default / _atuin_search
end
mise activate fish | source
procs --gen-completion-out fish | source
