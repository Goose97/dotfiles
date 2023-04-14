#!/bin/bash

# Source: https://github.com/junegunn/direnv

info "Installing direnv"

if test ! $(which direnv)
then
  if test $(which brew)
  then
    brew install direnv
    success "Installed direnv"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "direnv is already installed, skipping"
  echo ""
fi