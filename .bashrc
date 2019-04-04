alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias ls='ls -al'
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[1;32m\]\t \[\e[1;33m\][\w] \[\e[1;34m\]\$(parse_git_branch)\n\[\e[1;37m\]\h:\u\\$ \[\e[0m\]"

