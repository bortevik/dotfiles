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

alias ls='ls -h --color=auto'

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