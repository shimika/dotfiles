if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="zhann"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# unalias -m '*'

# alias
gl() {
  local count=${1:-20}
  git --no-pager log -n "$count" --format='%Cgreen%h%Creset %s %C(cyan)%an%Creset' --graph
}
alias gs='git status '
alias ga='git add .'
alias gb='git --no-pager branch -v'
alias gba='git --no-pager branch -av'
alias gc='git commit -m '
alias gca='git commit --amend'
alias gd='git --no-pager diff'
alias gco='git checkout'
alias pull='git pull upstream'
alias push='git push origin'
alias gf='git fetch -p --all'
alias gbd='git branch -D '
alias c='clear'

# source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

function pr() {
    branch=$(git symbolic-ref --short -q HEAD 2> /dev/null)
    upstream_branch="develop"
    directory=$(basename $(pwd))

    if [ -z "$branch" ]
    then
        echo "no git here"
        return 1
    fi

    if [[ $# -eq 0 ]]; then
        echo "upstream branch is develop"
    elif [[ $# -eq 1 ]]; then
        upstream_branch=$1
    else
        echo "input upstream branch"
        return 1
    fi

    open "https://github.com/channel-io/${directory}/compare/${upstream_branch}...shimika:${branch}"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
