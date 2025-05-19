s() {
  # Parse ssh config to get host aliases, excluding pattern-matching hosts like '*'
  selected_host=$(grep "^Host" ~/.ssh/config |  grep -v "[*?]" | awk '{print $2}' | fzf --prompt="Select SSH Host: " --layout reverse)

  if [ -n "$selected_host" ]; then
    ssh "$selected_host" "$@"
  fi
}
