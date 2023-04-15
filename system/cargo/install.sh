#!/bin/bash

info "Installing cargo"

if test ! $(which cargo)
then
  if test $(which curl)
  then
    curl https://sh.rustup.rs -sSf | sh
    success "Installed cargo"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "cargo is already installed, skipping"
  echo ""
fi
