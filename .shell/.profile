export GPG_TTY=$(tty)

# [ -f ~/.gpg-agent-info ] && source ~/.gpg-agent-info
# if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
#    export GPG_AGENT_INFO
# else
#    eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
# fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
