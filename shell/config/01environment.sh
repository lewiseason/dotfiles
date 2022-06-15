EDITOR='nvim'
VISUAL='nvim'
PAGER='less -SFXiMR'
BROWSER='google-chrome-unstable'
MAILTO=me@lewiseason.co.uk
MAILTO_WORK=lewis.eason@commsworld.com

export EDITOR VISUAL PAGER BROWSER MAILTO MAILTO_WORK

export ACK_PAGER="$PAGER"
export LANG='en_GB.UTF-8'
export LS_COLORS=

export HISTSIZE=1000000000 SAVEHIST=$HISTSIZE

alias vim=nvim

pathAppend node_modules/.bin

PATH=~/bin:$PATH

export PATH
