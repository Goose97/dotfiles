#!/bin/bash

info "Installing nvm"

if [[ $(type -t nvm) == function ]]
then
  if test $(which curl)
  then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    success "Installed nvm"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "nvm is already installed, skipping"
  echo ""
fi
