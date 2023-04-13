#!/bin/bash

# Source: https://github.com/junegunn/fzf

info "Installing fzf"

if test ! $(which fzf)
then
  if test $(which brew)
  then
    brew install fzf
    success "Installed fzf"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "fzf is already installed, skipping"
  echo ""
fi