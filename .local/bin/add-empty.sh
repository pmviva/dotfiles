#!/bin/env bash

###
# ADDS THE EMPTY FILES
###
find . \( -type d \) -and \( -not -regex ./\.git.* \) -exec touch {}/.empty \;
