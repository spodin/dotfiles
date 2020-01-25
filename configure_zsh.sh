#!/usr/bin/env zsh

#
# Configures Zsh custom theme and plugins using 'Oh My Zsh' manager.
#

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

install_theme() {
  # Spaceship theme (https://denysdovhan.com/spaceship-prompt)
  git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM}/themes/spaceship-prompt
  ln -s ${ZSH_CUSTOM}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM}/themes/spaceship.zsh-theme
}

install_plugin() {
  url="$1"
  name="$(basename "$url" .git)"
  git clone ${url} ${ZSH_CUSTOM}/plugins/${name}
}

configure() {
  install_theme
  install_plugin "https://github.com/zsh-users/zsh-autosuggestions.git"
  install_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git"
}

configure