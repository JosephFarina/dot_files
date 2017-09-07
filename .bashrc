export TERM=screen-256color

set -o vi

alias c="clear"
alias g="git"
alias r="rails"

# Drops, migrates, and seeds the db
alias r_db_reset="rake db:drop db:create db:migrate db:seed"

alias n="node"
alias visched="cd ~/code/Scheduler && vi ."
alias gosched="cd ~/code/Scheduler"
alias watch="~/watch.sh"

alias clone_site="wget -mkEpnp"

function vr () {
  if [[ `git status --porcelain` ]]; then
    vi $( git status --porcelain | awk '{ print $2 }' )
  else
    vi $( git show --pretty="" --name-only HEAD )
  fi
}

export -f  vr

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

