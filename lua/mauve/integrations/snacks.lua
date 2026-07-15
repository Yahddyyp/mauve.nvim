return function(colours)
	local highlights = {
		SnacksNotifierInfo = { fg = colours.fg, bg = colours.base },
		SnacksNotifierWarn = { fg = colours.fg, bg = colours.base },
		SnacksNotifierError = { fg = colours.fg, bg = colours.base },
		SnacksNotifierBorderInfo = { fg = colours.mauve, bg = "NONE" },
		SnacksNotifierBorderWarn = { fg = colours.peach, bg = "NONE" },
		SnacksNotifierBorderError = { fg = colours.red, bg = "NONE" },
		SnacksNotifierIconInfo = { fg = colours.mauve, bg = colours.base },
		SnacksNotifierIconWarn = { fg = colours.peach, bg = colours.base },
		SnacksNotifierIconError = { fg = colours.red, bg = colours.base },
		SnacksNotifierTitleInfo = { fg = colours.mauve, bg = colours.base },
		SnacksNotifierTitleWarn = { fg = colours.peach, bg = colours.base },
		SnacksNotifierTitleError = { fg = colours.red, bg = colours.base },
		SnacksNotifierMsgInfo = { fg = colours.fg },
		SnacksNotifierMsgWarn = { fg = colours.fg },
		SnacksNotifierMsgError = { fg = colours.fg },
		-- indent lines
		SnacksIndent = { fg = colours.surface0 },
		SnacksIndentScope = { fg = colours.mauve },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
