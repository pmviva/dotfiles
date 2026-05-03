#!/usr/bin/env zsh

###
# PRINTS AN ERROR AND EXITS
###
fail() {
  echo "Error: $1"
  exit 1
}

###
# CLEANS THE HOME DIRECTORY
###
rm -rf "$HOME/.adobe" "$HOME/.android" "$HOME/.angular-config.json" "$HOME/.cache/commitizen" "$HOME/.cache/gh" "$HOME/.cache/git" "$HOME/.cache/github-copilot" "$HOME/.cache/google-chrome" "$HOME/.cache/JetBrains" "$HOME/.cache/JNA" "$HOME/.cache/Microsoft" "$HOME/.cache/mozilla" "$HOME/.cache/opencode" "$HOME/.cache/starship" "$HOME/.codex" "$HOME/.config/Code" "$HOME/.config/gh" "$HOME/.config/git" "$HOME/.config/google-chrome" "$HOME/.config/JetBrains" "$HOME/.config/mozilla" "$HOME/.config/opencode" "$HOME/.dir_colors" "$HOME/.eclipse" "$HOME/.gradle" "$HOME/.java" "$HOME/.lemminx" "$HOME/.local/share/JetBrains" "$HOME/.local/share/opencode" "$HOME/.m2" "$HOME/.mozilla" "$HOME/.npm" "$HOME/.nvm" "$HOME/.oracle_jre_usage" "$HOME/.p2" "$HOME/.redhat" "$HOME/.sdkman" "$HOME/.smartgit" "$HOME/.sts4" "$HOME/.swt" "$HOME/.testcontainers.properties" "$HOME/.tooling" "$HOME/.vscode" "$HOME/.vscode-shared" "$HOME/workspace"

###
# CHECKS THE HOME DIRECTORY CLEANUP
###
if [[ $? -ne 0 ]]; then
  fail "Failed to clean the home directory"
fi

###
# COMPLETES THE HOME CLEANUP
###
echo "Home cleanup complete!"
