#!/bin/bash

info "Installing bat"

if test ! $(which bat)
then
  if test $(which brew)
  then
    brew install bat
    success "Installed bat"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "bat is already installed, skipping"
  echo ""
fi