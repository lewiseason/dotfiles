if [[ -x /usr/bin/keychain ]]; then
  eval $(/usr/bin/keychain --eval --agents ssh,gpg -Q --quiet id_rsa)
fi
