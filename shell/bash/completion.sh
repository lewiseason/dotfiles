if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  # Enable programmable completion features, just in case it isn't
  . /etc/bash_completion
elif [ -d /etc/bash_completion.d ]; then
  # Sometimes the file doesn't exist, but the directory does
  for file in /etc/bash_completion.d/*; do . "$file"; done
fi
