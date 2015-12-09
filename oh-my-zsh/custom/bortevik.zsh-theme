# if superuser make the username red » ✗
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi

if [[ -n $SSH_CONNECTION ]]; then
  PROMPT='%{$fg_bold[green]%}%n@%m:%{$fg[blue]%}[%25<...<%~%<<]%{$fg[$NCOLOR]%}%#%{$reset_color%} '
else
  PROMPT='%{$fg[cyan]%}[%25<...<%~%<<]%{$fg[$NCOLOR]%}%#%{$reset_color%} '
fi

RPS1='$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}<"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=">%{$fg[red]%}#"
ZSH_THEME_GIT_PROMPT_CLEAN=">"

alias emacs='/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.13/Emacs.app/Contents/MacOS/Emacs -nw'
alias lvh='rails s -p 3000 -b lvh.me'
