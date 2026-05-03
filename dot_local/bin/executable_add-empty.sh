#!/usr/bin/env zsh

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# ADDS THE EMPTY FILES
###
find . \( -type d \) -and \( -not -regex "./\\.git.*" \) -exec touch {}/.empty \;

###
# CHECKS THE EMPTY FILES CREATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to add .empty files"
fi

###
# COMPLETES THE EMPTY FILES CREATION
###
echo ".empty files creation complete!"
