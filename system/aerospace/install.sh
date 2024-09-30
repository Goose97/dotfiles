#!/bin/bash

info "Installing aerospace"

if test ! $(which aerospace)
then
  if test $(which brew)
  then
    brew install --cask nikitabobko/tap/aerospace
    success "Installed aerospace"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "aerospace is already installed, skipping"
  echo ""
fi
