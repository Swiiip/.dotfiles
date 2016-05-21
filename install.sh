#!/bin/bash

# Get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install
. "$DIR/install/brew.sh"
. "$DIR/install/brew-cask.sh"
