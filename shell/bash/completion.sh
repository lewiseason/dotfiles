if ! shopt -oq posix; then
  #if [ -f /etc/bash_completion ]; then
  #  source /etc/bash_completion
  #fi
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  fi
fi

