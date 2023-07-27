if status is-interactive
    # Commands to run in interactive sessions can go here
    source /opt/asdf-vm/asdf.fish
    set -g fish_escape_delay_ms 30
    alias ga="git add"
    alias gc="git commit -m"
    alias code="/home/viniciusrodrigues/.vscodeide/bin/code"
end
