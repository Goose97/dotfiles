#!/bin/bash

info "Installing eslint"

if test ! $(which eslint)
then
  if test $(which npm)
  then
    npm install eslint --global
    success "Installed eslint"
    echo ""
  else
    fail "npm is not installed"
  fi
else
  success "eslint is already installed, skipping"
  echo ""
fi
