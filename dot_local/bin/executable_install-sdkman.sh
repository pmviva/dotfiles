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
# DEFINES THE JAVA VERSION VARIABLE
###
JAVA_VERSION="$1"

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# INSTALLS SDKMAN
###
curl -fsSL "https://get.sdkman.io?rcupdate=false" | zsh

###
# CHECKS SDKMAN INSTALLATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to install SDKMAN!"
fi

###
# SOURCES THE ZSH PROFILE
###
if [[ -f "$HOME/.zshrc" ]]; then
  source "$HOME/.zshrc"
fi

###
# INSTALLS JAVA
###
sdk install java "$JAVA_VERSION"

###
# CHECKS JAVA INSTALLATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to install Java $JAVA_VERSION"
fi

###
# ASKS TO INSTALL MAVEN
###
read "INSTALL_MAVEN?Do you wish to install Maven? [Y/N]: "

###
# INSTALLS MAVEN
###
if [[ "$INSTALL_MAVEN" =~ [yY] ]]; then
  sdk install maven

  ###
  # CHECKS MAVEN INSTALLATION
  ###
  if [[ $? -ne 0 ]]; then
    fail "Failed to install Maven"
  fi
else
  echo "Skipping the Maven installation"
fi

###
# ASKS TO INSTALL GRADLE
###
read "INSTALL_GRADLE?Do you wish to install Gradle? [Y/N]: "

###
# INSTALLS GRADLE
###
if [[ "$INSTALL_GRADLE" =~ [yY] ]]; then
  sdk install gradle

  ###
  # CHECKS GRADLE INSTALLATION
  ###
  if [[ $? -ne 0 ]]; then
    fail "Failed to install Gradle"
  fi
else
  echo "Skipping the Gradle installation"
fi

###
# ASKS TO INSTALL SPRING BOOT
###
read "INSTALL_SPRING_BOOT?Do you wish to install Spring Boot? [Y/N]: "

###
# INSTALLS SPRING BOOT
###
if [[ "$INSTALL_SPRING_BOOT" =~ [yY] ]]; then
  sdk install springboot

  ###
  # CHECKS SPRING BOOT INSTALLATION
  ###
  if [[ $? -ne 0 ]]; then
    fail "Failed to install Spring Boot"
  fi
else
  echo "Skipping the Spring Boot installation"
fi

###
# COMPLETES THE INSTALLATION
###
echo "Installation complete!"
