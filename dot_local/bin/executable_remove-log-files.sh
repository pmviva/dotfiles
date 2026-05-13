#!/usr/bin/env zsh

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# REMOVES THE UNNEEDED LOG FILES
###
echo "Removing unneeded log files..."
find "/var/log" \( -type f \) -and \( -not -regex ".*\(anaconda\|journal\).*" \) -and \( -regex ".*[.-]\([0-9]+\|old\)" \) -exec rm {} \;

###
# CHECKS THE UNNEEDED LOG FILES REMOVAL
###
if [[ $? -ne 0 ]]; then
  fail "Failed to remove unneeded log files"
fi

###
# TRUNCATES THE LOG FILES
###
echo "Truncating log files..."
find "/var/log" \( -type f \) -and \( -not -regex ".*\(anaconda\|journal\).*" \) -exec truncate --size=0 {} \;

###
# CHECKS THE LOG FILES TRUNCATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to truncate log files"
fi

###
# COMPLETES THE LOG FILES CLEANUP
###
echo "Log files cleanup complete!"
