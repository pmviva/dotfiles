#!/usr/bin/env zsh

###
# CLEANS THE HOME DIRECTORY
###
rm -rf $HOME/.adobe $HOME/.android $HOME/.dir_colors $HOME/.eclipse $HOME/.mozilla $HOME/.npm $HOME/.oracle_jre_usage $HOME/.p2 $HOME/.tooling $HOME/.smartgit $HOME/.swt

###
# ASKS TO CLEAN THE HOME OPTIONAL DIRECTORIES
###
read "CLEAN_HOME_OPTIONAL?Do you wish to clean the home optional directories? [Y/N]: "

###
# CLEANS THE HOME OPTIONAL DIRECTORIES
###
if [[ "$CLEAN_HOME_OPTIONAL" =~ [yY] ]]; then
  rm -rf $HOME/.angular-config.json $HOME/.cache/commitizen $HOME/.cache/github-copilot $HOME/.cache/gh $HOME/.cache/git $HOME/.cache/google-chrome $HOME/.cache/JetBrains $HOME/.cache/JNA $HOME/.cache/Microsoft $HOME/.cache/starship $HOME/.config/Code $HOME/.config/gh $HOME/.config/git $HOME/.config/google-chrome $HOME/.config/JetBrains $HOME/.gradle $HOME/.java $HOME/.local/share/JetBrains $HOME/.m2 $HOME/.npm $HOME/.nvm $HOME/.sdkman $HOME/.testcontainers.properties $HOME/.vscode $HOME/workspace
else
  echo "Skipping the clean home optional directories"
fi
