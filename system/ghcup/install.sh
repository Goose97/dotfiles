#!/bin/bash

# Source: https://github.com/taylor/ghcup

info "Installing ghcup"

if test ! $(which ghcup)
then
  if test $(which curl)
  then
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    success "Installed ghcup"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "ghcup is already installed, skipping"
  echo ""
fi
