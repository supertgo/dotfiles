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
    local branches=$(git branch -r | awk -F/ '/origin/ && !/HEAD/ {print $NF}')
    COMPREPLY=( $(compgen -W "$branches" -- "${COMP_WORDS[COMP_CWORD]}") )
  }
  complete -F _git_branches gps
  complete -F _git_branches gpl
else
  echo "Error loading git completions"
fi

