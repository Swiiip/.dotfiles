#!/bin/bash

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Save old zshrc
cp ~/.zshrc ~/.zshrc.orig

# Set zsh default bash
chsh -s /bin/zsh
