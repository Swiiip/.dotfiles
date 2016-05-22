#!/bin/bash

# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages
apps=(
  cmake
  neovim/neovim/neovim --verbose
  wget
  fzf
  zsh
  python
  python3
)

brew install "${apps[@]}"
