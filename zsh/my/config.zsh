#
# Aliases.
#

source "$DOTFILES/zsh/my/aliases.zsh"

#
# Environment configuration.
#

export BAT_THEME="OneHalfDark"             # Bat theme (https://github.com/sharkdp/bat#highlighting-theme)
export GPG_TTY=$(tty)                      # GPG
export LANG="en_US.UTF-8"                  # Locale
export MC_SKIN="onedark"                   # Midnight Commander skin
export DISABLE_AUTO_TITLE="true"
export DISABLE_AUTO_UPDATE="true"          # Disable update prompt and auto update
export WD_CONFIG="$DOTFILES/zsh/.warprc"

_exists exa && export EXA_ICON_SPACING=2

# Preferred editor for local and remote sessions
if [[ -n "$SSH_CONNECTION" ]]; then
  if [ command -v vim >/dev/null 2>&1 ]; then
    export EDITOR='vim'
  else
    export EDITOR='vi'
  fi
else
  export EDITOR='vim'
fi

#
# Extra Zsh configuration and customizations.
#

export HISTSIZE=10000000
export SAVEHIST=10000000
export HISTFILE="$ZDOTDIR/.zsh_history"

setopt HIST_EXPIRE_DUPS_FIRST              # Expire duplicate entries first when trimming history
setopt HIST_IGNORE_ALL_DUPS                # Delete old recorded entry if new entry is a duplicate
setopt HIST_IGNORE_DUPS                    # Don't record an entry that was just recorded again
setopt HIST_IGNORE_SPACE                   # Don't record an entry starting with a space
setopt HIST_REDUCE_BLANKS                  # Remove superfluous blanks before recording entry
setopt HIST_VERIFY                         # Don't execute immediately upon history expansion

#
# Key bindings.
# Use `xxd` command for getting key codes.
#

bindkey '^[(' kill-word                    # [Fn-Option-Delete] - delete forward word (macOS)
bindkey '^[[3;5~' kill-word                # [Ctrl-Delete] - delete forward word
bindkey '^H' backward-kill-word            # [Ctrl-Backspace] - delete backward word
bindkey "\033[1~" beginning-of-line        # [Home] - go to beginning
bindkey "\033[4~" end-of-line              # [End] - go to end

#
# Developer tools.
#

# SDKMAN (https://sdkman.io)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# jEnv (https://www.jenv.be)
export JENV_HOME="$HOME/.jenv"
if [[ -d "$JENV_HOME" ]]; then
  _extend_path "$JENV_HOME/bin"
  eval "$(jenv init - --no-rehash)"
  (jenv rehash &) 2> /dev/null # to rehash in background
fi

# pyenv (https://github.com/pyenv/pyenv#installation)
export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT" ]]; then
  _extend_path "$PYENV_ROOT/bin"
  eval "$(pyenv init - --no-rehash)"
  (pyenv rehash &) 2> /dev/null # to rehash in background
fi

#
# Include OS specific configurations.
#

[[ "$(uname -s)" == 'Darwin' ]] && source "$DOTFILES/zsh/my/config-macos.zsh"
