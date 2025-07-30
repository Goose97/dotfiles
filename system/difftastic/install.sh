#!/bin/bash

info "Installing difftastic"

if test ! $(which difft)
then
  if test $(which brew)
  then
    brew install difft
    success "Installed difftastic"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "difftastic is already installed, skipping"
  echo ""
fi
