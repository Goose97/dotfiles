#!/bin/bash

info "Installing tree"

if test ! $(which tree)
then
  if test $(which brew)
  then
    brew install tree
    success "Installed tree"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "tree is already installed, skipping"
  echo ""
fi