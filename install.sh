#!/bin/bash

# This script installs the dotfiles.
# @author Vasiliy Spodin

install() {
  local currentDir=$(pwd)

  # Create symlinks
  ln -fs ${currentDir}/.aliases $HOME/.aliases
  ln -fs ${currentDir}/.gitconfig $HOME/.gitconfig
  ln -fs ${currentDir}/.gitignore_global $HOME/.gitignore_global
  ln -fs ${currentDir}/.hyper.js $HOME/.hyper.js
  ln -fs ${currentDir}/.zshrc $HOME/.zshrc

  # Create machine specific configuration files from templates
  cp -n ${currentDir}/templates/.env $HOME/.env
  cp -n ${currentDir}/templates/.gitlocal $HOME/.gitlocal

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
