#!/bin/bash

TARGET_WINDOW_ID="$1"
selected_files="$(git ls-files | /opt/homebrew/bin/fzf --multi --reverse --preview 'bat --style=numbers --color=always {}')"

if [ -n "$selected_files" ]; then
  single_line=$(echo "$selected_files" | tr '\n' ' ')
  
  # Send to kitty
  kitty @ send-text --match "id:$TARGET_WINDOW_ID" "$single_line"
fi
