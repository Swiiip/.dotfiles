#!/bin/bash

# Install oh-my-zsh
[ ! -d $HOME/.oh-my-zsh ] && git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# Set zsh default bash
chsh -s /bin/zsh
