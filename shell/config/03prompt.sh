#!/bin/sh

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TRANSPORT=ssh
else
  SESSION_TRANSPORT=local
fi

export SESSION_TRANSPORT

case $- in
  *i*) SESSION_TYPE=interactive
esac

export SESSION_TYPE

case $(basename $SHELL) in
  *zsh*) SESSION_SHELL=zsh;;
  bash) SESSION_SHELL=bash;;
  *) SESSION_SHELL=$(basename $SHELL);;
esac

export SESSION_SHELL
