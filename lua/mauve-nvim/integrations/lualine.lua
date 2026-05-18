local c = {
	bg = "#1e1e2e",
	fg = "#cdd6f4",
	grey = "#45475a",
	mauve = "#cba6f7",
	sapphire = "#74c7ec",
	green = "#a6e3a1",
	red = "#f38ba8",
	yellow = "#f9e2af",
	blue = "#89dceb",
	peach = "#fab387",
	lavender = "#b4befe",
}

return {
	normal = {
		a = { fg = c.bg, bg = c.mauve, gui = "bold" },
		b = { fg = c.fg, bg = c.grey },
		c = { fg = c.fg, bg = c.bg, gui = "bold" },
	},
	insert = {
		a = { fg = c.bg, bg = c.sapphire, gui = "bold" },
		b = { fg = c.fg, bg = c.grey },
		c = { fg = c.fg, bg = c.bg, gui = "bold" },
	},
	visual = {
		a = { fg = c.bg, bg = c.peach, gui = "bold" },
		b = { fg = c.fg, bg = c.grey },
		c = { fg = c.fg, bg = c.bg, gui = "bold" },
	},
	command = {
		a = { fg = c.bg, bg = c.green, gui = "bold" },
		b = { fg = c.fg, bg = c.grey },
		c = { fg = c.fg, bg = c.bg, gui = "bold" },
	},
	replace = {
		a = { fg = c.bg, bg = c.red, gui = "bold" },
		b = { fg = c.fg, bg = c.grey },
		c = { fg = c.fg, bg = c.bg, gui = "bold" },
	},
	inactive = {
		a = { fg = c.yellow, bg = c.grey },
		b = { fg = c.yellow, bg = c.grey },
		c = { fg = c.yellow, bg = c.bg },
	},
}
