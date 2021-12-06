# dotfiles

<img width="1186" alt="Screenshot 2021-12-07 at 01 01 52" src="https://user-images.githubusercontent.com/8811713/144936726-94545b0b-41a1-4695-ac93-f9c08e3d826b.png">

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
