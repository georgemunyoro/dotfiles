local wezterm = require("wezterm")
local c = wezterm.config_builder()

return {
	-- font = wezterm.font("0xProto Nerd Font"),
	font = wezterm.font("MonaspiceNe Nerd Font"),
	-- font = wezterm.font("FiraMono Nerd Font Mono"),
	-- font = wezterm.font("JetBrainsMono NF"),

	font_size = 13,
	-- color_scheme = "Gruvbox Dark (Gogh)",
	-- enable_tab_bar = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	-- use_fancy_tab_bar = true,
	-- window_decorations = "NONE",
	-- enable_wayland = false,
	-- integrated_title_button_style = "Gnome",
}
