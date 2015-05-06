if [ -x "$HOME/.rvm/scripts/rvm" ]; then
  # Local
  source "$HOME/.rvm/scripts/rvm"
else
  # Systemwide - rvm doesn't like loading both
  [[ -s "/usr/local/rvm/bin/rvm" ]] && . "/usr/local/rvm/bin/rvm"
fi
