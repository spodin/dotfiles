# dotfiles

<img width="1105" alt="Screenshot 2021-12-07 at 01 12 42" src="https://user-images.githubusercontent.com/8811713/144937712-b6bd1b27-9818-4064-87a8-dcf240638d0d.png">

## Installation

```bash
git clone https://github.com/spodin/dotfiles.git ~/.config/dotfiles && ~/.config/dotfiles/install.sh
```

## Shell setup

- [Zsh shell](https://www.zsh.org)

- [Oh My Zsh](https://ohmyz.sh) - framework for managing Zsh configuration

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - shell theme

- [Exa](https://the.exa.website) - `ls` replacement

- [Bat](https://github.com/sharkdp/bat) - `cat` replacement

- [Fzf](https://github.com/junegunn/fzf) - fuzzy search and filtering

  ```bash
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
  ~/.fzf/install \
  --key-bindings \
  --completion \
  --no-update-rc \
  --no-bash \
  --no-fish
  ```
  
- [Sdkman](https://sdkman.io) - managing parallel versions of multiple SDKs

  ```bash
  curl -s "https://get.sdkman.io?rcupdate=false" | bash
  ```
  
## Git setup

```bash
git config -f ~/.gitlocal user.name "Your Name"
```

```bash
git config -f ~/.gitlocal user.email "name@example.com"
```
