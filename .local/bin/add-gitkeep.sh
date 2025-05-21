#!/bin/env bash

###
# ADDS THE GITKEEP FILES
###
find . \( -type d \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitkeep \;
