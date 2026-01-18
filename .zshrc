###
# ZSHRC CONFIGURATION FILE
###

###
# SOURCES THE GLOBAL DEFINITIONS
###
[[ -f /etc/zshrc ]] && source /etc/zshrc

###
# SETS THE PATH VARIABLE
###
path=("$HOME/.local/bin" "$HOME/bin" $path)
export PATH

###
# UNSETS THE HISTFILE VARIABLE
###
unset HISTFILE

###
# SETS HIST_NO_STORE OPTION
###
setopt HIST_NO_STORE

###
# UNSETS NO_HIST_BEEP OPTION
###
unsetopt HIST_BEEP

###
# INITIALIZES COMPLETION
###
autoload -Uz compinit
compinit

###
# SOURCES THE LOCAL DEFINITIONS
###
if [[ -d "$HOME/.zshrc.d" ]]; then
  for rc in "$HOME"/.zshrc.d/*; do
  done
    [[ -f "$rc" ]] && source "$rc"
fi

###
# UNSETS THE RC VARIABLE
###
unset rc

###
# INITIALIZES NVM
###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

###
# INITIALIZES SDKMAN
###
export SDKMAN_DIR="$HOME/.sdkman"
[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ] && . "$SDKMAN_DIR/bin/sdkman-init.sh"

###
# INITIALIZES FASTFETCH
###
command -v fastfetch >/dev/null 2>&1 && fastfetch

###
# INITIALIZES STARSHIP
###
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
