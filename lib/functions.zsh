#
# Functions that can be used across scripts
#

# Extend $PATH without duplicates
_extend_path() {
  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    export PATH="$1:$PATH"
  fi
}

# Sources all files in specified directory recursively
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    for config in "$_dir"/**/*(N-.); do
      . $config
    done
  fi
}

# Checks whether specified command exists
_exists() {
  command -v $1 > /dev/null 2>&1
}