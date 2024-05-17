alias p='cd ~/projects/$(find ~/projects -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | selecta)'
alias pc='p; code .'

alias docker-compose='docker compose'

alias ssh='TERM=xterm-256color ssh'

alias bell='echo -en "\007"'

alias :q='exit'
alias :q!='exit'

alias gds='git diff --staged'
alias dtf='docker-compose logs --follow --tail 0'

alias gack="git ls-files -oc --exclude-standard | ack -x"
