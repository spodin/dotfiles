#
# Aliases.
#

# List all packages installed via Brew
if _exists brew; then
  alias brew-list="{brew list --versions && brew list --cask --versions;}"
fi

# cd into whatever is the forefront Finder window (macOS)
cdf() {
  cd "`osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)'`"
}

#
# Environment configuration.
#

export HOMEBREW_NO_ANALYTICS=1             # Opt out of Homebrew’s analytics (https://docs.brew.sh/Analytics)
export HOMEBREW_CASK_OPTS=--no-quarantine  # Exclude apps installed via Brew from macOS quarantine

# iTerm2 tab and window title
if [[ "$ITERM_SESSION_ID" ]]; then
  # Set tab title to current directory and set window title to full path
  export PROMPT_COMMAND='echo -ne "\033]1;${PWD##*/}\007" && echo -ne "\033]2;${PWD}\007"; ':"$PROMPT_COMMAND";

  # Execute $PROMPT_COMMAND environment variable every time a command is run
  precmd() {
    eval "$PROMPT_COMMAND";
  }
fi