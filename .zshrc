#   ____  _____/ /_  __________
#  /_  / / ___/ __ \/ ___/ ___/
#  / /_(__  ) / / / /  / /__
# /___/____/_/ /_/_/   \___/

source ~/.zprofile && source ~/.config/aliasrc && source ~/.config/broot/launcher/bash/br
[ -f ~/.secrets ] && source ~/.secrets
[ -f ~/.zsh.d/functions/z.zsh ] && source ~/.zsh.d/functions/z.zsh
[ -f ~/.zsh.d/functions/fzf.zsh ] && source ~/.zsh.d/functions/fzf.zsh
[ -f ~/.zsh.d/functions/jq-plugin/jq.plugin.zsh ] && ~/.zsh.d/functions/jq-plugin/jq.plugin.zsh
[ -f ~/.zsh.d/functions/hist.zsh ] && source ~/.zsh.d/functions/hist.zsh
[ -f ~/.zsh.d/prompts/polyglot/polyglot.plugin.zsh ] && source ~/.zsh.d/prompts/polyglot/polyglot.plugin.zsh
[ -f ~/.zsh.d/functions/codestats.zsh ] && source ~/.zsh.d/functions/codestats.zsh
[ -f ~/.zsh.d/functions/wakatime.zsh ] && source ~/.zsh.d/functions/wakatime.zsh
[ -f ~/.zsh.d/functions/forgit.zsh ] && source ~/.zsh.d/functions/forgit.zsh

set -o vi
setopt autocd
autoload -U zmv
bindkey -v
bindkey '^b' beginning-of-line
bindkey '^e' end-of-line
bindkey -s '^o' 'lfcd\n'
# bindkey -s '^l' 'clear\n'

HISTSIZE=100000
SAVEHIST=100000

alias ..='cd ..'
alias ls='gls --color=always'
alias awk='/usr/local/bin/awk'
alias tree='tree -C'
alias nvim=vim
alias vi=vim
alias whois.sh="~/.whois.sh/whois.sh"
alias gyb="~/documents/promnesia/gmail/gyb/gyb"
alias nano='/usr/local/bin/nano'
alias youtube-dl='/usr/local/bin/youtube-dl'
alias bc=dntk
alias gem=/usr/local/Cellar/ruby/2.7.1_2/bin/gem
alias zal='alias -L'
alias nmpv='/Applications/mpv.app/Contents/MacOS/mpv'
alias firefox='firefox -new-tab'
alias gimme='git pull'
alias cdu='cdu -i'
alias tl=timeline
alias feh='feh -T ~/.config/feh/themes'
alias bu='buku --suggest --colors oepxm'
alias rsfetch='rsfetch -UcehHilBs@dp cargo'
alias gooseberry-serve='mdbook serve /Users/bluetooth/Library/ApplicationSupport/rs.gooseberry/gooseberry'
alias t=go-t
alias yt='youtube-dl --add-metadata -i'
alias yta='yt -x -f bestaudio/best'
alias ytv='youtube-viewer'
alias tscr='tiktok-scraper -t all -s true -historypath /Users/bluetooth/Documents/promnesia/tiktok'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias cua='cargo-install-update install-update --all'
alias clr=clear
alias ref='zsh --login'
alias grep='grep --color=always'
alias ffmpeg='ffmpeg -hide_banner'
alias chmodx='chmod +x'
alias tuir='tuir --enable-media'
alias dsd='m dir delete dsfiles'
alias cgo=cargo-go
alias cask='brew cask'
alias urlview=urlscan
alias cat='ccat -G String="fuscia" -G Punctuation="faint" -G Plaintext="lightgray"'
alias _=sudo
alias changed='ls -ltrA'
alias npmls='npm list -g --depth 1'
alias cf='cd ~/.config && changed'
alias old='ls -ltr'
alias cfg=dotbare
alias twtxt='twtxt -c ~/Library/ApplicationSupport/twtxt/config'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval $(ssh-agent -s)
eval "$(ntfy shell-integration)"
source <(navi widget zsh)
source ~/.zsh.d/functions/dotbare/dotbare.plugin.zsh
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

# opam configuration
test -r /Users/bluetooth/.local/share/opam/opam-init/init.zsh && . /Users/bluetooth/.local/share/opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
