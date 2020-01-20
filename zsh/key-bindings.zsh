#
# Key bindings.
# Use `xxd` command for getting key codes.
#

bindkey '^[(' kill-word         # [Fn-Option-Delete] - delete forward word (macOS)
bindkey '^[[3;5~' kill-word     # [Ctrl-Delete] - delete forward word
bindkey '^H' backward-kill-word # [Ctrl-Backspace] - delete backward word