#!/usr/bin/env zsh

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# ADDS THE GITIGNORE FILES
###
find . \( -type d \) -and \( -not -regex "./\\.git.*" \) -exec touch {}/.gitignore \;

###
# CHECKS THE GITIGNORE FILES CREATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to add .gitignore files"
fi

###
# COMPLETES THE GITIGNORE FILES CREATION
###
echo ".gitignore files creation complete!"
