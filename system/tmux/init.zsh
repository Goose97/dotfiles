tmux () {
  case "$1" in
    af)
      session=$(tmux ls | grep -Eo "^.+?:" | sed 's/://' | fzf)
      if [[ $session ]]; then
        tmux a -t $session
      fi
    ;;
    *) command tmux $@
    ;;
  esac
}
