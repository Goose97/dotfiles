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

ZVM_VI_EDITOR="nvim -u ~/.config/nvim/init_lite.lua -n"
ZVM_VI_HIGHLIGHT_FOREGROUND=black
ZVM_VI_HIGHLIGHT_BACKGROUND=yellow
ZVM_KEYTIMEOUT=0.01
ZVM_ESCAPE_KEYTIMEOUT=0.01
