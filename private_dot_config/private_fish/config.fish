if status is-interactive
    # Commands to run in interactive sessions can go here

    fish_vi_key_bindings default

    set fish_tmux_default_session_name main
    set fish_tmux_autoquit false
    set fish_tmux_autostart true

    set -gx ATUIN_NOBIND true
    atuin init fish | source
    bind -M default / _atuin_search
end

alias ls "eza --color=always --icons=always"
alias lat "la --tree"
alias python python3
alias dcd "docker compose down"
alias dcu "docker compose up -d"
alias dcdu "docker compose down && docker compose up -d"
alias dcl "docker compose logs -f"
alias dcps "docker compose ps"
alias hugo "docker run --rm --user $(id -u):$(id -g) -v $(pwd):/project ghcr.io/gohugoio/hugo"

set -gx EDITOR nvim
set -gx fish_greeting ""
set -gx MANPAGER "bat -plman"
set -gx GEM_HOME $HOME/.local/gem
set -gx GEM_PATH $HOME/.local/gem
set -gx PERL5LIB $HOME/perl5/lib/perl5
set -gx PERL_LOCAL_LIB_ROOT $HOME/perl5

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/gem/bin
fish_add_path $HOME/perl5/bin
fish_add_path /opt/nvim-linux-arm64/bin

abbr -a --position anywhere -- --help '--help | bat -plhelp'
abbr -a --position anywhere -- -h '-h | bat -plhelp'

source "$HOME/.cargo/env.fish"

~/.local/bin/mise activate fish | source

zoxide init fish | source

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

# Added by Antigravity CLI installer
set -gx PATH "/home/nicolas/.local/bin" $PATH
