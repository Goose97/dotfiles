alias aider='ANTHROPIC_API_KEY=$(op read "op://Private/Anthropic API key/API key" --no-newline) aider --watch-files --cache-prompts --editor "nvim -u $HOME/.config/nvim/init_lite.lua" --dark-mode'
