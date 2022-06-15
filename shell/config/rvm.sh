if [ -x "$HOME/.rvm/scripts/rvm" ]
then
  source "$HOME/.rvm/scripts/rvm"

elif [ -x "/usr/local/rvm/bin/rvm" ]
then
  source "/usr/local/rvm/bin/rvm"
fi

export RUBY_DEBUG_LOG_LEVEL=ERROR

