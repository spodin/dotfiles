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
