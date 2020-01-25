#
# ~/.zshrc
#

export DOTFILES="$HOME/.dotfiles"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    for config in "$_dir"/**/*(N-.); do
      . $config
    done
  fi
}

# Load configuration files
_load_settings "$DOTFILES/zsh"

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Load local configuration
[[ -s "$HOME/.env" ]] && source "$HOME/.env"