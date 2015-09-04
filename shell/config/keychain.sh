if [ -x "/usr/bin/keychain" ] && [ "$SHLVL" -gt "2" ]; then
  eval `keychain --eval --quiet --agents ssh id_rsa`
fi
