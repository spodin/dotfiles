# dotfiles

![cover image](https://user-images.githubusercontent.com/8811713/72927842-9e956600-3d5f-11ea-9f07-29adc53c968b.png)

## Installation

Git and [Zsh](https://www.zsh.org) are required.

Clone and install:

`git clone https://github.com/spodin/dotfiles.git ~/.dotfiles && ~/.dotfiles/install.sh`
   
## Post-installation Steps

1. Setup Git identity:

   ```bash
   git config -f ~/.gitlocal user.name "Your Name"
   git config -f ~/.gitlocal user.email "name@example.com"
   ```
   
2. Set environment specific settings (proxy, SSH connections etc.) in files:

   - `~/.env`
   - `~/.npmrc`
   - `~/.ssh/config`
   
optionally install:

- [bat](https://github.com/sharkdp/bat#installation) 
   
- [fzf](https://github.com/junegunn/fzf):

  `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install`
  
- [SDKMAN](https://sdkman.io/install) to manage Maven, Gradle versions:

  `curl -s "https://get.sdkman.io?rcupdate=false" | bash`

- [jEnv](https://github.com/jenv/jenv#11-installing-jenv) to manage JDK versions:

  `git clone https://github.com/jenv/jenv.git ~/.jenv`
  
## Structure Overview

```
~/.dotfiles
├── bin          # binaries and useful commands
├── custom.sh    # 'Oh My Zsh', theme and plugins installation script
├── home         # will be symlinked into user's home directory
├── install.sh   # main dotfiles installation script
├── templates    # templates for machine specific files creation
└── zsh          # aliases, key bindings and other customizations
```
