#!/bin/bash

# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages
apps=(
  coreutils
  cmake
  neovim/neovim/neovim
  wget
)

brew install "${apps[@]}"
