#
# Environment configuration file.
#

export BAT_THEME="TwoDark"        # Bat theme (https://github.com/sharkdp/bat#highlighting-theme)
export GPG_TTY=$(tty)             # GPG
export HOMEBREW_NO_ANALYTICS=1    # Opt out of Homebrew’s analytics (https://docs.brew.sh/Analytics)
export LANG="en_US.UTF-8"         # Locale
export MC_SKIN="nicedark"         # Midnight Commander skin
export DISABLE_AUTO_TITLE="true"

# Load fzf configuration (https://github.com/junegunn/fzf)
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# Add custom binaries and scripts to PATH
[[ -d "$HOME/.bin" ]] && _extend_path "$HOME/.bin"
[[ -d "$DOTFILES/bin" ]] && _extend_path "$DOTFILES/bin"

#
# Developer tools
#

# SDKMAN (https://sdkman.io)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# jEnv (https://www.jenv.be)
export JENV_HOME="$HOME/.jenv"
if [[ -d "$JENV_HOME" ]]; then
  _extend_path "$JENV_HOME/bin"
  eval "$(jenv init - --no-rehash)"
  (jenv rehash &) 2> /dev/null # to rehash in background
fi

# pyenv (https://github.com/pyenv/pyenv#installation)
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT" ]]; then
  _extend_path "$PYENV_ROOT/bin"
  eval "$(pyenv init - --no-rehash)"
  (pyenv rehash &) 2> /dev/null # to rehash in background
fi
