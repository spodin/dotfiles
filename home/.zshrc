#
# ~/.zshrc
#

export DOTFILES="$HOME/.dotfiles"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

# Oh My Zsh Plugins
# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(
  docker
  git
  gradle
  history-substring-search
  jira
  sudo
  wd
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh
. "$ZSH/oh-my-zsh.sh"

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

# Load local configuration
[[ -s "$HOME/.env" ]] && source "$HOME/.env"