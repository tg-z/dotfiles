#!/bin/zsh

export USER="bluetooth"
export HOME="/Users/$USER"
export SHELL="/usr/local/bin/zsh"
export ZSH="zsh"
export EDITOR="vim"
export VISUAL="vim"
export READER="zathura"
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
export PAGER="less"
export TERMINAL="alacritty"
export MANPAGER="less"
export BROWSER="firefox"
export COLORTERM="truecolor"
export TUIR_EDITOR="vim"
export TUIR_BROWSER="firefox"
export TUIR_URLVIEWER="urlscan"
export TTRV_URLVIEWER="urlscan"
export TTRV_BROWSER="firefox"
export TTRV_EDITOR="vim"
export PODCAST="$HOME/podcasts"
export WAKATIME_HOME="$HOME/.config/waka"
export MAILCAPS="$HOME/.config/tuir/mailcap:$HOME/.config/mailcap:$HOME/.mailcap"
export SUBS_FILE="$HOME/.local/share/subs/subs.txt"
export MY_CONFIG="$HOME/.config/my"
export SUBS_MENU_PROG="fzf --height=95% --cycle --border=rounded"
export GISTY_DIR="$HOME/documents/promnesia/gist"
export XDG_DESKTOP_DIR="$HOME/desktop"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_PUBLICSHARE_DIR="$HOME/public"
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pictures"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export ZETTEL_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/zet"
export PERLBREW_ROOT="${XDG_DATA_HOME:-$HOME/.local/share}/perlbrew"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export CARGO_HOME="${XDG_DATA_HOME:-HOME/.local/share}/cargo"
export CARGOBIN="${CARGO_HOME}/bin"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GOBIN="${GOPATH}/bin"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export FZF_DEFAULT_OPTS="--layout=reverse --height 65%"
export ZSH_PECO_HISTORY_OPTS="--layout=bottom-up"
export ZSH_PECO_HISTORY_DEDUP="1"
export LESS="-R"
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_EXTENSIONS_DIR=/usr/local/lib/password-store/extensions
export PASSWORD_STORE_CLIP_TIME=120
export SURFRAW_CONF="$HOME/.config/surfraw/conf"
export VDIRSYNCER_CONFIG="$XDG_CONFIG_HOME/vdirsyncer/config"
export MATES_DIR="$HOME/.cache/contacts"
export PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig:/usr/local/Cellar/libtoxcore/HEAD-56992b0/lib/pkgconfig:/usr/local/opt/curl/lib/pkgconfig:$PKG_CONFIG_PATH"
export DOTBARE_BACKUP="${XDG_DATA_HOME:-$HOME/.local/share}/dotbare"
export DOTBARE_PREVIEW="bat {}"
export DOTBARE_FZF_DEFAULT_OPTS="--preview-window=right:65%"
export DOTBARE_KEY="
  --bind=alt-a:toggle-all       # toggle all selection
  --bind=alt-j:jump             # label jump mode, sort of like vim-easymotion
  --bind=alt-0:top              # set cursor back to top
  --bind=alt-s:toggle-sort      # toggle sorting
  --bind=alt-t:toggle-preview   # toggle preview
"
export BOOST_INC_DIR="/usr/local/include/boost"

# export PATH="/usr/local/opt/flex/bin:$PATH"
# export PATH="/usr/local/opt/bison/bin:$PATH"

# fpath + manpages

typeset -U path
path=(
    /usr/local/opt/coreutils/libexec/gnubin
    /usr/local/opt/gnu-sed/libexec/gnubin
    ~/.bin
    ~/bin
    ~/.local/bin
    /usr/local/bin
    /usr/local/opt/binutils/bin
    /usr/bin
    /usr/sbin
    /sbin
    /usr/libexec
    /bin
    $GOBIN
    $CARGOBIN
    ~/.local/share/kyrat/bin
    /opt/X11/bin
    /usr/local/opt/fzf/bin
    /usr/local/Cellar/perl/5.32.0/bin
    /Applications/Firefox.app/Contents/MacOS
    /usr/local/opt/curl/bin
    /usr/local/lib/ruby/gems/2.7.0/bin
    /usr/local/opt/python@3.8/bin
    ~/Library/Python/3.8/bin
    )

typeset -u fpath
fpath=(
    ~/.zsh.d/comp
    ~/.zsh.d/comp/macos
    /usr/local/Cellar/zsh/5.8/share/zsh/functions
    /usr/local/Cellar/zsh-completions/0.32.0/share/zsh-completions
    /usr/share/zsh/5.7.1/functions
    )

typeset -u manpath
manpath=(
    /usr/local/share/man
    /usr/local/Cellar/zsh/5.8/share/man
    /usr/local/Cellar/zsh/5.8/share/zsh/help
    /opt/X11/share/man
    /usr/share/man
    ~/.local/share/man
    )
# export LIBTOOL=`which glibtool`
# export LIBTOOLIZE=`which glibtoolize`
# ln -s `which glibtoolize` /usr/local/bin/libtoolize
# ln -s /usr/lib/libncurses.dylib /usr/local/lib/libncursesw.dylib

export LF_ICONS="\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.vimrc=:\
*.viminfo=:\
*.gitignore=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

