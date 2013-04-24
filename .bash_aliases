alias ssh='if [ "$(ssh-add -l)" = "The agent has no identities." ]; then ssh-add; fi; /usr/bin/ssh "$@"'

tunnel () {
   ssh -vN -L *:$2:$1:$2 $1
   }
