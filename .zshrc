source ~/.zprofile 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.secrets ] && source ~/.secrets 
[ -f ~/.zsh.d/prompts/polyglot/polyglot.plugin.zsh ] && source ~/.zsh.d/prompts/polyglot/polyglot.plugin.zsh
[ -f ~/.zsh.d/functions/codestats.zsh ] && source ~/.zsh.d/functions/codestats.zsh
[ -f ~/.zsh.d/functions/wakatime.zsh ] && source ~/.zsh.d/functions/wakatime.zsh 
[ -f ~/.zsh.d/functions/forgit.zsh ] && source ~/.zsh.d/functions/forgit.zsh 

export PATH="/usr/local/opt/python@3.8/bin:$HOME/Applications:$PATH"

source ~/Library/Preferences/org.dystroy.broot/launcher/bash/br

alias ..='cd ..'
alias ls='gls --color=always'
alias nvim=vim
alias tl='timeline'
alias bu='buku --suggest --colors oepxm'
alias t='go-t'
alias grep='grep --color=always'
alias dsd='m dir delete dsfiles'
alias urlview='urlscan'
alias cat='ccat'
alias _='sudo'
alias changed='ls -ltrA'
alias cf='cd ~/.config && ls -a1'
alias old='ls -ltr'
alias cfg='dotbare'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit 
fi

eval $(ssh-agent -s)
source <(navi widget zsh)
source ~/.zsh.d/functions/dotbare/dotbare.plugin.zsh
source ~/.zsh.d/functions/fiz.zsh

export FZF_DEFAULT_COMMAND="fd . -t f --hidden --follow --exlude .git --preview 'ccat {}'"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#cbccc6,bg:#1f2430,hl:#707a8c
 --color=fg+:#707a8c,bg+:#191e2a,hl+:#ffcc66
 --color=info:#73d0ff,prompt:#707a8c,pointer:#cbccc6
 --color=marker:#73d0ff,spinner:#73d0ff,header:#d4bfff'

export FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--height '80%'
"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || bat {} || tree -C {}) 2> /dev/null | head -150'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
