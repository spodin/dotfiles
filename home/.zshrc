#
# ~/.zshrc
#

export DOTFILES="$HOME/.dotfiles"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(
  docker
  git
  gradle
  history-substring-search
  jira
  wd
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

. "$ZSH/oh-my-zsh.sh"
. "$DOTFILES/lib/functions.zsh"

_load_settings "$DOTFILES/zsh"

# Load local configuration
[[ -s "$HOME/.env" ]] && source "$HOME/.env"