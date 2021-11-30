#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

DOTFILES="$HOME/.config/dotfiles"
ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
}

clone() {
  local url="$1"
  local target="$2"
  if [[ ! -d ${target} ]]; then
    git clone --depth=1 "${url}" "${target}"
  fi
}

repo_name() {
  echo "$(basename "$1" .git)"
}

theme() {
  local url="$1"
  local name=$(repo_name "$url")
  local target="$ZSH_CUSTOM/themes/$name"
  clone "$url" "$target"
}

plugin() {
  local url="$1"
  local name=$(repo_name "$url")
  local target="$ZSH_CUSTOM/plugins/$name"
  clone "$url" "$target"
}

symlink() {
  source=$1
  target=$2
  ln -fsn "${source}" "${target}"
}

from_template() {
  source=$1
  target=$2
  cp -n "${source}" "${target}"
}

install() {
  clone "https://github.com/ohmyzsh/ohmyzsh.git" "${ZSH}"

  theme "https://github.com/romkatv/powerlevel10k.git"

  plugin "https://github.com/Aloxaf/fzf-tab.git"
  plugin "https://github.com/zsh-users/zsh-autosuggestions.git"
  plugin "https://github.com/spodin/zsh-fuzzy-wd.git"
  plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git"

  symlink "${DOTFILES}"/.gitconfig "${HOME}"/.gitconfig
  symlink "${DOTFILES}"/.gitignore-global "${HOME}"/.gitignore-global

  from_template "${DOTFILES}"/.hushlogin "${HOME}"/.hushlogin
  from_template "${DOTFILES}"/templates/.zshenv "${HOME}"/.zshenv
  from_template "${DOTFILES}"/templates/.env "${HOME}"/.env
  from_template "${DOTFILES}"/templates/.gitlocal "${HOME}"/.gitlocal
  from_template "${DOTFILES}"/templates/.warprc "${HOME}"/.warprc
  from_template "${DOTFILES}"/templates/ssh/.ssh-config "${HOME}"/.ssh/config
}

install "$@"
