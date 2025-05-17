#!/bin/env bash

###
# ADDS THE GITIGNORE FILES
###
find . \( -type d \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;
