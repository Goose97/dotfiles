#!/bin/bash

info "Installing rbenv"

if test ! $(which rbenv)
then
  if test $(which brew)
  then
    brew install rbenv
    success "Installed rbenv"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "rbenv is already installed, skipping"
  echo ""
fi
