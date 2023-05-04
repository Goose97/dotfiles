#!/bin/bash

info "Installing jq"

if test ! $(which jq)
then
  if test $(which brew)
  then
    brew install jq
    success "Installed jq"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "jq is already installed, skipping"
  echo ""
fi
