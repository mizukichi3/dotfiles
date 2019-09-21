alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias ls='ls -al'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias gc='git branch -a | peco'
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[1;32m\]\t \[\e[1;33m\][\w] \[\e[1;34m\]\$(parse_git_branch)\n\[\e[1;37m\]\h:\u\\$ \[\e[0m\]"
export PATH=$PATH:$HOME/Library/Python/3.7/bin
source $HOME/Library/Python/3.7/bin/aws_zsh_completer.sh
