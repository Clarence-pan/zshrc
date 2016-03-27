export PATH=$PATH:~/bin
export prompt="%n@%m$prompt"

ZSHRCD=~/.zshrc.d

alias help='tldr'
alias use-socks-proxy='source ~/bin/use-socks-proxy'
alias use-http-proxy='source ~/bin/use-http-proxy'

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
#alias emacs='/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.15/Emacs.app/Contents/MacOS/Emacs'
alias git-pull-all="git checkout develop && git pull origin develop && git checkout test && git pull origin test"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='emacsclient --alternate-editor=vim'
fi

source $ZSHRCD/docker.inc.sh
