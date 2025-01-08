#!/bin/bash

echo "This script is about to install dotfiles, make sure yours are backed up! THIS WILL DELETE THE CURRENT ONES!"

echo "Do you want to continue? (Y/N): "
read -r user_input

if [[ "$user_input" == "Y" || "$user_input" == "y" ]]; then
  echo "Installing flebedev77's dotfiles"

  SCRIPT_DIR=$(dirname "$(realpath "$BASH_SOURCE")")

  rm -r ~/.config/awesome
  rm -r ~/.config/nvim
  rm ~/.bashrc
  
  ln -s "$SCRIPT_DIR/.bashrc" ~/.bashrc
  ln -s "$SCRIPT_DIR/.config/awesome/" ~/.config/awesome
  ln -s "$SCRIPT_DIR/.config/nvim/" ~/.config/nvim
else
    echo "Exiting..."
fi
