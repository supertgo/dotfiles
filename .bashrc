# DOCKER ALIAS
alias dup='docker-compose up'
alias ddown='docker-compose down'

# GIT ALIAS
alias gadd='git add'
alias gci='git commit -m'
alias gps='git push origin'
alias gbr='git branch'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gpl='git pull origin'
alias gd='git diff'
alias gst='git status'

# setup autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
  __git_complete gco _git_checkout
  __git_complete gbr _git_branch
  __git_complete gd _git_diff

 _git_branches()
  {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local cache_file=~/.git_branches_cache

    # Refresh cache if it doesn't exist or is older than 1 day
    if [ ! -f "$cache_file" ] || [ $(find "$cache_file" -mnin +0.5 -print) ]; then
      git ls-remote --heads origin | awk '{print $2}' | sed 's#refs/heads/##' > "$cache_file"
    fi

    local branches=$(cat "$cache_file")
    COMPREPLY=( $(compgen -W "$branches" -- "$cur") )
  }
  complete -F _git_branches gps
  complete -F _git_branches gpl
else
  echo "Error loading git completions"
fi

