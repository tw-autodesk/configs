local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action
local config = wezterm.config_builder()

-- wezterm configs

local position_x = "5%"
local position_y = "6%"

config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.93
config.initial_rows = 95
config.initial_cols = 390
config.audible_bell = "Disabled"
config.enable_scroll_bar = true
config.use_ime = false
config.use_dead_keys = false

-- keybindings

config.keys = {
	{ key = "LeftArrow", mods = "OPT", action = act.SendString("\x1bb") },
	{ key = "RightArrow", mods = "OPT", action = act.SendString("\x1bf") },
	{
		key = "LeftArrow",
		mods = "CMD",
		action = act.SendString("\x1bOH"),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		action = act.SendString("\x1bOF"),
	},
	{ key = "Backspace", mods = "CMD", action = act.SendKey({ mods = "CTRL", key = "u" }) },
}

-- events

wezterm.on("gui-startup", function(cmd)
	-- set startup Window position
	local _, _, _ = mux.spawn_window(cmd or { position = { x = position_x, y = position_y } })
end)

return config
