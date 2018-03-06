EDITOR='vim'
PAGER='less -SFXiMR'
BROWSER='google-chrome:firefox:lynx:elinks'
MAILTO=me@lewiseason.co.uk

ACK_PAGER="$PAGER"

LANG='en_GB.UTF-8'
LS_COLORS=

AUTOSSH_POLL=10

pathPrepend ~/bin
pathAppend node_modules/.bin

export EDITOR PAGER BROWSER LANG PATH LS_COLORS AUTOSSH_POLL ACK_PAGER
