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
  "openai.chatgpt"
  "redhat.vscode-xml"
  "redhat.vscode-yaml"
  "vmware.vscode-boot-dev-pack"
  "vscjava.vscode-java-pack"
  "ymotongpoo.licenser"
)

###
# CHECKS THE CODE COMMAND
###
if ! command -v code >/dev/null 2>&1; then
  echo "ERROR: VSCode CLI 'code' was not found in PATH."
  exit 1
fi

###
# LOOPS THE EXTENSIONS VARIABLE
###
for EXTENSION in "${EXTENSIONS[@]}"; do
  ###
  # INSTALLS EXTENSION
  ###
  echo "Installing: $EXTENSION"
  code --install-extension "$EXTENSION"
done
