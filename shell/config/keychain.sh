if [ -x "/usr/bin/keychain" ] && [ "$SHLVL" -gt "2" ]; then
  eval $(keychain --eval --quiet id_rsa)

  if [ -z "pgrep -u $USER -f gpg-agent" ]; then
    keychain --quiet --agents gpg
  fi
fi

