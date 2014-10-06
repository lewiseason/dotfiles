# Enable programmable completion features, just in case it isn't
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Enable git bash completion, if exists
if [ -f /etc/bash_completion.d/git ]; then
    . /etc/bash_completion.d/git
fi

