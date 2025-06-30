#
#!/bin/sh

echo "This script copies configs from $HOME/.config/* into this directory"
printf "Continue? [y/N]: "
read CONTINUE

CONFIG_PATH="$HOME/.config"

if [[ $CONTINUE == *Y* || $CONTINUE == *y* ]]; then
  echo "pulling from .config and /etc/vimrc"
  cp -v "$CONFIG_PATH/picom.conf" ./
  cp -v "$HOME/.vimrc" ./vim/vimrc
  cp -rv "$CONFIG_PATH/kitty" ./
  cp -rv "$CONFIG_PATH/wezterm" ./
  cp -rv "$CONFIG_PATH/i3" ./
  cp -rv "$CONFIG_PATH/polybar" ./
  cp -rv "$CONFIG_PATH/rofi" ./
fi
