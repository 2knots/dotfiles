-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- This will hold the configuration.
local config = wezterm.config_builder()

-- Tab Bar
config.hide_tab_bar_if_only_one_tab = true

-- Window Size
config.initial_cols = 120
config.initial_rows = 35

-- Window Padding
config.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 3,
}

-- Color
config.color_scheme = 'Dracula+'

-- Window Background
config.window_background_opacity = 0.85

-- Font
config.font = wezterm.font 'HackGen'
config.font_size = 15
config.window_frame = {
  font = wezterm.font { family = 'HackGen', weight = 'Regular' },
  font_size = 15
}
config.bold_brightens_ansi_colors = 'No'
config.font_rules = {
  {
    intensity = 'Bold',
    font = wezterm.font { family = 'HackGen', weight = 'Regular' }
  }
}

-- Cursor
config.default_cursor_style = 'BlinkingBlock'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 700

-- Bell
config.audible_bell = 'Disabled'

-- Domain
config.default_domain = 'WSL:Ubuntu'

-- Scroll Buffer
scrollback_lines = 5000

-- Finally, return the configuration to wezterm:
return config