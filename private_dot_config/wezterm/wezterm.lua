local wezterm = require("wezterm")

local config = wezterm.config_builder()

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Frappe"
  else
    return "Catppuccin Latte"
  end
end

-- fonts
config.font = wezterm.font("RobotoMono Nerd Font", { weight = "Regular" })
config.font_size = 14
-- config.freetype_load_flags = "NO_HINTING"
config.freetype_load_target = "Light"
config.freetype_render_target = "HorizontalLcd"

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

return config
