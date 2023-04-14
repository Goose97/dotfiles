#!/bin/bash

info "Installing ripgrep"

if test ! $(which rg)
then
  if test $(which brew)
  then
    brew install ripgrep
    success "Installed ripgrep"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "ripgrep is already installed, skipping"
  echo ""
fi