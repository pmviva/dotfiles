#!/bin/env bash

###
# INSTALLS PROTO
###
bash <(curl -fsSL https://moonrepo.dev/install/proto.sh) --no-profile --yes

###
# SOURCES THE BASH PROFILE
###
source ~/.bashrc

###
# ASKS TO INSTALL NODE
###
read -p "Do you wish to install node? [Y/N]:" INSTALL_NODE

###
# INSTALLS NODE
###
if [[ "$INSTALL_NODE" =~ [yY] ]]; then
  proto install node
#  proto install npm
else
  echo "Skipping the node installation"
fi

###
# ASKS TO INSTALL BUN
###
read -p "Do you wish to install bun? [Y/N]:" INSTALL_BUN

###
# INSTALLS BUN
###
if [[ "$INSTALL_BUN" =~ [yY] ]]; then
  proto install bun
else
  echo "Skipping the bun installation"
fi
