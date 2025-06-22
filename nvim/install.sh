#!/bin/sh

rm -rf ~/.config/nvim/*

while true; do
  git clone https://github.com/NvChad/starter ~/.config/nvim --depth=1

  if [ $? -eq 0 ]; then 
    echo "Downloaded nvchad starter"
    break
  else
    echo "Failed to download nvchad starter" 
    sleep 1
  fi
done

cp $1 ~/.config/nvim/lua/mappings.lua

nvim
