export PATH=$PATH:~/bin
export prompt="%n@%m$prompt"

alias help='tldr'
alias use-socks-proxy='source ~/bin/use-socks-proxy'
alias use-http-proxy='source ~/bin/use-http-proxy'
alias composer='composer.phar'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='emacsclient --alternate-editor=vim'
fi

