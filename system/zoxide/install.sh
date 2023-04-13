#!/bin/bash

# Source: https://github.com/ajeetdsouza/zoxide

info "Installing zoxide"

if test ! $(which zoxide)
then
  if test $(which curl)
  then
    curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
    success "Installed zoxide"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "zoxide is already installed, skipping"
  echo ""
fi