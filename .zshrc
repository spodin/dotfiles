# PREREQUISITES
#
# 1. Install Spaceship theme (https://denysdovhan.com/spaceship-prompt)
#   1.1. Clone repository:
#        $ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
#
#   1.2. Symlink `spaceship.zsh-theme` to your oh-my-zsh custom themes directory:
#        $ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
#
# 2. Custom plugins:
#   - $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
#   - $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

export LANG="en_US.UTF-8"

plugins=(
  docker
  git
  gradle
  history-substring-search
  wd
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

[[ -s "$HOME/.env" ]] && source "$HOME/.env"
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

bindkey '^ ' forward-word

# Basic aliases
alias resource='source ~/.zshrc && echo ".zshrc has been resourced successfully"'

# This MUST be at the end of file for SDKMAN to work!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"