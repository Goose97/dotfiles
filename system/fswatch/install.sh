#!/bin/bash

info "Installing fswatch"

if test ! $(which fswatch)
then
  if test $(which brew)
  then
    brew install fswatch
    success "Installed fswatch"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "fswatch is already installed, skipping"
  echo ""
fi
