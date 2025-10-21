#!/bin/bash

# Create directories if they don't exist
mkdir -p ~/.config/nvim
mkdir -p ~/.local/bin
mkdir -p ~/.config/tmux-powerline
mkdir -p ~/.config/tmux-powerline/themes

# Link nvim config files
ln -Fs "$PWD/config/nvim" ~/.config/nvim

# Link .tmux.conf
ln -s "$PWD/tmux/.tmux.conf" ~/.tmux.conf

# Link tmux-powerline config
ln -fs "$PWD/tmux/tmux-powerline-config.sh" ~/.config/tmux-powerline/config.sh

# Link tmux-powerlinne theme
ln -fs "$PWD/tmux/tmux-powerline-theme.sh" ~/.config/tmux-powerline/themes/tmux-theme.sh

# Clone tmux plugin manager if it doesn't exist
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "Cloning tmux plugin manager..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Dotfiles linked successfully!"
