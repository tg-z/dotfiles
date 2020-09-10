# configuring bash defaults
if [ -f ~/.bashrc ]; then 
    source ~/.bashrc
fi
#  preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi
# aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
# secrets
if [ -f ~/.secrets ]; then
    source ~/.secrets
fi
if [ -f "$HOME/.config/shortcutrc" ]; then 
  source "$HOME/.config/shortcutrc"
fi

# programs
export HOME="/data/data/com.termux/files/home"
export EDITOR="vim"
export TERM="xterm-256color"
export COLORTERM="truecolor"
export PAGER="less"
export LESS="-R"
export LANG="en_US.UTF-8"
export DOTBARE_DIR="$HOME/.cfg"
export DOTBARE_TREE="$HOME"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export WEGORC="$HOME/.config/wegorc"
export HTTPIE_CONFIG_DIR="$HOME/.config/httpie"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export XDG_DOWNLOAD_DIR="$HOME/storage/downloads"
export CARGO_HOME="$HOME/.local/share/cargo"
export HISTFILE="$HOME/.local/share/history"
export GOPATH="$HOME/.local/share/go"
export GOBIN="$GOPATH/bin"
export HISTCONTROL=ignoredups
export PATH="$HOME/bin:$HOME/.bin:$GOBIN:$HOME/.local/share/cargo/bin:$HOME/arch:$HOME/.local/bin"
export PATH="/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/libexec:$PATH"

source /data/data/com.termux/files/home/.config/broot/launcher/bash/br
