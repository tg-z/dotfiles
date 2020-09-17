# prompt

# optional
export syncdirectory="/data/data/com.termux/files/home/storage/downloads/Sync"
# functions 
mkd() { mkdir -p "$1" && cd "$1"; }
emalian () { echo -e '\xf0\x9f\x91\xbe'; } 
new_alias() {
  local last_command=$(echo `history |tail -n2 |head -n1` | sed 's/[0-9]* //')
  echo alias $1="'""$last_command""'" >> ~/.bash_aliases
  . ~/.bash_aliases; } 
get_dir() { printf "%s" $(pwd | sed "s:$HOME:~:") ; }
get_sha() { git rev-parse --short HEAD 2>/dev/null ; }
bs () { source ~/.bashrc; source ~/.bash_profile ; } 
unpk () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
makezip() { zip -r "${1%%/}.zip" "$1" ; }
ff() { find . -type f -iname '*'"$*"'*' -ls ; }
fe() { find . -type f -iname '*'"${1:-}"'*' \
-exec ${2:-file} {} \;  ; }
find_broken_symlinks () { find -L "${@:-.}" -type l -exec ls -lond '{}' ; }
gitcd() {
    cd ~/repos/$(ghq list| fzf)
}
colorgrid(){
    iter=16
    while [ $iter -lt 52 ]
    do
        second=$[$iter+36]
        third=$[$second+36]
        four=$[$third+36]
        five=$[$four+36]
        six=$[$five+36]
        seven=$[$six+36]
        if [ $seven -gt 250 ];then seven=$[$seven-251]; fi

        echo -en "\033[38;5;$(echo $iter)m█ "
        printf "%03d" $iter
        echo -en "   \033[38;5;$(echo $second)m█ "
        printf "%03d" $second
        echo -en "   \033[38;5;$(echo $third)m█ "
        printf "%03d" $third
        echo -en "   \033[38;5;$(echo $four)m█ "
        printf "%03d" $four
        echo -en "   \033[38;5;$(echo $five)m█ "
        printf "%03d" $five
        echo -en "   \033[38;5;$(echo $six)m█ "
        printf "%03d" $six
        echo -en "   \033[38;5;$(echo $seven)m█ "
        printf "%03d" $seven

        iter=$[$iter+1]
        printf '\r\n'
    done
}
sink() {
cd "${syncdirectory}" && ls -1
}

alias hm='cd'
alias cf='cd ~/.config && changed'
alias ..='cd ..'
alias edit='vim'
alias ls='ls --color=always'
alias _='sudo'
alias urlview='urlscan'
alias clr='clear'
alias cgo='cargo-go'
alias cua='cargo-install-update install-update --all'

source ~/.local/share/icons-in-terminal/icons_bash.sh
source ~/.config/broot/launcher/bash/br

