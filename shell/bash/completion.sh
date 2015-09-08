if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  # Enable bash completion
  . /etc/bash_completion
fi

type _have 2>/dev/null
if [ "$?" -ne "0" ]; then
  # The _have completion function was not defined
  _have() {
    type $1 &>/dev/null
  }
  #declare -f _have

  have() {
    unset -v have
    _have $1 && have=yes
  }
  #declare -f have
fi

if [ -d /etc/bash_completion.d ]; then
  # Load /etc/bash_completion.d, as it isn't always done automatically
  for file in /etc/bash_completion.d/*; do . "$file"; done
fi
