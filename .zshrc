#
# ~/.zshrc
#

export DOTFILES="$HOME/.dotfiles"
export GPG_TTY=$(tty)
export LANG="en_US.UTF-8"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

# Extend $PATH without duplicates
extend_path() {
  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    export PATH="$1:$PATH"
  fi
}

# Add custom binaries and scripts to PATH
[[ -d "$HOME/.bin" ]] && extend_path "$HOME/.bin"
[[ -d "$DOTFILES/bin" ]] && extend_path "$DOTFILES/bin"

# Source environment related files
[[ -s "$HOME/.env" ]] && source "$HOME/.env"
[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

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

# Source Oh My Zsh framework
source "$ZSH/oh-my-zsh.sh"

source "$DOTFILES/zsh/sdkman.zsh"
source "$DOTFILES/zsh/key-bindings.zsh"
source "$DOTFILES/zsh/theme-preset.zsh"