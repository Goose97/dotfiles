# Like cd but use fuzzy finder
function zd() {
  local pattern=$1
  local dirs=($(ls -d */ 2>/dev/null | sed 's#/##' | fzf --filter="$pattern"))

  local count=${#dirs[@]}

  if [[ $count -eq 0 ]]; then
    echo "No directories found in current path"
    return 1
  elif [[ $count -eq 1 ]]; then
    cd "${dirs[1]}"
  else
    local selected=$(printf "%s\n" "${dirs[@]}" | fzf --layout=reverse --height=45% --border=sharp --no-sort --info=inline)
    if [[ -n $selected ]]; then
      cd "$selected"
    fi
  fi
}
