# .bash_profile

###
# SOURCE LOCAL DEFINITIONS
###
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

###
# ADD USER SPECIFIC PROGRAMS TO PATH
###
PATH=$PATH:$HOME/.local/bin:$HOME/bin

###
# EXPORT PATH
###
export PATH

if [[ -d "$HOME/.nvm" ]]; then
  ###
  # EXPORT NVM DIR
  ###
  export NVM_DIR="$HOME/.nvm"

  ###
  # INITIALIZE NVM
  ###
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

  ###
  # INITIALIZE NVM BASH COMPLETION
  ###
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

if [[ -d "$HOME/.rvm" ]]; then
  ###
  # EXPORT RVM DIR
  ###
  export RVM_DIR="$HOME/.rvm"

  ###
  # INITIALIZE RVM
  ####

  [[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm"
fi


if [[ -d "$HOME/.sdkman" ]]; then
  ###
  # EXPORT SDKMAN DIR
  ###
  export SDKMAN_DIR="$HOME/.sdkman"

  ###
  # INITIALIZE SDKMAN
  ###
  [ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi
