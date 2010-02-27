# MacPorts 
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# ssh-agent
[  -z "$SSH_CLIENT" ] && . $HOME/.ssh-agent
alias keyon="ssh-add -t 10800"
alias keyoff='ssh-add -D'
alias keylist='ssh-add -l'

# ~/bin in PATH if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

# svn
function saa {
    svn st | grep '^?' | awk '{print $2}' | xargs svn add 
}

alias st="svn st"
