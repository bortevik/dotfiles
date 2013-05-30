ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bortevik"

plugins=(git colored-man debian heroku rails4 vundle bortevik)

export EDITOR=vim
export VISUAL=vim
export PATH=$HOME/.rbenv/bin:$PATH:/usr/local/bin:/usr/bin:/bin
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh
