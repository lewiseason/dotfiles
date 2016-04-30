#!/bin/sh

SSH_KEY=${SSH_KEY:-$HOME/.ssh/id_rsa}
ANSIBLE_REPOSITORY=${ANSIBLE_REPOSITORY:-git@github.com:lewiseason/ansible.git}
PUBKEY_UP=${PUBKEY_UP:-/tmp/pubkey-up}
PUBKEY_UP_BRANCH=${PUBKEY_UP_BRANCH:-master}

RESET="\033[0m"
fail() { >&2 echo -ne "\033[1;31m$@${RESET}\n"; exit 1; }
info() { echo -ne "\033[1;34m$@${RESET}\n"; }
success() { echo -ne "\033[1;32m$@${RESET}\n"; }

if [ ! -e "$SSH_KEY" ]; then
  fail "You must generate a private key at \"${SSH_KEY}\" or set \$SSH_KEY to the correct path."
fi

if [ -z "$SSH_AGENT_PID" ]; then
  eval $(ssh-agent)
fi

ssh-add -l | awk '{print $3}' | grep "$SSH_KEY" >/dev/null

if [ "$?" -ne "0" ]; then
  info "Attempting to add your key to the ssh-agent"
  ssh-add "$SSH_KEY"
fi

info "Installing dependencies"
sudo dnf -q -y install git ansible python-dnf libselinux-python

if [ ! -f "$PUBKEY_UP" ]; then
  info "Fetching pubkey-up script"
  wget -q -O "$PUBKEY_UP" "https://raw.githubusercontent.com/lewiseason/dotfiles/${PUBKEY_UP_BRANCH}/bin/pubkey-up"
  chmod +x "$PUBKEY_UP"
fi

for service in $($PUBKEY_UP --list-services); do
  info "Upload public key to $service (^C to skip)"
  $PUBKEY_UP $service "${SSH_KEY}.pub"
done

if [ ! -d "$HOME/.fresh" ]; then
  rm ~/.bashrc ~/.zshrc
fi

info "About to run ansible - this may take some time"
ansible-pull -U git@github.com:lewiseason/ansible.git -K

info "Attempting to run fresh"
fresh

success "Done! Correct any errors/run again if required and then reboot"
