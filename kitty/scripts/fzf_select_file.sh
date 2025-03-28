#!/bin/bash

TARGET_WINDOW_ID="$1"
selected_files="$(git ls-files | /opt/homebrew/bin/fzf --multi --layout reverse --preview '/opt/homebrew/bin/bat --style=numbers --color=always {}' --preview-window 'up,40%,border-horizontal')"

if [ -n "$selected_files" ]; then
  single_line=$(echo "$selected_files" | tr '\n' ' ')
  
  # Send to kitty
  kitty @ send-text --match "id:$TARGET_WINDOW_ID" "$single_line"
fi
