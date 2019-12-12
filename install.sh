#!/bin/bash

#
# This script installs the dotfiles.
# @author Vasiliy Spodin
#

# Root dotfiles directory
DOTFILES="$HOME/.dotfiles"

install() {
  # Create symlinks
  ln -fs ${DOTFILES}/.aliases $HOME/.aliases
  ln -fs ${DOTFILES}/.gitconfig $HOME/.gitconfig
  ln -fs ${DOTFILES}/.gitignore_global $HOME/.gitignore_global
  ln -fs ${DOTFILES}/.hyper.js $HOME/.hyper.js
  ln -fs ${DOTFILES}/.zshrc $HOME/.zshrc

  # Create machine specific configuration files from templates
  cp -n ${DOTFILES}/templates/.env $HOME/.env
  cp -n ${DOTFILES}/templates/.gitlocal $HOME/.gitlocal

  echo "Completed successfully."
}

main() {
  echo
  echo "Consider to backup default configuration files before execution!"
  echo "After confirmation this script will create symlinks and all already"
  echo "existent configuration files will be overridden."
  echo

  read -r -p "Install dotfiles? [yn] " answer

  if [[ ${answer} =~ (y|Y) ]]; then
    install
  else
    echo "Aborted."
    exit 0
  fi
}

main
