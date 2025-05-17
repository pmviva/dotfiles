###
# BASHRC CONFIGURATION FILE
###

###
# SOURCES THE GLOBAL DEFINITIONS
###
if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

###
# SETS THE PATH VARIABLE
###
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

###
# UNSETS THE HISTFILE VARIABLE
###
unset HISTFILE

###
# SOURCES THE LOCAL DEFINIIONS
###
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

###
# UNSETS THE RC VARIABLE
###
unset rc

###
# INITIALIZES PROTO
###
export PROTO_DIR="$HOME/.proto";
export PATH="$PROTO_DIR/shims:$PROTO_DIR/bin:$PATH";

###
# INITIALIZES SDKMAN
###
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

###
# INITIALIZES FASTFETCH
###
if [ -x "$(command -v fastfetch)" ]; then
    fastfetch
fi

###
# INITIALIZES STARSHIP
###
if [ -x "$(command -v starship)" ]; then
    eval $(starship init bash)
fi
