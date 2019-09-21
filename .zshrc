# prompt
if [ $UID -eq 0 ];then
PROMPT="%F{red}%n:%f%F{green}%d%f [%m] %%
"
PROMPT2="%F{red}%n:%f%F{green}%_%f [%m] %%
"
else
# mac
PROMPT="%F{cyan}%n:%f%F{green}%d%f [%m] %%
"
PROMPT2="%F{cyan}%n:%f%F{green}%_%f [%m] %%
"
fi


# funciton for showing git branch status
function rprompt-git-current-branch {
  local branch_name st branch_status

  if [ ! -e  ".git" ]; then
    # the case where the directory is not managed by git
    return
  fi
  branch_name=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    # clean
    branch_status="%F{green}"
  elif [[ -n `echo "$st" | grep "^Untracked files"` ]]; then
    # untracked
    branch_status="%F{red}?"
  elif [[ -n `echo "$st" | grep "^Changes not staged for commit"` ]]; then
    # modified
    branch_status="%F{red}+"
  elif [[ -n `echo "$st" | grep "^Changes to be committed"` ]]; then
    # staged
    branch_status="%F{yellow}!"
  elif [[ -n `echo "$st" | grep "^rebase in progress"` ]]; then
    # the case where there is some actions such as conflict
    echo "%F{red}!(no branch)"
    return
  else
    # other case
    branch_status="%F{blue}"
  fi

  echo "${branch_status}[$branch_name]"
}

setopt prompt_subst

RPROMPT='`rprompt-git-current-branch`'

# Emacsライクなキーバインド
bindkey -e

# 自動補完を有効にする
autoload -U compinit; compinit

# エイリアス
alias ls='ls -al'
alias gc='git checkout $(git branch -a | peco)'

# AWS CLIを有効にする
export PATH=$PATH:$HOME/Library/Python/3.7/bin
source $HOME/Library/Python/3.7/bin/aws_zsh_completer.sh
