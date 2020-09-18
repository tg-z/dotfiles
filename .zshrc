#   ____  _____/ /_  __________
#  /_  / / ___/ __ \/ ___/ ___/
#  / /_(__  ) / / / /  / /__
# /___/____/_/ /_/_/   \___/

source ~/.zprofile && source ~/.config/aliasrc
[ -f ~/.secrets ] && source ~/.secrets
[ -f ~/.bashhub/bashhub.zsh ] && source ~/.bashhub/bashhub.zsh > /dev/null 2>&1
[ -f ~/.zsh.d/functions/z.zsh ] && source ~/.zsh.d/functions/z.zsh
[ -f ~/.zsh.d/functions/fzf.zsh ] && source ~/.zsh.d/functions/fzf.zsh
[ -f ~/bin/plugin/jq-zsh/jq.plugin.zsh ] && ~/bin/plugin/jq-zsh/jq.plugin.zsh
[ -f ~/.zsh.d/functions/hist.zsh ] && source ~/.zsh.d/functions/hist.zsh
[ -f ~/.zsh.d/prompts/polyglot/polyglot.plugin.zsh ] && source ~/.zsh.d/prompts/polyglot/polyglot.plugin.zsh
[ -f ~/.zsh.d/functions/codestats.zsh ] && source ~/.zsh.d/functions/codestats.zsh
[ -f ~/.zsh.d/functions/wakatime.zsh ] && source ~/.zsh.d/functions/wakatime.zsh
[ -f ~/.zsh.d/functions/forgit.zsh ] && source ~/.zsh.d/functions/forgit.zsh

set -o vi
setopt autocd
autoload -Uz colors && colors
autoload -U zmv
autoload -Uz compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots) 

# zsh completion menu
zstyle ':completion:*' menu select              # allow selection menu
zstyle ':completion:*' list-colors ''           # color menu items
zstyle ':completion:*' special-dirs true        # show dot files and folders
zstyle ':completion:*' group-name ''            # don't group menu items

# history file
setopt APPEND_HISTORY           # add session history instead of replace
setopt EXTENDED_HISTORY         # more info in history file
setopt HIST_FIND_NO_DUPS        # don't show duplicate commands when finding
setopt HIST_IGNORE_DUPS         # don't record in history is command same as previous
setopt HIST_IGNORE_SPACE        # allow private commands with space prefix
setopt HIST_EXPIRE_DUPS_FIRST   # expire duplicate commands first

autoload edit-command-line; zle -N edit-command-line
bindkey -v "^?" backward-delete-char
bindkey '^e' edit-command-line
bindkey '^b' beginning-of-line
bindkey -s '^o' 'lfcd\n'

HISTSIZE=100000
SAVEHIST=100000

alias ..='cd ..'
alias ls='gls --color=always'
alias awk='/usr/local/bin/awk'
alias tree='tree -C'
alias vi='vim'
alias _='sudo'
alias gyb="~/documents/promnesia/gmail/gyb/gyb"
alias nano='/usr/local/bin/nano'
alias youtube-dl='/usr/local/bin/youtube-dl'
alias canvas-assignments='canvas assignment ls 52351'
alias bc='dntk'
alias e='vim'
alias zal='alias -L'
alias nmpv='/Applications/mpv.app/Contents/MacOS/mpv'
alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim'
alias firefox='firefox -new-tab'
alias gimme='git pull'
alias cdu='cdu -i'
alias tl='timeline'
alias feh='feh -T ~/.config/feh/themes'
alias bu='buku --suggest --colors oepxm'
alias rsfetch='rsfetch -UcehHilBs@dp cargo'
alias gooseberry-serve='mdbook serve ~/documents/promnesia/hypothesis'
alias t='go-t'
alias got='go-t'
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
alias dsd='m dir delete dsfiles'
alias cgo='cargo-go'
alias yabai-update='_ yabai --install-sa'
alias aadb='autoadb scrcpy --window-borderless --always-on-top -s {}'
alias up='upgrade'
alias cask='brew cask'
alias urlview='urlscan'
alias cat='ccat -G String="fuscia" -G Punctuation="faint" -G Plaintext="lightgray"'
alias farbe='farbe -h 10 -w 20'
alias ccli-assignments='ccli assignments "INTRO TO WEBSITE DEVELOPMENT CS 1220-01"'
alias ccli-files='ccli files "INTRO TO WEBSITE DEVELOPMENT CS 1220-01"'
alias changed='ls -ltrA'
alias npmls='npm list -g --depth 1'
alias cf='cd ~/.config && changed'
alias old='ls -ltr'
alias dotbare='~/bin/plugin/dotbare/dotbare'
alias cfg='dotbare'
alias twtxt='twtxt -c ~/Library/ApplicationSupport/twtxt/config'

eval "$(ntfy shell-integration)"
source <(navi widget zsh)
source ~/bin/plugin/dotbare/dotbare.plugin.zsh
source ~/.zsh.d/functions/fiz.zsh

export FZF_DEFAULT_COMMAND="fd . -t f --hidden --follow --exlude .git --preview 'bat {}'"

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

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.config/broot/launcher/bash/br
