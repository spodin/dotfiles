#!/bin/bash

#
# This script installs the dotfiles.
#

# Root dotfiles directory
DOTFILES="$HOME/.dotfiles"

install_ohmyzsh() {
  installation_dir="$HOME/.oh-my-zsh"
  echo "Installing Oh My Zsh to $installation_dir ..."

  if [[ ! -d ${installation_dir} ]]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git ${installation_dir}
  else
    echo "Oh My Zsh has been installed previously (detected at $installation_dir)"
  fi
}

install_dotfiles() {
  # Create symlinks
  ln -fs ${DOTFILES}/home/.gitconfig ${HOME}/.gitconfig
  ln -fs ${DOTFILES}/home/.gitignore_global ${HOME}/.gitignore_global
  ln -fs ${DOTFILES}/home/.hyper.js ${HOME}/.hyper.js
  ln -fs ${DOTFILES}/home/.zshrc ${HOME}/.zshrc
  ln -fs ${DOTFILES}/home/.hushlogin ${HOME}/.hushlogin

  # Create machine specific configuration files from templates
  cp -n ${DOTFILES}/templates/.env ${HOME}/.env
  cp -n ${DOTFILES}/templates/.gitlocal ${HOME}/.gitlocal
  cp -n ${DOTFILES}/templates/.gitmessage ${HOME}/.gitmessage
  cp -n ${DOTFILES}/templates/.warprc ${HOME}/.warprc
  cp -n ${DOTFILES}/templates/ssh/config ${HOME}/.ssh/config
}

install() {
  install_ohmyzsh
  install_dotfiles

  # Install theme and custom plugins
  . ${DOTFILES}/configure.sh

  echo
  echo "Completed successfully."
}

main() {
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
