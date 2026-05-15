#!/usr/bin/env zsh

###
# FAILS IF ANY COMMAND IN A PIPELINE FAILS
###
set -o pipefail

###
# DEFINES THE INSTALLATION DIRECTORY VARIABLE
###
INSTALL_DIRECTORY="/usr/local/bin"

###
# DEFINES THE NEOVIM BINARY PATH VARIABLE
###
NEOVIM_BINARY_PATH="${INSTALL_DIRECTORY}/nvim"

###
# DEFINES THE NEOVIM DOWNLOAD URL VARIABLE
###
NEOVIM_DOWNLOAD_URL="https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage"

###
# DEFINES THE TREE SITTER BINARY PATH VARIABLE
###
TREE_SITTER_BINARY_PATH="${INSTALL_DIRECTORY}/tree-sitter"

###
# DEFINES THE TREE SITTER CLI DOWNLOAD URL VARIABLE
###
TREE_SITTER_DOWNLOAD_URL="https://github.com/tree-sitter/tree-sitter/releases/latest/download/tree-sitter-cli-linux-x64.zip"

###
# DEFINES THE OPERATING SYSTEM VARIABLE
###
OPERATING_SYSTEM="$(uname -s)"

###
# DEFINES THE MACHINE ARCHITECTURE VARIABLE
###
MACHINE_ARCHITECTURE="$(uname -m)"

###
# REMOVES THE TEMPORARY DIRECTORY
###
cleanup() {
  if [[ -n "${TEMPORARY_DIRECTORY:-}" && -d "${TEMPORARY_DIRECTORY}" ]]; then
    rm -rf "${TEMPORARY_DIRECTORY}"
  fi
}

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  cleanup
  exit 1
}

###
# CHECKS THE OPERATING SYSTEM
###
if [[ "${OPERATING_SYSTEM}" != "Linux" ]]; then
  fail "This installer only supports Linux"
fi

###
# CHECKS THE MACHINE ARCHITECTURE
###
if [[ "${MACHINE_ARCHITECTURE}" != "x86_64" ]]; then
  fail "This installer only supports Linux x86_64"
fi

###
# CHECKS THE EFFECTIVE USER
###
if [[ "${EUID}" -ne 0 ]]; then
  fail "Run this installer as root"
fi

###
# CREATES A TEMPORARY DIRECTORY
###
TEMPORARY_DIRECTORY="$(mktemp -d)"
if [[ $? -ne 0 ]]; then
  fail "Failed to create a temporary directory"
fi

###
# DEFINES THE NEOVIM TEMPORARY BINARY PATH VARIABLE
###
NEOVIM_TEMPORARY_BINARY_PATH="${TEMPORARY_DIRECTORY}/nvim"

###
# DEFINES THE TREE SITTER TEMPORARY ARCHIVE PATH VARIABLE
###
TREE_SITTER_TEMPORARY_ARCHIVE_PATH="${TEMPORARY_DIRECTORY}/tree-sitter.zip"

###
# DEFINES THE TREE SITTER TEMPORARY BINARY PATH VARIABLE
###
TREE_SITTER_TEMPORARY_BINARY_PATH="${TEMPORARY_DIRECTORY}/tree-sitter"

###
# DOWNLOADS THE LATEST NEOVIM APPIMAGE
###
curl -fsSL "${NEOVIM_DOWNLOAD_URL}" -o "${NEOVIM_TEMPORARY_BINARY_PATH}"
if [[ $? -ne 0 ]]; then
  fail "Failed to download Neovim from GitHub releases"
fi

###
# DOWNLOADS THE LATEST TREE SITTER CLI ARCHIVE
###
curl -fsSL "${TREE_SITTER_DOWNLOAD_URL}" -o "${TREE_SITTER_TEMPORARY_ARCHIVE_PATH}"
if [[ $? -ne 0 ]]; then
  fail "Failed to download Tree-sitter CLI from GitHub releases"
fi

###
# EXTRACTS THE TREE SITTER CLI BINARY
###
unzip -p "${TREE_SITTER_TEMPORARY_ARCHIVE_PATH}" tree-sitter > "${TREE_SITTER_TEMPORARY_BINARY_PATH}"
if [[ $? -ne 0 ]]; then
  fail "Failed to extract Tree-sitter CLI binary"
fi

###
# INSTALLS THE NEOVIM BINARY
###
install -m 0755 "${NEOVIM_TEMPORARY_BINARY_PATH}" "${NEOVIM_BINARY_PATH}"
if [[ $? -ne 0 ]]; then
  fail "Failed to install Neovim to ${NEOVIM_BINARY_PATH}"
fi

###
# INSTALLS THE TREE SITTER CLI BINARY
###
install -m 0755 "${TREE_SITTER_TEMPORARY_BINARY_PATH}" "${TREE_SITTER_BINARY_PATH}"
if [[ $? -ne 0 ]]; then
  fail "Failed to install Tree-sitter CLI to ${TREE_SITTER_BINARY_PATH}"
fi

###
# PRINTS THE INSTALLED NEOVIM VERSION
###
"${NEOVIM_BINARY_PATH}" --version

###
# PRINTS THE INSTALLED TREE SITTER CLI VERSION
###
"${TREE_SITTER_BINARY_PATH}" --version

###
# CLEANS UP TEMPORARY FILES
###
cleanup

###
# COMPLETES THE INSTALLATION
###
echo "Installation complete!"
