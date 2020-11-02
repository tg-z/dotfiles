#!/bin/zsh

export USER="bluetooth"
export HOME="/Users/$USER"
export SHELL="zsh"
export ZSH="${PREFIX}/bin/${SHELL}"
export EDITOR="vim"
export VISUAL="vim"
export READER="zathura"
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s" LESS_ADVANCED_PREPROCESSOR=1
export PAGER="less"
export TERMINAL="alacritty"
export MANPAGER="less"
export BROWSER="firefox"
export OPENER="open"
export COLORTERM="truecolor"
# xdg home dirs
export PODCAST="$HOME/podcasts"
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
# declutter home
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME}/notmuch-config"
export ZETTEL_DIR="${XDG_DATA_HOME}/zet"
export NIMBLE_DIR="${XDG_DATA_HOME}/nimble"
export PERLBREW_ROOT="${XDG_DATA_HOME}/perlbrew"
export PERLBREW_BIN="${PERLBREW_ROOT}/bin"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export CARGOBIN="${CARGO_HOME}/bin"
export GOPATH="${XDG_DATA_HOME}/go"
export GOBIN="${GOPATH}/bin"
export WEECHAT_HOME="${XDG_DATA_HOME}/weechat"
export HISTFILE="${XDG_DATA_HOME}/history"
export TUIR_EDITOR="${EDITOR}"
export TUIR_BROWSER="${BROWSER}"
export TUIR_URLVIEWER="urlscan"
export TTRV_URLVIEWER="urlscan"
export TTRV_BROWSER="${BROWSER}"
export TTRV_EDITOR="${mvim}"
export SURFRAW_CONF="${XDG_CONFIG_HOME}/surfraw/conf"
export ZEIT_DB="${XDG_DATA_HOME}/zeit/zeit.db"
export RFC_DIR="${XDG_CACHE_HOME}/rfc"
export VDIRSYNCER_CONFIG="${XDG_CONFIG_HOME}/vdirsyncer/config"
export MATES_DIR="${XDG_CACHE_HOME}/contacts"
export WAKATIME_HOME="${XDG_CONFIG_HOME}/waka"
export SUBS_FILE="${XDG_DATA_HOME}/subs/subs.txt"
export RRC_CONFIG="${XDG_CONFIG_HOME}/rrc/config.toml"
export MY_CONFIG="${XDG_CONFIG_HOME}/my"
export HSTR_CONFIG="hicolor,prompt-bottom,keywords-matching,help-on-opposite-side"

# program defaults

export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_EXTENSIONS_DIR=/usr/local/lib/password-store/extensions
export PASSWORD_STORE_CLIP_TIME=120
export FZF_DEFAULT_COMMAND="fd -t f -H -i -L"
export FORGIT_COPY_CMD='pbcopy'
export FORGIT_FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}"
export FORGIT_CMD_FZF_OPTS=""
export FORGIT_LOG_FZF_OPTS='
--bind="ctrl-e:execute(echo {} |grep -Eo [a-f0-9]+ |head -1 |xargs git show |vim -)"
'
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || bat {} || tree -C {}) 2> /dev/null | head -150'"
export FZF_ALT_C_OPTS="--preview 'glow {}'"
export SUBS_MENU_PROG="fzf --height=95% --cycle --border=rounded --preview-window=hidden"
export FZF_DEFAULT_OPTS="--layout=reverse --height 65%"
export ZSH_PECO_HISTORY_OPTS="--layout=bottom-up"
export ZSH_PECO_HISTORY_DEDUP="1"
export LESS="-R"
export JUSTFILE_FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}"
export JUSTFILE_EDITOR="${EDITOR:-mvim}"

export DOTBARE_BACKUP="${XDG_DATA_HOME}/dotbare"
export DOTBARE_PREVIEW="bat {}"
export DOTBARE_FZF_DEFAULT_OPTS="--preview-window=right:65%"
export DOTBARE_KEY="
  --bind=alt-a:toggle-all       # toggle all selection
  --bind=alt-j:jump             # label jump mode, sort of like vim-easymotion
  --bind=alt-0:top              # set cursor back to top
  --bind=alt-s:toggle-sort      # toggle sorting
  --bind=alt-t:toggle-preview   # toggle preview
"
# path settings

export MAILCAPS="${XDG_CONFIG_HOME}/mailcap:${HOME}/.mailcap"

typeset -U path
path=(
    /usr/local/opt/coreutils/libexec/gnubin
    /usr/local/opt/gnu-sed/libexec/gnubin
    /usr/local/opt/grep/libexec/gnubin
    ~/.bin
    ~/bin
    ~/.local/bin
    /usr/local/bin
    /usr/local/opt/binutils/bin
    /usr/local/opt/ruby/bin
    /usr/local/lib/ruby/gems/2.7.0/bin
    /usr/bin
    /usr/sbin
    /sbin
    /usr/libexec
    /bin
    $GOBIN
    $CARGOBIN
    $PERLBREW_BIN
    $NIMBLE_DIR/bin
    ~/.local/share/npm/bin
    ~/.local/share/kyrat/bin
    /opt/X11/bin
    /usr/local/opt/fzf/bin
    /usr/local/opt/openjdk/bin
    /Applications/Firefox.app/Contents/MacOS
    /usr/local/opt/curl/bin
    $XDG_DATA_HOME/flutter/bin
    $XDG_DATA_HOME/mangadl
    /usr/local/opt/python@3.9/bin
    ~/Library/Python/3.9/bin
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
    ~/.local/share/npm/share/man
    /usr/local/opt/ghi/share/man
    /usr/local/opt/gist/share/man
    /usr/local/opt/help2man/share/man/man1
    /usr/local/opt/irssi/share/man
    /usr/local/opt/gh/share/man
    /usr/local/opt/feh/share/man
    /usr/local/opt/entr/share/man
    /usr/local/opt/exif/share/man
    /usr/local/fdupes/share/man
    /usr/local/opt/coreutils/share/man
    /usr/local/opt/cowsay/share/man
    ~/.local/share/man
    /usr/local/opt/python@3.9/share/man
    )

typeset -u pkg_config_path
pkg_config_path=(
    ~/.local/lib/pkgconfig
    /usr/local/opt/openal-soft/lib/pkgconfig
    /usr/local/lib/pkgconfig
    /usr/local/Cellar/libtoxcore/HEAD-470fa79/lib/pkgconfig
    /usr/local/opt/curl/lib/pkgconfig
    )


export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"

# Input prompt of fuzzy searcher
export FONTPREVIEW_SEARCH_PROMPT=">> "

# Size of the font preview window
export FONTPREVIEW_SIZE=532x365

# The position where the font preview window should be displayed
export FONTPREVIEW_POSITION="+0+0"

# Font size
export FONTPREVIEW_FONT_SIZE=38

# Background color of the font preview window
export FONTPREVIEW_BG_COLOR="#ffffff"

# Foreground color of the font preview window
export FONTPREVIEW_FG_COLOR="#000000"

# Preview text that should be displayed in the font preview window
export FONTPREVIEW_PREVIEW_TEXT="ABCDEFGHIJKLM\nNOPQRSTUVWXYZ\nabcdefghijklm\nnopqrstuvwxyz\n1234567890\n!@$\%(){}[]"

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

