#!/bin/bash

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

install_spaceship_theme() {
  url="https://github.com/denysdovhan/spaceship-prompt.git"
  name="$(basename "$url" .git)"
  target="$ZSH_CUSTOM/themes/$name"

  if [[ -d ${target} ]]; then
    echo "$name theme is already installed"
    return
  fi

  echo "Installing $name theme..."

  git clone ${url} ${target} && \
  ln -s ${target}/spaceship.zsh-theme ${ZSH_CUSTOM}/themes/spaceship.zsh-theme
}

install_plugin() {
  url="$1"
  name="$(basename "$url" .git)"
  target="$ZSH_CUSTOM/plugins/$name"

  if [[ -d ${target} ]]; then
    echo "$name plugin is already installed"
    return
  fi

  echo "Installing $name plugin..."

  git clone ${url} ${target}
}

install_customizations() {
  install_spaceship_theme
  install_plugin "https://github.com/zsh-users/zsh-autosuggestions.git"
  install_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git"
}