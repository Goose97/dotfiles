#!/bin/bash

info "Installing delta"

if test ! $(which delta)
then
  if test $(which brew)
  then
    brew install git-delta
    success "Installed delta"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "delta is already installed, skipping"
  echo ""
fi
