if [[ -x /usr/bin/keychain ]]; then
  eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet id_rsa)
fi
