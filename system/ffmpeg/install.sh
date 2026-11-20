#!/bin/bash

info "Installing ffmpeg"

if test ! $(which ffmpeg)
then
  if test $(which brew)
  then
    brew install ffmpeg
    success "Installed ffmpeg"
    echo ""
  else
    fail "brew is not installed"
  fi
else
  success "ffmpeg is already installed, skipping"
  echo ""
fi
