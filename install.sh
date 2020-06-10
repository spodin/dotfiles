#!/bin/bash

#
# This script installs the dotfiles.
#
# Execute with '-y' option for silent installation.
#

DOTFILES="$HOME/.dotfiles"

OH_MY_ZSH_INSTALLATION_DIR="$HOME/.oh-my-zsh"

install_ohmyzsh() {
  installed=0

  if [[ -d ${OH_MY_ZSH_INSTALLATION_DIR} ]]; then
    echo "Seems, Oh My Zsh have already been installed into target directory."
  else
    git clone https://github.com/ohmyzsh/ohmyzsh.git ${OH_MY_ZSH_INSTALLATION_DIR}
    installed=$?
  fi

  if [[ ${installed} -eq 0 ]]; then
    # Install theme and custom plugins
    . ${DOTFILES}/custom.sh && install_customizations
  else
    echo
    echo "Oh My Zsh installation has been failed with $installed error code!"
    exit 1
  fi
}

symlink() {
  source=$1
  target=$2
  ln -fs ${source} ${target}
}

from_template() {
  source=$1
  target=$2
  cp -n ${source} ${target}
}

install_dotfiles() {
  symlink ${DOTFILES}/home/.gitconfig ${HOME}/.gitconfig
  symlink ${DOTFILES}/home/.gitignore_global ${HOME}/.gitignore_global
  symlink ${DOTFILES}/home/.zshrc ${HOME}/.zshrc
  symlink ${DOTFILES}/home/.hushlogin ${HOME}/.hushlogin
  symlink ${DOTFILES}/home/.tmux.conf ${HOME}/.tmux.conf

  from_template ${DOTFILES}/templates/.env ${HOME}/.env
  from_template ${DOTFILES}/templates/.gitlocal ${HOME}/.gitlocal
  from_template ${DOTFILES}/templates/.gitmessage ${HOME}/.gitmessage
  from_template ${DOTFILES}/templates/.warprc ${HOME}/.warprc
  from_template ${DOTFILES}/templates/ssh/config ${HOME}/.ssh/config
}

install() {
  echo "Installing Oh My Zsh into $OH_MY_ZSH_INSTALLATION_DIR ..."
  install_ohmyzsh

  echo "Installing dotfiles..."
  install_dotfiles

  echo
  echo "Completed successfully."
}

confirm() {
  read -r -p "$1 [y/n]: " answer

  if [[ "$answer" =~ (y|Y|yes|YES) ]]; then
    return 0
  else
    return 1
  fi
}

main() {
  if [[ "$1" =~ -(Y|y) ]]; then
    install # in silent mode
    return
  fi

  if confirm "Install dotfiles into $DOTFILES?"; then
    install
  else
    echo "Aborted."
  fi
}

main "$@"
