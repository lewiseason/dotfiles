if ! zgen saved; then
  zgen oh-my-zsh oh-my-zsh.sh

  zgen oh-my-zsh plugins/git

  zgen load zsh-users/zsh-completions src
  zgen load horosgrisa/autoenv

  # zgen oh-my-zsh themes/arrow
  # zgen oh-my-zsh themes/flazz
  # zgen oh-my-zsh themes/gianu
  zgen oh-my-zsh themes/lukerandall
  # zgen oh-my-zsh themes/minimal
  #zgen oh-my-zsh themes/robbyrussell

  zgen save
fi
