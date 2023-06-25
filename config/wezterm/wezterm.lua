local wezterm = require("wezterm")

local config = {
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
