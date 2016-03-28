if [ -x "$HOME/.rvm/scripts/rvm" ]; then
  ( source "$HOME/.rvm/scripts/rvm")
elif [ -x "/usr/local/rvm/bin/rvm" ]; then
  (set +m; source "/usr/local/rvm/bin/rvm" &)
fi
