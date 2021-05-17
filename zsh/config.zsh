#
# Extra Zsh configuration and customizations.
#

export HISTSIZE=10000000
export SAVEHIST=10000000
export HISTFILE="$HOME/.zsh_history"

setopt HIST_EXPIRE_DUPS_FIRST        # Expire duplicate entries first when trimming history
setopt HIST_IGNORE_ALL_DUPS          # Delete old recorded entry if new entry is a duplicate
setopt HIST_IGNORE_DUPS              # Don't record an entry that was just recorded again
setopt HIST_IGNORE_SPACE             # Don't record an entry starting with a space
setopt HIST_REDUCE_BLANKS            # Remove superfluous blanks before recording entry
setopt HIST_VERIFY                   # Don't execute immediately upon history expansion

#
# Key bindings.
# Use `xxd` command for getting key codes.
#

bindkey '^[(' kill-word              # [Fn-Option-Delete] - delete forward word (macOS)
bindkey '^[[3;5~' kill-word          # [Ctrl-Delete] - delete forward word
bindkey '^H' backward-kill-word      # [Ctrl-Backspace] - delete backward word
bindkey "\033[1~" beginning-of-line  # [Home] - go to beginning
bindkey "\033[4~" end-of-line        # [End] - go to end