EDITOR='nvim'
VISUAL='nvim'
PAGER='less -SFXiMR'
BROWSER='firefox:google-chrome'
MAILTO=me@lewiseason.co.uk
MAILTO_WORK=lewis.eason@commsworld.com

ACK_PAGER="$PAGER"

LANG='en_GB.UTF-8'
LS_COLORS=

AUTOSSH_POLL=10

pathPrepend ~/bin
pathAppend node_modules/.bin

export EDITOR VISUAL PAGER BROWSER MAILTO MAILTO_WORK
export LANG PATH LS_COLORS AUTOSSH_POLL ACK_PAGER

alias vim=nvim
