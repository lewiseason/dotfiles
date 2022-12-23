EDITOR='nvim'
VISUAL='nvim'
PAGER='less -SFXiMR'
BROWSER='google-chrome'
MAILTO=me@lewiseason.co.uk
MAILTO_WORK=lewis@activitystream.com

export EDITOR VISUAL PAGER BROWSER MAILTO MAILTO_WORK

export ACK_PAGER="$PAGER"
export LANG='en_GB.UTF-8'
export LS_COLORS=

export HISTSIZE=1000000000 SAVEHIST=$HISTSIZE

alias vim=nvim

pathAppend node_modules/.bin
pathAppend ~/.cargo/bin
pathAppend ~/.local/bin

PATH=~/.rvm/bin:~/bin:$PATH

export PATH
