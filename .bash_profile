export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export TERM=xterm-color

export PS1="\[\033[01;38m\]\u@hp-mbp \[\033[01;32m\]\w\n\[\033[0m\][\t] \[\033[01;34m\]\$\[\033[00m\] "

# export PATH=$HOME/scripts:$HOME/bin:$PATH
export MATLABPATH=$HOME/scripts/matlab
export EDITOR="emacsclient -nw"

# MacPorts begin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# this will break your MANPATH
# use /etc/man.conf
export MANPATH=/opt/local/share/man:$MANPATH

# this will add the libraries in CPATH to the -I line in gcc/g++
export CPATH=/opt/local/include
export C_INCLUDE_PATH=$CPATH
export CPLUS_INCLUDE_PATH=$CPATH

# bash-completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi 
# Finished adapting your PATH environment variable for use with MacPorts.
# MacPorts end

alias ll="ls -l"
alias lh="ls -lh"
alias grep="grep --color=auto"
alias pu="pushd"
alias po="popd"
alias em="emacsclient -nw"

alias Rns="R --no-save"
# alias Rv="R --vanilla"

# check if Emacs daemon is running. If not, start it.
if [ -f ~/scripts/emacs_daemon.sh ]; then
    . ~/scripts/emacs_daemon.sh
fi

 # Amazon AWS
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

export EC2_URL=https://ec2.us-west-1.amazonaws.com
