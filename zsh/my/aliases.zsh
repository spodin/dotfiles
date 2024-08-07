#
# Aliases
#

alias sudo="sudo " # Enable aliases with sudo

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias -- -='cd -'
alias -- ~="cd ~"
alias a="z"
alias q="~ && clear"

alias l="ls -lah"
alias ll="ls -lh"

alias open='open_command'
alias o='open'
alias oo='open .&& '

alias g="git"
alias d="docker"
alias mc="mc --nosubshell" # Run mc without subshell (for increased performance)
alias rm="rm -i" # Remove files interactively
alias path='echo -e ${PATH//:/\\n}' # Print $PATH in readable view

alias get="curl -O -L" # Download file with original filename
alias getpage='wget --no-clobber --page-requisites --html-extension --convert-links --no-host-directories' # Download web page with all assets

# Replace cat with bat (https://github.com/sharkdp/bat) if available
if _exists bat; then
  alias cat="bat --style=plain"
fi

# Replace ls with eza (https://eza.rocks) if available
if _exists eza; then
  alias ls="COLUMNS=90 eza --icons"
  alias tree="eza --tree --icons"
fi

# Generate random passwords
if _exists pwgen; then
  password() {
    length=${1-16}
    pwgen -cnys1 "$length" 1
  }
fi

# Change directory to newly created
mcd() {
  mkdir -p "$@" && cd "${@:$#}"
}

# Copy/paste, intended to use with pipes: cat <somefile> | c
if _exists pbcopy; then
  alias c="pbcopy | tr -d '\n'"
  alias p="pbpaste"
elif _exists xclip; then
  alias c="xclip -selection clipboard"
  alias p="xclip -selection clipboard -o"
fi

# Clone repository and cd into it
clone() {
  git clone $@
  if [[ "$2" ]]; then
    cd "$2"
  else
    cd $(basename "$1" .git)
  fi
}

# To debug shell startup time
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
