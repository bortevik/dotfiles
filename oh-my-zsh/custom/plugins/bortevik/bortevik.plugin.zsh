c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

# autocorrect is more annoying than helpful
unsetopt correct_all

alias go='git checkout '
alias gob='git checkout -b'
alias gbd='git branch -d'

alias ls='ls -hG'

## rails
alias rgc='rails generate controller'
alias rgmod='rails generate model'
alias rdtp='rake db:test:prepare'
alias g='guard -c'
function migrate {
  rake db:migrate
  rake db:test:prepare
}
function populate {
  rake db:populate
  rake db:seed
  rake db:test:prepare
}
function redb {
  rake db:drop
  rake db:create
  rake db:migrate
  rake db:populate
  rake db:seed
  rake db:test:prepare
}

alias ccb="bundle exec cucumber $1 --require features"

alias start_mysql="/usr/local/Cellar/mysql/5.6.16/support-files/mysql.server start"
alias stop_mysql="/usr/local/Cellar/mysql/5.6.16/support-files/mysql.server stop"

alias start_elasticsearch="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"
alias stop_elasticsearch="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"

alias ctags="`brew --prefix`/bin/ctags"


SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
