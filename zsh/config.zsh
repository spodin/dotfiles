#
# Extra Zsh configuration and customizations.
#

# Don't record duplicates in history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

#
# Key bindings.
# Use `xxd` command for getting key codes.
#

bindkey '^[(' kill-word              # [Fn-Option-Delete] - delete forward word (macOS)
bindkey '^[[3;5~' kill-word          # [Ctrl-Delete] - delete forward word
bindkey '^H' backward-kill-word      # [Ctrl-Backspace] - delete backward word
bindkey "\033[1~" beginning-of-line  # [Home] - go to beginning
bindkey "\033[4~" end-of-line        # [End] - go to end