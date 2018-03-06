if [ -x "/usr/bin/keychain" ] && [ "$SHLVL" -gt "2" ]; then
  eval $(keychain --agents ssh,gpg --eval --quick --quiet id_rsa 2>/dev/null)
fi
