#!/bin/bash

# Get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DIR/.git" ] && git --work-tree="$DIR" --git-dir="$DIR/.git" pull origin master

# Base16 shell colors
BASE16_DIR=$HOME/.config/base16-shell
[ ! -d $BASE16_DIR ] && mkdir -p $BASE16_DIR
git clone https://github.com/chriskempson/base16-shell.git $BASE16_DIR

# Install
. "$DIR/install/brew.sh"
. "$DIR/install/brew-cask.sh"
. "$DIR/install/neovim.sh"
. "$DIR/install/zsh.sh"
. "$DIR/install/pip.sh"

# Symlinks
ln -sfv $DIR/neovim/init.vim $HOME/.config/nvim/init.vim
ln -sfv $DIR/zshrc $HOME/.zshrc
