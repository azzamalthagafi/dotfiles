#!/bin/bash

# Create directories if they don't exist
mkdir -p ~/.config/nvim
mkdir -p ~/.local/bin

# Link nvim config files
ln -Fs "$PWD/config/nvim/" ~/.config/nvim/

# Link .tmux.conf
ln -s "$PWD/tmux/.tmux.conf" ~/.tmux.conf

# Clone tmux plugin manager if it doesn't exist
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "Cloning tmux plugin manager..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Dotfiles linked successfully!"
