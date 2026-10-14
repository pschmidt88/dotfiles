-- World of Warcraft: fullscreen, pinned to workspace 9

hl.window_rule({
	name = "wow-fullscreen-workspace",
	match = { title = "^World of Warcraft$" },
	workspace = "9",
	fullscreen = false,
})
