#!/bin/bash

info "Installing tmux"

if test ! $(which tmux)
then
  if test $(which brew)
  then
    brew install tmux
    success "Installed tmux"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "tmux is already installed, skipping"
  echo ""
fi
