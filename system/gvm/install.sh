#!/bin/bash

info "Installing gvm"

if test ! $(which gvm)
then
  if test $(which curl)
  then
    curl -sSL https://github.com/soulteary/gvm/raw/master/binscripts/gvm-installer | bash
    success "Installed gvm"
    echo ""
  else
    fail "curl is not installed"
  fi
else
  success "gvm is already installed, skipping"
  echo ""
fi
