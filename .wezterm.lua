local wezterm = require 'wezterm'

return {
  term = 'xterm-256color',

  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5,
  },

  window_background_opacity = 0.75,
  window_decorations = 'TITLE | RESIZE',

  scrollback_lines = 100000,

  font_size = 15.0,
  font = wezterm.font('0xProto Nerd Font'),

  colors = {
    foreground = '#d8d8d8',
    background = '#191919',
  },
  
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
}
