if ! zgen saved; then
  zgen load seletskiy/zsh-zgen-compinit-tweak

  zgen oh-my-zsh

  zgen oh-my-zsh lib/completion.zsh
  zgen oh-my-zsh lib/git.zsh
  zgen oh-my-zsh lib/history.zsh
  zgen oh-my-zsh lib/key-bindings.zsh

  zgen oh-my-zsh plugins/git

  zgen load zsh-users/zsh-completions src
  zgen load horosgrisa/autoenv

  zgen oh-my-zsh themes/jreese

  zgen save
fi
