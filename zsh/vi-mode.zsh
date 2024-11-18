function zvm_after_init() {
  # Use zvm_after_init callback to override the default key binding of zsh-vi-mode
  # zsh/complist
  bindkey -M viins '^N' menu-complete

  # These commands are defined in the navigate-history.zsh file
  bindkey -M vicmd "^J" down-line-or-beginning-search
  bindkey -M viins "^J" down-line-or-beginning-search
  bindkey -M vicmd "^K" up-line-or-beginning-search
  bindkey -M viins "^K" up-line-or-beginning-search

  # zsh-autosuggestions
  bindkey -M viins "\t" autosuggest-accept
}

function zvm_after_lazy_keybindings() {
  bindkey -M vicmd "L" end-of-line
  bindkey -M vicmd "H" beginning-of-line
}

function nvim_with_kitty_scrollback() {
  # Grab the scrollback buffer from kitty using kitty @ get-text
  # Save it into a temp file
  # Open the temp file and $1 in neovim in a horizontal split
  local temp_file=$(mktemp)

  # Trim trailing newlines
  # Replace kitty specific ANSI sequences
  kitty @ get-text --ansi | \
    sed -e :a -e '/^\n*$/{$d;N;ba' -e '}' \
        -e 's/\x1b\]133;[A-Za-z0-9=;]//g' -e 's/\x1b\\//g' \
    > $temp_file

  nvim -u ~/.config/nvim/init_lite.lua -n -o \
    -c ":set filetype=terminal" \
    -c ":normal! Gzz" \
    -c ":wincmd w" \
    $temp_file $1

  rm $temp_file
}

ZVM_VI_EDITOR="nvim_with_kitty_scrollback"
ZVM_VI_HIGHLIGHT_FOREGROUND=black
ZVM_VI_HIGHLIGHT_BACKGROUND=yellow
ZVM_KEYTIMEOUT=0.01
ZVM_ESCAPE_KEYTIMEOUT=0.01
