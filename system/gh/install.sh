#!/bin/bash

info "Installing gh"

if test ! $(which gh)
then
  if test $(which brew)
  then
    brew install gh
    success "Installed gh"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "gh is already installed, skipping"
  echo ""
fi
