# dotfiles

![cover image](https://user-images.githubusercontent.com/8811713/72927842-9e956600-3d5f-11ea-9f07-29adc53c968b.png)

## Requirements

- Git
- [Zsh](https://www.zsh.org) and '[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)' as it's configuration manager

## Installation

1. Clone:

   `git clone https://github.com/spodin/dotfiles.git ~/.dotfiles && cd ~/.dotfiles`

2. Stuff Zsh with custom theme and plugins using 'Oh My Zsh':

   `./configure_zsh.sh`
   
3. Install dotfiles:

   `./install.sh`
   
## Post-installation steps

1. Setup Git identity:

   ```bash
   git config -f ~/.gitlocal user.name "Your Name"
   git config -f ~/.gitlocal user.email "name@example.com"
   
   git config -f ~/.gitlocal commit.gpgsign true
   git config -f ~/.gitlocal user.signingkey <key id>
   ```
   
2. Set environment specific settings (proxy, SSH connections etc.) in files:

   - `~/.env`
   - `~/.npmrc`
   - `~/.ssh/config`