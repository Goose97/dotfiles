#!/bin/bash

info "Installing lazygit"

if test ! $(which lazygit)
then
  if test $(which brew)
  then
    brew install lazygit
    success "Installed lazygit"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "lazygit is already installed, skipping"
  echo ""
fi
