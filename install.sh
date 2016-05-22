#!/bin/bash

# Get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DIR/.git" ] && git --work-tree="$DIR" --git-dir="$DIR/.git" pull origin master

# Download base16 shell colors
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Install
. "$DIR/install/brew.sh"
. "$DIR/install/brew-cask.sh"
. "$DIR/install/neovim.sh"
. "$DIR/install/zsh.sh"

# Symlinks
ln -sfv $DIR/neovim/init.vim ~/.config/nvim/init.vim
ln -sfv $DIR/bash_profile ~/.bash_profile
