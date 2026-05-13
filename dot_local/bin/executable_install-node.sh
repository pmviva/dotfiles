#!/usr/bin/env zsh

###
# FAILS IF ANY COMMAND IN A PIPELINE FAILS
###
set -o pipefail

###
# CHECKS THE ARGUMENTS
###
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>"
  exit 1
fi

###
# DEFINES THE NVM VERSION VARIABLE
###
NVM_VERSION="$1"

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# INSTALLS NVM
###
curl -fsSL "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | PROFILE=/dev/null bash

###
# CHECKS NVM INSTALLATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to install NVM $NVM_VERSION"
fi

###
# SOURCES THE ZSH PROFILE
###
if [[ -f "$HOME/.zshrc" ]]; then
  source "$HOME/.zshrc"
fi

###
# ASKS TO INSTALL NODE
###
read "INSTALL_NODE?Do you wish to install Node.js? [Y/N]: "

###
# INSTALLS NODE
###
if [[ "$INSTALL_NODE" =~ [yY] ]]; then
  nvm install node

  ###
  # CHECKS NODE INSTALLATION
  ###
  if [[ $? -ne 0 ]]; then
    fail "Failed to install Node.js"
  fi
else
  echo "Skipping the Node.js installation"
fi

###
# COMPLETES THE INSTALLATION
###
echo "Installation complete!"
