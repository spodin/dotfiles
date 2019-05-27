#!/bin/sh

# This script installs the dotfiles.
# @author Vasiliy Spodin

install() {
  local currentDir=$(pwd)

  # Create symlinks
  ln -fs $currentDir/.aliases $HOME/.aliases
  ln -fs $currentDir/.gitconfig $HOME/.gitconfig
  ln -fs $currentDir/.gitignore_global $HOME/.gitignore_global
  ln -fs $currentDir/.zshrc $HOME/.zshrc

  # Create environment specific configuration file from template
  cp -n $currentDir/.env-template $HOME/.env

  echo "Completed successfully."
}

main() {
  echo "
  Consider to backup default configuration files before execution!
  After confirmation this script will create symlinks and all already
  existent configuration files will be overridden.
  "

  read -r -p "Install dotfiles? [yn] " response
  if [[ $response =~ (y|Y) ]]; then
    install
  else
    echo "Aborted."
  fi
}

main