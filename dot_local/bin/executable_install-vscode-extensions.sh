#!/usr/bin/env zsh

###
# DEFINES THE EXTENSIONS VARIABLE
###
EXTENSIONS=(
  "angular.ng-template"
  "biomejs.biome"
  "catppuccin.catppuccin-vsc-icons"
  "catppuccin.catppuccin-vsc"
  "dbaeumer.vscode-eslint"
  "dbcode.dbcode"
  "eamodio.gitlens"
  "editorconfig.editorconfig"
  "esbenp.prettier-vscode"
  "ms-azuretools.vscode-docker"
  "redhat.vscode-xml"
  "redhat.vscode-yaml"
  "vmware.vscode-boot-dev-pack"
  "vscjava.vscode-java-pack"
  "ymotongpoo.licenser"
)

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# CHECKS THE CODE COMMAND
###
command -v code >/dev/null 2>&1
if [[ $? -ne 0 ]]; then
  fail "Failed to find VS Code CLI 'code' in PATH"
fi

###
# LOOPS THROUGH THE EXTENSIONS
###
for EXTENSION in "${EXTENSIONS[@]}"; do
  ###
  # INSTALLS EXTENSION
  ###
  echo "Installing: $EXTENSION"
  code --install-extension "$EXTENSION"

  ###
  # CHECKS EXTENSION INSTALLATION
  ###
  if [[ $? -ne 0 ]]; then
    fail "Failed to install extension $EXTENSION"
  fi
done

###
# COMPLETES THE INSTALLATION
###
echo "Installation complete!"
