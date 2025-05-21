#!/bin/env bash

###
# CHECKS THE ARGUMENTS
###
if [[ $# -ne 1 ]]; then
  echo "USAGE: install-sdkman.sh <<java version>>"
  exit 1
fi

###
# DEFINES THE JAVA VERSION VARIABLE
###
JAVA_VERSION=$1

###
# INSTALLS SDKMAN
###
curl -s "https://get.sdkman.io?rcupdate=false" | bash

###
# SOURCES THE BASH PROFILE
###
source ~/.bashrc

###
# INSTALLS JAVA
###
sdk install java $JAVA_VERSION

###
# ASKS TO INSTALL MAVEN
###
read -p "Do you wish to install maven? [Y/N]:" INSTALL_MAVEN

###
# INSTALLS MAVEN
###
if [[ "$INSTALL_MAVEN" =~ [yY] ]]; then
  sdk install maven
else
  echo "Skipping the maven installation"
fi

###
# ASKS TO INSTALL GRADLE
###
read -p "Do you wish to install gradle? [Y/N]:" INSTALL_GRADLE

###
# INSTALLS GRADLE
###
if [[ "$INSTALL_GRADLE" =~ [yY] ]]; then
  sdk install gradle
else
  echo "Skipping the gradle installation"
fi

###
# ASKS TO INSTALL SPRING BOOT
###
read -p "Do you wish to install spring boot? [Y/N]:" INSTALL_SPRING_BOOT

###
# INSTALLS SPRING BOOT
###
if [[ "$INSTALL_SPRING_BOOT" =~ [yY] ]]; then
  sdk install springboot
else
  echo "Skipping the spring boot installation"
fi
