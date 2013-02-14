export PATH="~/bin:/opt/vagrant/bin/:${PATH}"
export EDITOR="vim"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ssh='if [ "$(ssh-add -l)" = "The agent has no identities." ]; then ssh-add; fi; /usr/bin/ssh "$@"'
