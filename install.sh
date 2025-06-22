#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
CONFIG_PATH="$HOME/.config"

printf "This script will override the config for \n$(cd "$SCRIPT_DIR" && ls -d */ | sed 's/\///g')\nAnd it will be installed to $CONFIG_PATH"
printf "\nContinue? [y/N]: "
read CONTINUE

if [[ $CONTINUE == *Y* || $CONTINUE == *y* ]]; then
  cp -rv "$SCRIPT_DIR"/* "$CONFIG_PATH/"

  pushd $CONFIG_PATH 2> /dev/null
  rm -rf install.sh .git .gitmodules pull_from_local.sh README.md
  popd 2> /dev/null
fi

