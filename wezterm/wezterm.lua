local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Launch WSL Ubuntu as the default shell
config.wsl_domains = wezterm.default_wsl_domains()
config.default_domain = 'WSL:Ubuntu'

-- Theme
config.color_scheme = 'rose-pine-moon'

-- Typography
config.font = wezterm.font('Hack Nerd Font')
config.font_size = 15.0

-- Transparency + Windows 11 acrylic blur (requires opacity < 1.0)
config.window_background_opacity = 0.85
config.win32_system_backdrop = 'Acrylic'

-- Frameless window (keeps resize border, drops titlebar)
config.window_decorations = 'RESIZE'

-- Clean chrome: hide tab bar with a single tab
config.hide_tab_bar_if_only_one_tab = true

-- Breathing room
config.window_padding = {
  left = 12, right = 12, top = 12, bottom = 12,
}

return config
