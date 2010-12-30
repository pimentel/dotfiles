export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export TERM=xterm-color
# export PS1="\[\033[01;32m\]\u@hp-mbp\[\033[01;34m\] \w \$\[\033[00m\] "
# export PS1="\[\033[01;38m\]\u@hp-mbp \[\033[01;32m\]\w \[\033[01;34m\] \n\$\[\033[00m\] "
NO_COLOR="\[\033[00m\]"
export PS1="\[\033[01;38m\]\u@hp-mbp \[\033[01;32m\]\w\n\[\033[0m\][\t] \[\033[01;34m\]\$\[\033[00m\] "

export PATH=$HOME/scripts:$HOME/bin:$PATH

export MATLABPATH=$HOME/scripts/matlab

export EDITOR=emacs
# MacPorts Begin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# this will break your MANPATH
# use /etc/man.conf
#export MANPATH=/opt/local/share/man:$MANPATH

# this will add the libraries in CPATH to the -I line in gcc/g++
export CPATH=/opt/local/include
export C_INCLUDE_PATH=$CPATH
export CPLUS_INCLUDE_PATH=$CPATH

# bash-completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Finished adapting your PATH environment variable for use with MacPorts.

alias pu="pushd"
alias po="popd"
alias grep="grep --color=auto"
alias ec="emacsclient -nw"
source ~/.git-completion.bash
