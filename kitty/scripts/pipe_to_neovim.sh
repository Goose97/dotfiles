#!/bin/bash

# Read from stdin, trim trailing newlines, and pipe to neovim
# Explanation from Claude:
#   1. :a creates a label 'a' for the sed script to jump to.
#   2. /^\n*$/ matches lines that are either completely empty or contain only newline characters.
#   3. {$d;N;ba -e '}' is a block of commands that are executed when the pattern is matched:
#     - $d deletes the line if it's the last line of the file.
#     - N appends the next line to the pattern space.
#     - ba branches back to label 'a', continuing the process until no more blank lines are found at the end.
sed -e :a -e '/^\n*$/{$d;N;ba' -e '}' | $HOME/.local/bin/nvim -u ~/.config/nvim/init_readonly.lua -Rmn -c "normal! Gzz"
