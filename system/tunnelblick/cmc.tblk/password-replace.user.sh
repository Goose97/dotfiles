#!/bin/zsh
totp=$(/opt/homebrew/bin/oathtool --base32 --totp YVZU2DJQXU5WQHSB)
echo $totp
