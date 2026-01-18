#!/usr/bin/env zsh

###
# ADDS THE GITKEEP FILES
###
find . \( -type d \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitkeep \;
