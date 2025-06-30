#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
CONFIG_PATH="$HOME/.config"

printf "This script will override the config for \n$(cd "$SCRIPT_DIR" && ls -d */ | sed 's/\///g')\nAnd it will be installed to $CONFIG_PATH"
printf "\nContinue? [y/N]: "
read CONTINUE

if [[ $CONTINUE == *Y* || $CONTINUE == *y* ]]; then
  # Clear old neovim configs
  rm -rf ~/.config/nvim
  rm -rf ~/.local/state/nvim
  rm -rf ~/.local/share/nvim

  # Configure vim
  cp -v "$SCRIPT_DIR/vim/vimrc" "$HOME/.vimrc"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  vim -c 'PlugInstall' -c 'qa'

  # Install stuff into the .config directory
  cp -rv "$SCRIPT_DIR"/* "$CONFIG_PATH/"

  # Remove stray directories
  pushd $CONFIG_PATH 2> /dev/null
  rm -rvf install.sh .git .gitmodules pull_from_local.sh README.md vim
  popd 2> /dev/null

  # Install nvchad neovim
  "$CONFIG_PATH/nvim/install.sh" "$SCRIPT_DIR/nvim/mappings.lua"
fi

