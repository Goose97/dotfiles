#!/bin/bash

info "Installing borders"

if test ! $(which borders)
then
  if test $(which brew)
  then
    brew tap FelixKratz/formulae
    brew install borders
    success "Installed borders"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "borders is already installed, skipping"
  echo ""
fi
