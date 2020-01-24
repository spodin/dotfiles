#
# Aliases
#

_exists() {
  command -v $1 > /dev/null 2>&1
}

# Quicker natigation
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias -- -='cd -'
alias -- ~="cd ~"

# Shortcuts
alias l="ls -lah"
alias ll="ls -lh"
alias -- +x="chmod +x"
alias open='open_command'
alias o='open'
alias oo='open .'

# Enable aliases with sudo
alias sudo="sudo "

# Remove files interactively
alias rm="rm -i"

# Download file with original filename
alias get="curl -O -L"

# Download web page with all assets
alias getpage='wget --no-clobber --page-requisites --html-extension --convert-links --no-host-directories'

# Go to the /home/$USER (~) directory and clears window of your terminal
alias q="~ && clear"

# Bat (https://github.com/sharkdp/bat)
_exists bat && alias cat="bat --style=numbers,changes"

# Change directory to newly created
mcd() {
  mkdir -p $@ && cd ${@:$#}
}

# Copy/paste
if _exists pbcopy; then
  alias c="pbcopy"
  alias p="pbpaste"
elif _exists xclip; then
  alias c="xclip -selection clipboard"
  alias p="xclip -selection clipboard -o"
fi