# .bashrc - bash settings configuration file
# to reload file run:	source .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

### colored prompt ###
#export PS1="\e[0;31m\u e\m @\h:\w> "
#c1=$(tput setaf 2)
#c2=$(tput setaf 3)
#c3=$(tput setaf 7)
#reset=$(tput sgr0)
#PS1="\[$c1\]\u\[$reset\]@\[$c2\]\h\[$reset\]:\[$c3\]\w\[$reset\]> "
#export PS1="\[\033[32;3m\]${USER}\[\033[37;1m\]@\[\033[37;2m\]\\h\[\033[37;1m\]:\[\033[32;1m\]\\W\[\033[37;1m\]>\[\033[0m\] "
#export PS1="[\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;34m\]\h\[\033[00m\] \w] ->"
export PS1="\[\033[00;32m\]\u\[\033[00m\]@\[\033[01;34m\]\h\[\033[00m\]:\[\033[1;32m\]\W\[\033[0m\]> "

# User specific aliases and functions
alias vi=vim 						# Alias for vim
alias nw='date "+%F.%H-%M-%S"'
alias ls="ls --color"
#alias lsd="ls -l | grep -e '^d'"
alias ll="ls -l --color"
#alias la="ls -al --color"
alias la="LC_COLLATE=C ls -alF --color=auto"
alias lsa="ls -ld .??*"		# present only hidden files
alias lsd="ls -ld */ .*/"
alias lsf="ls -al --color=always | grep -ve '^d'" 
alias atmux="tmux attach"

# Michael's alias for converting wwpn from blabla to bl:ab:la
wwpn() {
        echo $@ | perl -p -e 's/(\w\w)(?=\w)/$1:/g'
	}
# Michael's alias to go from hexadecimal to decimal and back
h2d(){
  echo "ibase=16;obase=A; $@"|bc
}
d2h(){
 echo "ibase=10;obase=16; $@"|bc
}

# define vim as default editor
export EDITOR=vim



