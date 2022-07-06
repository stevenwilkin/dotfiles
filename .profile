# npm
export PATH=/usr/local/share/npm/bin:$PATH

# Go
export GOPATH=~/code/go
export PATH=~/code/go/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

export EDITOR=vi

# ssh-agent
[ -z "$SSH_CLIENT" ] && [ -f $HOME/.ssh-agent ] && . $HOME/.ssh-agent
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

# ls
alias ll='ls -l'
alias la='ls -la'

# df
alias dh='df -h'

# git
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'

# screen on OS X
alias screen='export SCREENPWD=$(pwd); /usr/bin/screen'
case "$TERM" in 
	'screen')
		 cd $SCREENPWD
		 ;; 
esac

# rbenv
eval "$(rbenv init -)"

# bundler
alias be="bundle exec"
function bo {
	cd `bundle info $1 | awk '/Path/ { print $2 }'`
}

# bundle binstubs
PATH="./.bundle/bin:$PATH"

# rails
alias s='./script/rails server'
alias c='./script/rails console'

# search bash history with up/down arrow
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
