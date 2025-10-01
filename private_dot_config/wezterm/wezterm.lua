local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- fonts
config.font = wezterm.font("Inconsolata Nerd Font", { weight = "Regular" })
config.font_size = 12

config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "RESIZE"
-- config.window_close_confirmation = "NeverPrompt"
config.freetype_render_target = "HorizontalLcd"

config.color_scheme = "Catppuccin Frappe"

config.default_prog = { '/usr/bin/fish', '-l', '-c', 'tmux' }

return config
