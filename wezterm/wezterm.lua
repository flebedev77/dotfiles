local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.enable_tab_bar = false

config.font_size = 12
config.color_scheme = 'Ayu Mirage'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.colors = {
  cursor_bg = "#d2d9ef",     -- Cursor fill color
  cursor_fg = "#111111",     -- Text color under cursor
  cursor_border = "#d2d9ef", -- Cursor border color
}

return config
