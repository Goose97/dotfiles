#!/bin/bash

# Source:  https://github.com/kerl/kerl

info "Installing kerl"

if test ! $(which kerl)
then
  if test $(which curl)
  then
    _path="$HOME/.local/bin/kerl"
    curl "https://raw.githubusercontent.com/kerl/kerl/master/kerl" -o $_path
    chmod a+x $_path
    success "Installed kerl"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "kerl is already installed, skipping"
  echo ""
fi
