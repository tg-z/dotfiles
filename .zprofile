#!/usr/bin/env zsh

export PREFIX="/data/data/com.termux/files/usr"
export HOME="/data/data/com.termux/files/home"
export SHELL="$PREFIX/bin/zsh"
export EDITOR="vim"
export VISUAL="vim"
export READER="zathura"
export LOGNAME="u0_a170"
export USER="${LOGNAME}"
export EXTERNAL_STORAGE="/sdcard"
export ANDROID_RUNTIME_ROOT="/apex/com.android.runtime"
export LD_PRELOAD="$PREFIX/lib/libtermux-exec.so"
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
export CARGO_HOME="$HOME/.local/share/cargo"
export CARGOBIN="$CARGO_HOME/bin"
export HTTPIE_CONFIG_DIR="$HOME/.config/httpie"
export PAGER="less"
export MANPAGER="less"
export BROWSER="xdg-open"
export COLORTERM=truecolor
export DOTBARE_DIR="$HOME/.cfg"
export DOTBARE_TREE="$HOME"
export ANDROID_DATA="/data"
export ANDROID_ROOT="/system"
export STORAGED="$HOME/storage"
export ANDROID_TZDATA_ROOT="/apex/com.android.tzdata"
export TMPDIR="/data/data/com.termux/files/usr/tmp"
export BOOTCLASSPATH="/apex/com.android.runtime/javalib/core-oj.jar:/apex/com.android.runtime/javalib/core-libart.jar:/apex/com.android.runtime/javalib/okhttp.jar:/apex/com.android.runtime/javalib/bouncycastle.jar:/apex/com.android.runtime/javalib/apache-xml.jar:/system/framework/framework.jar:/system/framework/ext.jar:/system/framework/telephony-common.jar:/system/framework/voip-common.jar:/system/framework/ims-common.jar:/system/framework/android.test.base.jar:/apex/com.android.conscrypt/javalib/conscrypt.jar:/apex/com.android.media/javalib/updatable-media.jar"
export WAKATIME_HOME="$HOME/.config/waka"
export RRC_CONFIG="$HOME/.config/rrc/config.toml"
export MAILCAPS="$HOME/.config/tuir/mailcap:$HOME/.config/mailcap"
export SUBS_FILE="$HOME/.local/share/subs/subs.txt"
export TUIR_EDITOR="vim"
export TUIR_URLVIEWER="urlscan"
export TTRV_URLVIEWER="urlscan"
export TTRV_EDITOR="vim"
export MY_CONFIG="$HOME/.config/my"
export SUBS_MENU_PROG="fzf --height=95% --cycle --border=rounded"
export XDG_DOWNLOAD_DIR="$HOME/storage/downloads"
export XDG_PUBLICSHARE_DIR="$STORAGED/shared"
export XDG_DOCUMENTS_DIR="$STORAGED/shared/documents"
export GISTY_DIR="$XDG_DOCUMENTS_DIR/promnesia/gist"
export XDG_MUSIC_DIR="$STORAGED/music"
export XDG_PICTURES_DIR="$STORAGED/pictures"
export XDG_VIDEOS_DIR="$STORAGED/movies"
export PODCAST="$STORAGED/shared/Podcasts"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export ZETTEL_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/zet"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export GOBIN="$GOPATH/bin"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export ZSH_PECO_HISTORY_OPTS="--initial-filter=Fuzzy"
export LESS="-R"
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_CLIP_TIME=60
export VDIRSYNCER_CONFIG="$XDG_CONFIG_HOME/vdirsyncer/config"
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
# path
typeset -U path
path=(
	$PREFIX/bin
	$PREFIX/libexec
	$HOME/bin
	$HOME/.bin
	$HOME/.local/bin
	$GOBIN
	$CARGOBIN
	)
typeset -u fpath
fpath=(
    ~/.zsh.d/comp
    ~/.zsh.d/comp/termux
    $PREFIX/share/zsh/5.8/functions
    ~/.zsh.d/functions/zsh-completions/src
     )
typeset -u manpath
manpath=(
    ~/.local/share/man
    $PREFIX/share/man
    )

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

