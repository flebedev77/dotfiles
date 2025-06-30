local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.enable_tab_bar = false

config.font_size = 12
config.color_scheme = 'Ayu Mirage'
config.window_padding = {
  left = 9,
  right = 9,
  top = 9,
  bottom = 9,
}

config.colors = {
  cursor_bg = "#d2d9ef",     -- Cursor fill color
  cursor_fg = "#111111",     -- Text color under cursor
  cursor_border = "#d2d9ef", -- Cursor border color
  --background = "#1c1c1c", -- Vim habamax background color
  background = "#252628",
}

return config
