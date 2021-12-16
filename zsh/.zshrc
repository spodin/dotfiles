export DOTFILES="$HOME/.config/dotfiles"
export ZSH="$HOME/.oh-my-zsh"

export DISABLE_AUTO_TITLE="true"
export DISABLE_AUTO_UPDATE="true"

# Common functions
source "$DOTFILES/zsh/lib/functions.zsh"

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

# Theme and Oh My Zsh
source "$DOTFILES/zsh/powerlevel/powerlevel.zsh"
source "$ZSH/oh-my-zsh.sh"

# Configuration
source "$DOTFILES/zsh/my/config.zsh"

# Machine specific configuration
[[ -f "$HOME/.env" ]] && source "$HOME/.env"

# Fzf (https://github.com/junegunn/fzf)
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"

# Custom binaries and scripts
[[ -d "$HOME/.bin" ]] && _extend_path "$HOME/.bin"
[[ -d "$DOTFILES/bin" ]] && _extend_path "$DOTFILES/bin"
