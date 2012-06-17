export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export TERM=xterm-color

export PS1="\[\033[01;38m\]\u@hp-mbp \[\033[01;32m\]\w\n\[\033[0m\][\t] \[\033[01;34m\]\$\[\033[00m\] "

# export PATH=$HOME/scripts:$HOME/bin:$PATH
export MATLABPATH=$HOME/scripts/matlab
export EDITOR="vim"

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

alias Rns="R --no-save"
alias pup="sudo port selfupdate; sudo port upgrade outdated"

# alias Rv="R --vanilla"

# # check if Emacs daemon is running. If not, start it.
# if [ -f ~/scripts/emacs_daemon.sh ]; then
#     . ~/scripts/emacs_daemon.sh
# fi

# Amazon AWS
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

export EC2_URL=https://ec2.us-west-1.amazonaws.com

export PATH=~/Downloads/sratoolkit.2.1.10-mac64/bin:$PATH

tree () {
    # Modified version of:
    # http://murphymac.com/tree-command-for-mac/
    if [ $# -eq 0 ]
    then
        find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
        return
    elif [ $# -eq 1 ]
    then
        find $1 -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
        return
    fi

    echo "Sorry, 'tree' can only take one argument."
}

# http://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

