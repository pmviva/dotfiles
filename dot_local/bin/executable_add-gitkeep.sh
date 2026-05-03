#!/usr/bin/env zsh

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# ADDS THE GITKEEP FILES
###
find . \( -type d \) -and \( -not -regex "./\\.git.*" \) -exec touch {}/.gitkeep \;

###
# CHECKS THE GITKEEP FILES CREATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to add .gitkeep files"
fi

###
# COMPLETES THE GITKEEP FILES CREATION
###
echo ".gitkeep files creation complete!"
