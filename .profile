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

# grep
alias pg='ps waux | grep -v grep | grep'
alias hg='history | grep'

function sg {
	grep -r $1 * | grep -v svn
}

# ls
alias ll='ls -l'
alias la='ls -la'

# df
alias dh='df -h'

# git
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gc='git commit'

# svn
function saa {
    svn st | grep '^?' | awk '{print $2}' | xargs svn add 
}

alias st="svn st"
alias sd="svn diff | less"

export SVN_EDITOR=svneditor

# screen on OS X
alias screen='export SCREENPWD=$(pwd); /usr/bin/screen'
case "$TERM" in 
	'screen')
		 cd $SCREENPWD
		 ;; 
esac

# ruby version manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
