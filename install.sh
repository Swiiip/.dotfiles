#!/bin/bash

# Get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DIR/.git" ] && git --work-tree="$DIR" --git-dir="$DIR/.git" pull origin master


# Install
. "$DIR/install/brew.sh"
. "$DIR/install/brew-cask.sh"
. "$DIR/install/neovim.sh"

# Symlinks
ln -sfv $DIR/neovim/init.vim ~/.config/nvim/init.vim
ln -sfv $DIR/bash_profile ~/.bash_profile
