#!/bin/bash

# Get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DIR/.git" ] && git --work-tree="$DIR" --git-dir="$DIR/.git" pull origin master

# Symlinks
ln -sfv "$DIR/neovim/init.vim" "~/.config/nvim/init.vim"

# Install
. "$DIR/install/brew.sh"
. "$DIR/install/brew-cask.sh"
