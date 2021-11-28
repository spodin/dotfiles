#
# Functions that can be used across scripts
#

# Extend $PATH without duplicates
_extend_path() {
  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    export PATH="$1:$PATH"
  fi
}

# Checks whether specified command exists
_exists() {
  command -v "$1" > /dev/null 2>&1
}