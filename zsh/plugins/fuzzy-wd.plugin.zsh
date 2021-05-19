#!/usr/bin/env zsh

#
# Adds fuzzy search for directories "warped" with WD Zsh plugin.
# Activates with [Control+B].
#

WD_CONFIG=${WD_CONFIG:-$HOME/.warprc}

fuzzy_wd() {
  # load warp points
  typeset -A points
  while read -r line
  do
    arr=(${(s,:,)line})
    key=${arr[1]}
    # join the rest, in case the path contains colons
    val=${(j,:,)arr[2,-1]}

    points[$key]=$val
  done < ${WD_CONFIG}

  # pipe warp points to fzf for selection
  selected=$(echo "${points[@]}" | tr ' ' '\n' | fzf --height ${FZF_TMUX_HEIGHT:-40%} --reverse)

  if [[ ! -z "$selected" ]]; then
    cd $(eval echo "${selected}")
  fi
}

fuzzy_wd_widget() {
  if [[ -e $WD_CONFIG ]]; then
    fuzzy_wd
    ret=$?
    zle reset-prompt
    return $ret
  fi
}

zle -N fuzzy_wd_widget
bindkey '^B' fuzzy_wd_widget
