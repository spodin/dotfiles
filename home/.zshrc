#
# ~/.zshrc
#

export DOTFILES="$HOME/.dotfiles"
export GPG_TTY=$(tty)
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

# Source all files from specified directory
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    for config in "$_dir"/**/*(N-.); do
      . $config
    done
  fi
}

_load_settings "$DOTFILES/zsh/configs"

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Source environment related files
[[ -s "$HOME/.env" ]] && source "$HOME/.env"
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"