#   ____  _____/ /_  __________
#  /_  / / ___/ __ \/ ___/ ___/
#  / /_(__  ) / / / /  / /__
# /___/____/_/ /_/_/   \___/

source ~/.zprofile && source ~/.config/aliasrc
[ -f ~/.secrets ] && source ~/.secrets
[ -f ~/.zsh.d/functions/z.zsh ] && source ~/.zsh.d/functions/z.zsh
[ -f ~/.zsh.d/functions/hist.zsh ] && source ~/.zsh.d/functions/hist.zsh
[ -f ~/.zsh.d/prompts/typewritten/typewritten.plugin.zsh ] && source ~/.zsh.d/prompts/typewritten/typewritten.plugin.zsh
[ -f ~/.zsh.d/functions/codestats.zsh ] && source ~/.zsh.d/functions/codestats.zsh
[ -f ~/.zsh.d/functions/wakatime.zsh ] && source ~/.zsh.d/functions/wakatime.zsh
[ -f ~/.zsh.d/functions/forgit.zsh ] && source ~/.zsh.d/functions/forgit.zsh

set -o vi
setopt autocd
autoload -Uz colors && colors
autoload -Uz compinit

# zsh completion menu
zstyle ':completion:*' menu select              # allow selection menu
zstyle ':completion:*' list-colors ''           # color menu items
zstyle ':completion:*' special-dirs true        # show dot files and folders
zstyle ':completion:*' group-name ''            # don't group menu items

bindkey -v "^?" backward-delete-char

# History file
setopt APPEND_HISTORY           # add session history instead of replace
setopt EXTENDED_HISTORY         # more info in history file
setopt HIST_FIND_NO_DUPS        # don't show duplicate commands when finding
setopt HIST_IGNORE_DUPS         # don't record in history is command same as previous
setopt HIST_IGNORE_SPACE        # allow private commands with space prefix
setopt HIST_EXPIRE_DUPS_FIRST   # expire duplicate commands first

autoload -U zmv
bindkey -v
# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey '^b' beginning-of-line
bindkey -s '^o' 'lfcd\n'

HISTSIZE=100000
SAVEHIST=100000

alias ..='cd ..'
alias ls='ls --color=always'
alias tree='tree -C'
alias vi='vim'
alias bc='dntk'
alias e='vim'
alias zal='alias -L'
alias gimme='git pull'
alias tl='timeline'
alias bu='buku --suggest --colors oepxm'
alias rsfetch='rsfetch -UcehHilBs@dp cargo'
alias go-t='got'
alias gols='ls -1 $GOBIN'
alias carls='ls -1 $CARGOBIN'
alias yt='youtube-dl --add-metadata -i'
alias yta='yt -x -f bestaudio/best'
alias ytv='youtube-viewer'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias cua='cargo-install-update install-update --all'
alias clr='clear'
alias ref='zsh --login'
alias grep='grep --color=always'
alias ffmpeg='ffmpeg -hide_banner'
alias chmodx='chmod +x'
alias mvi='mpv --config-dir=$HOME/.config/mvi'
alias tuir='tuir --enable-media'
alias cgo='cargo-go'
alias up='upgrade'
alias urlview='urlscan'
alias cat='ccat -G String="fuscia" -G Punctuation="faint" -G Plaintext="lightgray"'
alias farbe='farbe -h 10 -w 20'
alias ccli-assignments='ccli assignments "INTRO TO WEBSITE DEVELOPMENT CS 1220-01"'
alias ccli-files='ccli files "INTRO TO WEBSITE DEVELOPMENT CS 1220-01"'
alias changed='ls -ltrA'
alias cf='cd ~/.config && changed'
alias dotbare='~/bin/plugin/dotbare/dotbare'
alias cfg='dotbare'
alias ll='ls -lah'
alias rd='rm -rf'
alias u='cd $PREFIX'
alias h='cd $HOME'
alias open='termux-open'
alias rel='termux-reload-settings'
alias style='termux-style'
alias py='python3.9'
alias she='echo /data/data/com.termux/files/usr/bin/bash'
alias st='st -f Iosevka -g 80x16'

source <(navi widget zsh)
source ~/bin/plugin/dotbare/dotbare.plugin.zsh
source ~/.zsh.d/functions/termux.zsh

export FZF_DEFAULT_COMMAND="fd -t f -H -L --exlude .git --preview 'bat {}'"

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

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

source ~/.zsh.d/functions/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh.d/functions/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
