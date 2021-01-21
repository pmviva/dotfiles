# .bashrc

###
# SOURCE GLOBAL DEFINITIONS
###
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

###
# USER SPECIFIC ALIASES AND FUNCTIONS
###
alias ll='ls -la'

###
# DISABLE BASH HISTORY
###
unset HISTFILE

###
# EXPORTS PATH
###
export PATH="$PATH:$HOME/.rvm/bin"
