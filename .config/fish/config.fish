if status is-interactive
    # Commands to run in interactive sessions can go here
    source /opt/asdf-vm/asdf.fish
    set -g fish_escape_delay_ms 30
    alias g="git"
    alias ga="git add"
    alias gap="git add -p"
    alias gc="git commit -m"
    alias gp="git pull"
    alias gpsh="git push"
    alias gpshu="git push -u"
    alias gsth="git stash"
    alias gsthp="git stash"
    alias gsts="git status"
    alias gl="git log"
    alias glo="git log --oneline"
    alias gb="git branch"
    alias gbd="git branch -d"
    alias gck="git checkout"
    alias gckb="git checkout -b"
    alias gr="git reset"
    alias grh="git reset --hard"
    alias grs="git reset --soft"
    alias gdf="git diff"
    alias code="/home/viniciusrodrigues/.vscodeide/bin/code"
    alias files="xdg-open"
    alias vi="nvim"

    fish_add_path $GOPATH/bin
end
