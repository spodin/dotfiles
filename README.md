# dotfiles

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