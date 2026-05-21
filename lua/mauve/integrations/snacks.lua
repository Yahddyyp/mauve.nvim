return function(colours)
	local highlights = {
		SnacksNotifierInfo = { fg = colours.fg, bg = colours.mantle },
		SnacksNotifierWarn = { fg = colours.fg, bg = colours.mantle },
		SnacksNotifierError = { fg = colours.fg, bg = colours.mantle },
		SnacksNotifierBorderInfo = { fg = colours.mauve, bg = colours.mantle },
		SnacksNotifierBorderWarn = { fg = colours.peach, bg = colours.mantle },
		SnacksNotifierBorderError = { fg = colours.red, bg = colours.mantle },
		SnacksNotifierIconInfo = { fg = colours.mauve },
		SnacksNotifierIconWarn = { fg = colours.peach },
		SnacksNotifierIconError = { fg = colours.red },
		SnacksNotifierTitleInfo = { fg = colours.mauve, bold = true },
		SnacksNotifierTitleWarn = { fg = colours.peach, bold = true },
		SnacksNotifierTitleError = { fg = colours.red, bold = true },
		SnacksNotifierMsgInfo = { fg = colours.fg },
		SnacksNotifierMsgWarn = { fg = colours.fg },
		SnacksNotifierMsgError = { fg = colours.fg },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end