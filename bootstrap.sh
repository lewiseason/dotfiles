#!/bin/sh

RED="\033[1;31m"
BLUE="\033[1;34m"
GREEN="\033[1;32m"
RESET="\033[0m"

fail() {
  >&2 echo -ne "${RED}$@${RESET}\n"
  exit 1
}

info() {
  echo -ne "${BLUE}$@${RESET}\n"
}

success() {
  echo -ne "${GREEN}$@${RESET}\n"
}

SSH_KEY=${SSH_KEY:-$HOME/.ssh/id_rsa}
ANSIBLE_REPOSITORY=${ANSIBLE_REPOSITORY:-git@bitbucket.org:lewiseason/ansible.git}
PUBKEY_UP=/tmp/pubkey-up

if [ ! -e "$SSH_KEY" ]; then
  fail "You must generate a private key at \"${SSH_KEY}\" or set \$SSH_KEY to the correct path."
  echo
fi

if [ -z "$SSH_AGENT_PID" ]; then
  eval $(ssh-agent)
fi

info "Please add your SSH key to ssh-agent:"
ssh-add "$SSH_KEY"

info "Installing dependencies"
sudo dnf -q -y install git ansible

info "Fetching pubkey-up script"
wget -q -nc -O "$PUBKEY_UP" "https://raw.githubusercontent.com/lewiseason/dotfiles/master/bin/pubkey-up"
chmod +x "$PUBKEY_UP"

for service in $($PUBKEY_UP --list-services); do
  info "Upload public key to $service (^C to skip)"
  $PUBKEY_UP $service
done

info "Configuring system with ansible (this may take some time)"
ansible-pull -U "$ANSIBLE_REPOSITORY"

info "Attempting to run \`fresh\`"

if [ ! -d "$HOME/.fresh" ]; then
  rm ~/.bashrc ~/.zshrc
fi

fresh

if [[ "$SHELL" != *zsh* ]]; then
  info "Attempting to change shell"
  sudo chsh -s `which zsh` $USER
fi

if [ ! -d "$HOME/projects" ]; then
  info "Create ~/projects"
  mkdir -p ~/projects
fi

success "Done! Correct any errors/run again if required and then reboot"
