#!/usr/bin/env zsh

#
# Configures Zsh custom theme and plugins using 'Oh My Zsh' manager.
#

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Spaceship theme (https://denysdovhan.com/spaceship-prompt)
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM}/themes/spaceship-prompt
ln -s ${ZSH_CUSTOM}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM}/themes/spaceship.zsh-theme

# Autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

# Syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting