#
# Environment configuration file.
#

# Extend $PATH without duplicates
_extend_path() {
  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    export PATH="$1:$PATH"
  fi
}

export BAT_THEME="TwoDark"      # Bat theme (https://github.com/sharkdp/bat#highlighting-theme)
export GPG_TTY=$(tty)           # GPG
export HOMEBREW_NO_ANALYTICS=1  # Opt out of Homebrew’s analytics (https://docs.brew.sh/Analytics)
export LANG="en_US.UTF-8"       # Locale
export MC_SKIN="nicedark"       # Midnight Commander skin

# SDKMAN (https://sdkman.io)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# jEnv (https://www.jenv.be)
if [[ -d "$HOME/.jenv" ]]; then
  _extend_path "$HOME/.jenv/bin"
  eval "$(jenv init -)"
fi

# Load fzf configuration (https://github.com/junegunn/fzf)
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# Add custom binaries and scripts to PATH
[[ -d "$HOME/.bin" ]] && _extend_path "$HOME/.bin"
[[ -d "$DOTFILES/bin" ]] && _extend_path "$DOTFILES/bin"
