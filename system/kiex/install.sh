#!/bin/bash

# Source: https://github.com/taylor/kiex

info "Installing kiex"

if test ! $(which kiex)
then
  if test $(which curl)
  then
    curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
    _path="$HOME/.local"
    info "Moving .kiex to $_path"
    mv "$HOME/.kiex" $_path

    success "Installed kiex"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "kiex is already installed, skipping"
  echo ""
fi