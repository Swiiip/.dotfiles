#!/bin/bash

pip2 install --upgrade pip
pip3 install --upgrade pip

pip2_apps=(
  neovim #useful for neoplete plugin
)

pip3_apps=(
  neovim #useful for neoplete plugin
  jedi #for python2-3 autocomplete
)

pip2 install "${pip2_apps[@]}"
pip3 install "${pip3_apps[@]}"
