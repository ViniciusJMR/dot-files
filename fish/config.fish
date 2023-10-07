if status is-interactive
    # Commands to run in interactive sessions can go here
    source /opt/asdf-vm/asdf.fish
    set -g fish_escape_delay_ms 30
    alias g="git"
    alias ga="git add"
    alias gc="git commit -m"
    alias gp="git pull"
    alias gpsh="git push"
    alias gpshu="git push -u"
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

    set -Ux CHATGPT_MODEL gpt-4
    set -Ux azure_key 5b3d5a7b8e3b4f6d827b44eb71bcf0f1
    set -Ux azure_region eastus
    set -Ux open_api_key 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
end
