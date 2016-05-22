#!/bin/bash

pip3 install --upgrade pip3

# Install packages
pip3_apps=(
  neovim #useful for neoplete plugin
)

pip3 install "${pip3_apps[@]}"
