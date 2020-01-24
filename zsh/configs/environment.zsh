#
# Environment configuration file.
#

# Locale
export LANG="en_US.UTF-8"

# GPG
export GPG_TTY=$(tty)

# Opt out of Homebrew’s analytics (https://docs.brew.sh/Analytics)
export HOMEBREW_NO_ANALYTICS=1

# SDKMAN (https://sdkman.io)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Midnight Commander skin
export MC_SKIN="nicedark"