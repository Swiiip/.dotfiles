#!/bin/bash

# Instal all software updates
softwareupdate --install --all

# XCode command line tools
xcode-select --install

# Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Cask
brew tap caskroom/cask

# Iterm2
brew cask install iterm2

# Utilities
brew install wget

# OH-MY-ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Neovim
brew install neovim/neovim/neovim
