![cover image](https://user-images.githubusercontent.com/8811713/72927842-9e956600-3d5f-11ea-9f07-29adc53c968b.png)

# .files

1. Clone and install:

   `git clone https://github.com/spodin/dotfiles.git ~/.dotfiles && ~/.dotfiles/install.sh -y`

2. Setup Git identity:

   ```bash
   git config -f ~/.gitlocal user.name "Your Name"
   git config -f ~/.gitlocal user.email "name@example.com"
   ```
   
3. Set environment specific settings (proxy, SSH connections etc.) in files:

   - `~/.env`
   - `~/.npmrc`
   - `~/.ssh/config`
   
## Optional Software

- [bat](https://github.com/sharkdp/bat#installation)
   
- [fzf](https://github.com/junegunn/fzf):
   
  ```bash
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
  ~/.fzf/install \
  --key-bindings \
  --completion \
  --no-update-rc \
  --no-bash \
  --no-fish
  ```
   
- [SDKMAN](https://sdkman.io/install): 
   
  `curl -s "https://get.sdkman.io?rcupdate=false" | bash`
     
- [jEnv](https://github.com/jenv/jenv#11-installing-jenv): 
   
  `git clone https://github.com/jenv/jenv.git ~/.jenv`
     
- [tmux](https://github.com/tmux/tmux/wiki)

## Setup

- [Menlo for Powerline](setup/fonts/menlo-for-powerline) font

- [Oceanic Next](setup/terminal-themes/oceanic-next) terminal theme:
  - GNOME Terminal by [@denysdovhan](https://github.com/denysdovhan/oceanic-next-gnome-terminal)  
  - elementary OS
  - macOS Terminal [@robinbentley](https://github.com/robinbentley/oceanic-next-macos-terminal)
