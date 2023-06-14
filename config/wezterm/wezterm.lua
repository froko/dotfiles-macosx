local wezterm = require("wezterm")

local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

local config = {
  color_schemes = {
    ["OLEDppuccin"] = custom,
  },
  color_scheme = "OLEDppuccin",
  window_background_opacity = 0.85,
  enable_tab_bar = false,
  window_decorations = "RESIZE",
  native_macos_fullscreen_mode = true,
  keys = {
    {
      key = "n",
      mods = "SHIFT|CTRL",
      action = wezterm.action.ToggleFullScreen,
    }
  },
  window_background_gradient = {
    orientation = "Horizontal",
    colors = {
      "#00000C",
      "#000026",
      "#00000C"
     },
    interpolation = "CatmullRom",
    blend = "Rgb",
    noise = 0
   }
}

return config
