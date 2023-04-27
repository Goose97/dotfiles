#!/bin/bash

info "Installing nodenv"

if test ! $(which nodenv)
then
  if test $(which brew)
  then
    brew install nodenv
    success "Installed nodenv"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "nodenv is already installed, skipping"
  echo ""
fi
