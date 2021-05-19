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