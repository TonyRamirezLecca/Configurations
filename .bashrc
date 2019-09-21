echo "Welcome Tony"
echo " "

export PATH=$PATH:/Users/tony/.local/bin
export PS1="\W$ "

alias ..='cd ..'
alias ....='cd ../..'
alias ...='cd -'
alias ls='ls -Gh'

function projects() {
	cd /Users/tony/Google\ Drive/projects
	echo " "
	ls
	echo " "
}

function bashrc() {
	vim /Users/tony/.bash_profile
}

function reset() {
	cd /Users/tony
	source .bash_profile
	echo "bash_profile reset"
	echo " "
}

function edit() {
	vim /Users/tony/.local/bin/$1
}


export CLICOLOR=1;
export LSCOLORS=gxhxhxhxfxhxhxhxhxhxhx;



