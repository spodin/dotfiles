export DOTFILES="$HOME/.config/dotfiles"
export ZSH="$HOME/.oh-my-zsh"

# Common functions
source "$DOTFILES/zsh/lib/functions.zsh"

# Configuration
source "$DOTFILES/zsh/powerlevel/powerlevel.zsh"
source "$DOTFILES/zsh/my/config.zsh"

# Machine specific configuration
[[ -f "$HOME/.env" ]] && source "$HOME/.env"

plugins=(
  fz
  fzf-tab
  history-substring-search
  wd
  z
  zsh-autosuggestions
  zsh-fuzzy-wd
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# Fzf (https://github.com/junegunn/fzf)
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# Custom binaries and scripts
[[ -d "$HOME/.bin" ]] && _extend_path "$HOME/.bin"
[[ -d "$DOTFILES/bin" ]] && _extend_path "$DOTFILES/bin"
