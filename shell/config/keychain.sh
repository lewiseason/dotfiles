if [[ -x "/usr/bin/keychain" ]]; then
  if [[ "$SHLVL" > 1 ]]; then
    eval `keychain --eval --quiet --agents ssh id_rsa`
  fi
fi
