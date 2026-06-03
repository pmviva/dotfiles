#!/usr/bin/env zsh

###
# FAILS IF ANY COMMAND IN A PIPELINE FAILS
###
set -o pipefail

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# INSTALLS RUSTUP
###
curl --proto '=https' --tlsv1.2 -fsSL "https://sh.rustup.rs" | sh

###
# CHECKS RUSTUP INSTALLATION
###
if [[ $? -ne 0 ]]; then
  fail "Failed to install Rustup"
fi

###
# INITIALIZES CARGO
###
export CARGO_DIR="$HOME/.cargo"
if [[ -s "$CARGO_DIR/env" ]]; then
  source "$CARGO_DIR/env"
fi

###
# COMPLETES THE INSTALLATION
###
echo "Installation complete!"
