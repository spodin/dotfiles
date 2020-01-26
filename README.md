# dotfiles

![cover image](https://user-images.githubusercontent.com/8811713/72927842-9e956600-3d5f-11ea-9f07-29adc53c968b.png)

## Installation

Git and [Zsh](https://www.zsh.org) are required.

Clone and install:

`git clone https://github.com/spodin/dotfiles.git ~/.dotfiles && ~/.dotfiles/install.sh`
   
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