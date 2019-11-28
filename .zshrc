#
# ~/.zshrc
#

export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

export LANG="en_US.UTF-8"

export GPG_TTY=$(tty)

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

source "$ZSH/oh-my-zsh.sh"

[[ -s "$HOME/.env" ]] && source "$HOME/.env"
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

bindkey '^ ' forward-word

# Basic aliases
alias resource='source ~/.zshrc && echo ".zshrc has been resourced successfully"'

# This MUST be at the end of file for SDKMAN to work!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"