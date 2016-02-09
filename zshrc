ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bortevik"

plugins=(git colored-man ember-cli heroku rails vundle bortevik)

export EDITOR=vim
export VISUAL=vim
export PATH=/usr/local/share/npm/bin:$PATH:/usr/local/bin:/usr/bin:/bin

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Android
export ANDROID_HOME=/Users/dns/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
