#!/bin/bash

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

install_theme() {
  url="https://github.com/denysdovhan/spaceship-prompt.git"
  name="$(basename "$url" .git)"
  target="$ZSH_CUSTOM/themes/$name"

  if [[ ! -d ${target} ]]; then
    git clone ${url} ${target}
    ln -s ${target}/spaceship.zsh-theme ${ZSH_CUSTOM}/themes/spaceship.zsh-theme
  fi
}

install_plugin() {
  url="$1"
  name="$(basename "$url" .git)"
  target="$ZSH_CUSTOM/plugins/$name"

  [[ ! -d ${target} ]] && git clone ${url} ${target}
}

configure() {
  install_theme
  install_plugin "https://github.com/zsh-users/zsh-autosuggestions.git"
  install_plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git"
}

configure