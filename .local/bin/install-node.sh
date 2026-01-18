#!/usr/bin/env zsh

###
# CHECKS THE ARGUMENTS
###
if [[ $# -ne 1 ]]; then
  echo "USAGE: install-node.sh <nvm version>"
  exit 1
fi

###
# DEFINES THE NVM VERSION VARIABLE
###
NVM_VERSION="$1"

###
# INSTALLS NVM
###
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | bash

###
# SOURCES THE ZSH PROFILE
###
if [[ -f "$HOME/.zshrc" ]]; then
  source "$HOME/.zshrc"
fi

###
# ASKS TO INSTALL NODE
###
read "INSTALL_NODE?Do you wish to install node? [Y/N]: "

###
# INSTALLS NODE
###
if [[ "$INSTALL_NODE" =~ [yY] ]]; then
  nvm install node
else
  echo "Skipping the node installation"
fi
