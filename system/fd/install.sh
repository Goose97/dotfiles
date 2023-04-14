#!/bin/bash

info "Installing fd"

if test ! $(which fd)
then
  if test $(which brew)
  then
    brew install fd
    success "Installed fd"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "fd is already installed, skipping"
  echo ""
fi