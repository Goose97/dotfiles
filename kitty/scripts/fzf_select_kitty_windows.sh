#!/bin/bash

# This script will be launched from kitty overlay window
# We want to exclude the overlay window from the list of windows. The trick is the overlay window should be the only
# focused window, so we can use that to filter.
current_tab_windows="$(kitty @ ls | jq -r 'map(select(.is_active)) | .[0].tabs | map(select(.is_active)).[0].windows | map(select(.is_focused == false))')"

# kitty overlay window has a different PATH, therefore, it can't find the fzf binary
# Our workaround is to use the full path to fzf
selected_title=$(echo "$current_tab_windows" | jq -r '.[] | .title' | /opt/homebrew/bin/fzf --layout reverse)

if [ -n "$selected_title" ]; then
  selected_window_id="$(echo "$current_tab_windows" | jq -r --arg selected_title "$selected_title" 'map(select(.title == $selected_title)) | .[0].id')"
  kitty @ focus-window --match "id:$selected_window_id"
else
  exit 1
fi
