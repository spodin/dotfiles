#!/usr/bin/env bash

#
# Dotfiles installation script.
#
#   - Installs "Oh My Zsh" and it's components into ~/.oh-my-zsh:
#     - "Powerlevel10k" as prompt theme.
#     - Not bundled plugins.
#
#   - Creates symlinks for files and folders that are synced using Git.
#
#   - Creates machine specific configuration files from templates.
#

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"

DOTFILES="$HOME/.config/dotfiles"

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

  plugin "https://github.com/changyuheng/fz"
  plugin "https://github.com/Aloxaf/fzf-tab.git"
  plugin "https://github.com/zsh-users/zsh-autosuggestions.git"
  plugin "https://github.com/spodin/zsh-fuzzy-wd.git"
  plugin "https://github.com/zsh-users/zsh-syntax-highlighting.git"

  symlink "${DOTFILES}"/.gitconfig "${HOME}"/.gitconfig
  symlink "${DOTFILES}"/.gitignore-global "${HOME}"/.gitignore-global

  # Midnight Commander
  symlink "${DOTFILES}"/mc/skins "${HOME}"/.local/share/mc/skins
  symlink "${DOTFILES}"/mc/config/filehighlight.ini "${HOME}"/.config/mc/filehighlight.ini
  symlink "${DOTFILES}"/mc/config/panels.ini "${HOME}"/.config/mc/panels.ini

  from_template "${DOTFILES}"/.hushlogin "${HOME}"/.hushlogin
  from_template "${DOTFILES}"/templates/.zshenv "${HOME}"/.zshenv
  from_template "${DOTFILES}"/templates/.env "${HOME}"/.env
  from_template "${DOTFILES}"/templates/.gitlocal "${HOME}"/.gitlocal
  from_template "${DOTFILES}"/templates/.warprc "${HOME}"/.warprc
  from_template "${DOTFILES}"/templates/.ssh-config "${HOME}"/.ssh/config
}

install "$@"
