export PATH="$HOME/.pyenv/bin:$PATH"

if command -v pyenv &>/dev/null
then
  eval "$(pyenv init - bash --no-rehash)"
fi
