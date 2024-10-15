#!/bin/bash

# Read from stdin, trim trailing newlines, remove kitty specific ANSI sequence and pipe to neovim.
# Also set filetype=terminal so our Neovim config will highlight ANSI colors
# Explanation from Claude:
#   1. :a creates a label 'a' for the sed script to jump to.
#   2. /^\n*$/ matches lines that are either completely empty or contain only newline characters.
#   3. {$d;N;ba -e '}' is a block of commands that are executed when the pattern is matched:
#     - $d deletes the line if it's the last line of the file.
#     - N appends the next line to the pattern space.
#     - ba branches back to label 'a', continuing the process until no more blank lines are found at the end.

# Trim trailing newlines
# Replace kitty specific ANSI sequences
sed -e :a -e '/^\n*$/{$d;N;ba' -e '}' \
    -e 's/\x1b\]133;[A-Za-z0-9=;]//g' -e 's/\x1b\\//g' \
      | $HOME/.local/bin/nvim -u ~/.config/nvim/init_readonly.lua -Rmn -c "normal! Gzz" -c ":set filetype=terminal"
