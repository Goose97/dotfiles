function zvm_after_lazy_keybindings() {
  bindkey -M vicmd "L" end-of-line
  bindkey -M vicmd "H" beginning-of-line

  # These commands are defined in the .zshrc file
  bindkey -M vicmd "j" down-line-or-beginning-search
  bindkey -M vicmd "k" up-line-or-beginning-search
}

ZVM_VI_EDITOR="nvim -u ~/.config/nvim/minimal_init.lua -Rmn"
ZVM_VI_HIGHLIGHT_FOREGROUND=black
ZVM_VI_HIGHLIGHT_BACKGROUND=yellow
ZVM_KEYTIMEOUT=0.01
ZVM_ESCAPE_KEYTIMEOUT=0.01
