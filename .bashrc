if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi
#PS1='\[\e[1;32m\][\u@\h \w]\$\[\e[0m\] '
PS2='> '

if [ "$TERM" != "dumb" ]; then
    [ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
    eval "`dircolors -b $DIR_COLORS`"
    #alias ls='ls -a --color=auto'
    alias ls='ls -ahN --color=auto --group-directories-first'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias dir='dir --color=auto'
    alias diff='diff --color=auto'
fi

export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$HOME/.local/bin:$HOME/.local/bin/statusbar:$PATH;

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'


if [ -f /usr/bin/neofetch ]; then neofetch; fi
alias config='/usr/bin/git --git-dir=/home/mark/Projects/dotfilesrepo/ --work-tree=/home/mark'
