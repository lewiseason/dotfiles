source_rvm() {
  if [ -x "$HOME/.rvm/scripts/rvm" ]; then
    source "$HOME/.rvm/scripts/rvm"
  elif [ -x "/usr/local/rvm/bin/rvm" ]; then
    source "/usr/local/rvm/bin/rvm"
  fi
}

rvm() {
  unset -f rvm
  source_rvm
  rvm "$@"
}
