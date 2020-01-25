#!/bin/bash

#
# This script installs the dotfiles.
# @author Vasiliy Spodin
#

# Root dotfiles directory
DOTFILES="$HOME/.dotfiles"

install() {
  # Create symlinks
  ln -fs ${DOTFILES}/home/.gitconfig ${HOME}/.gitconfig
  ln -fs ${DOTFILES}/home/.gitignore_global ${HOME}/.gitignore_global
  ln -fs ${DOTFILES}/home/.hyper.js ${HOME}/.hyper.js
  ln -fs ${DOTFILES}/home/.zshrc ${HOME}/.zshrc

  # Create machine specific configuration files from templates
  cp -n ${DOTFILES}/templates/.env ${HOME}/.env
  cp -n ${DOTFILES}/templates/.gitlocal ${HOME}/.gitlocal
  cp -n ${DOTFILES}/templates/.gitmessage ${HOME}/.gitmessage
  cp -n ${DOTFILES}/templates/.warprc ${HOME}/.warprc
  cp -n ${DOTFILES}/templates/ssh/config ${HOME}/.ssh/config

  # Symlink embedded Oh My Zsh
  ln -fs ${DOTFILES}/zsh/ohmyzsh ${HOME}/.oh-my-zsh

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
