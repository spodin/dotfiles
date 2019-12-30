#!/usr/bin/env zsh

#
# Configures Zsh custom theme and plugins using 'Oh My Zsh' manager.
#

OH_MY_ZSH_HOME="$HOME/.oh-my-zsh"

OH_MY_ZSH_SCRIPT="$OH_MY_ZSH_HOME/oh-my-zsh.sh"

# Source 'Oh My Zsh' script to get 'ZSH_CUSTOM' variable value
if [[ -f ${OH_MY_ZSH_SCRIPT} ]]; then
  source ${OH_MY_ZSH_SCRIPT}
else
  echo "Oh My Zsh installation wasn't found under '${OH_MY_ZSH_HOME}'"
  exit 1
fi

# Spaceship theme (https://denysdovhan.com/spaceship-prompt)
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM}/themes/spaceship-prompt
ln -s ${ZSH_CUSTOM}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM}/themes/spaceship.zsh-theme

# Autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

# Syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting