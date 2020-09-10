
# default aliases
alias chmodx='chmod +x'
alias zal='alias -L'
alias h='history'
alias hh='hstr'
alias hhf='hstr -f'
alias clr='clear'
alias t='go-t'
alias rd='rm -rf'
alias tree='tree -C'
alias l='ls -lFh'
alias e='vim'
ref='bash --login'
alias cp='cp -r'
alias e='vim'
alias cfg='~/bin/plugin/dotbare/dotbare'
alias tbl='tb --timeline'
alias .='echo $PWD'
alias open='xdg-open'
alias path='echo -e ${PATH//:/\\n}'
alias fpath='echo -e ${FPATH//:/\\n}'
alias mpath='echo -e ${MANPATH//:/\\n}'
alias zrel='source ~/.config/zsh/.zshrc'
alias brel='source ~/.bashrc'
alias changed='ls -ltrA' 

# navigation

alias ..='cd ..'
alias C='| wc -l'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias diff='colordiff'
alias egrep='egrep --color=auto'
alias fastping='ping -c 100 -s.2'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias l.='ls -ad .* --color=auto'
alias la='ls -A'
alias ll='ls -la'
alias ls='ls --color=always'
alias md='mkdir -pv'
alias mount='mount |column -t'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias nowtime='now'
alias path='echo -e ${PATH//:/\\n}'
alias _=sudo

# directory structure

alias R='cd ~/repos'
alias tm='cd ~/tmp'

# listing

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -G'
alias lsa='ls -lah'
alias xa='exa -a1'

# working with archived formats 

alias zip='unzip -l'
alias rar='unrar l'
alias tarls='tar tvf'
alias tarx='tar xf'
alias tarc='tar cf'
alias targ='tar czf'

# npm

alias npmo='npm outdated'
alias npmg='npm i -g '
alias npmst='npm start'
alias npmt='npm test'
alias gitreadme='git add README.md; git commit -m "updating readme"; git push'
alias npmpatch='npm version patch;npm publish;git push;git push --tags'

# brew


# misc 
alias fzf="fzf --layout=reverse --height 40%"
alias grep="grep --color=auto"

# extra 

alias CA="2>&1 | cat -A"
alias D="DISPLAY=:0.0"
alias DN=/dev/null
alias ED="export DISPLAY=:0.0"
alias EG='|& egrep'
alias EH='|& head'
alias EL='|& less'
alias ELS='|& less -S'
alias ETL='|& tail -20'
alias ET='|& tail'
alias F=' | fmt -'
alias G='| egrep'
alias H='| head'
alias HL='|& head -20'
alias Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias LL="2>&1 | less"
alias L="| less"
alias LS='| less -S'
alias MM='| most'
alias M='| more'
alias NE="2> /dev/null"
alias NS='| sort -n'
alias NUL="> /dev/null 2>&1"
alias RNS='| sort -nr'
alias S='| sort'
alias TL='| tail -20'
alias T='| tail'
alias US='| sort -u'
alias VM=/var/log/messages
alias X0G='| xargs -0 egrep'
alias X0='| xargs -0'
alias XG='| xargs egrep'
alias X='| xargs'
alias which='type' 
