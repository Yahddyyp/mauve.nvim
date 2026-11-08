return function(c)
	local highlights = {
		SnacksNotifierInfo = { fg = c.fg, bg = c.base },
		SnacksNotifierWarn = { fg = c.fg, bg = c.base },
		SnacksNotifierError = { fg = c.fg, bg = c.base },
		SnacksNotifierBorderInfo = { fg = c.mauve, bg = "NONE" },
		SnacksNotifierBorderWarn = { fg = c.peach, bg = "NONE" },
		SnacksNotifierBorderError = { fg = c.red, bg = "NONE" },
		SnacksNotifierIconInfo = { fg = c.mauve, bg = c.base },
		SnacksNotifierIconWarn = { fg = c.peach, bg = c.base },
		SnacksNotifierIconError = { fg = c.red, bg = c.base },
		SnacksNotifierTitleInfo = { fg = c.mauve, bg = c.base },
		SnacksNotifierTitleWarn = { fg = c.peach, bg = c.base },
		SnacksNotifierTitleError = { fg = c.red, bg = c.base },
		SnacksNotifierMsgInfo = { fg = c.fg },
		SnacksNotifierMsgWarn = { fg = c.fg },
		SnacksNotifierMsgError = { fg = c.fg },
		-- indent lines
		SnacksIndent = { fg = c.surface0 },
		SnacksIndentScope = { fg = c.mauve },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
