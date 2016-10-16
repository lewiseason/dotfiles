export NVM_DIR="$HOME/.nvm"

source_nvm() {
  unset -f nvm npm node

  if [ -f "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
  fi
}

nvm() {
  source_nvm
  $0 "$@"
}

npm() {
  source_nvm
  $0 "$@"
}

node() {
  source_nvm
  $0 "$@"
}
