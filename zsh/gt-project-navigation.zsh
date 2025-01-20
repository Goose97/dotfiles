function Z() {
  # 1. Fixed list of directories
  local GT_PROJECT="$HOME/Documents/workspace/nimblehq/jfc-global-templates-web"
  local dir_list=$(ls "$GT_PROJECT/packages" | grep "jfc-global")

  # 2. Search pattern in the list using fzf
  local selected_dir=$(printf "%s\n" "${dir_list[@]}" | fzf --filter="$1" --no-sort)

  # 3. Pick the first result
  local first_result=$(echo "$selected_dir" | head -n1)

  # Check if a result was found
  if [[ -z "$first_result" ]]; then
      echo "No matching directory found."
      return 1
  fi

  # 4. cd to the first result
  if [[ "$first_result" == "jfc-global-template" ]]; then
      cd "$GT_PROJECT/packages/$first_result/template"
  else
      cd "$GT_PROJECT/packages/$first_result"
  fi
}

