return function(c)
	local highlights = {
		WinSeparator = { fg = c.mantle },
		NormalFloat = { fg = c.sapphire },
		FloatBorder = { fg = c.mauve },
		NoiceCmdline = { fg = c.fg, bg = c.bg },
		NoiceCmdlineIcon = { fg = c.sapphire },
		NoiceText = { fg = c.fg },
		WhichKey = { fg = c.sapphire, bold = true },
		WhichKeyDesc = { fg = c.pink },
		WhichKeyGroup = { fg = c.mauve },
		WhichKeyBorder = { fg = c.mauve },
		WhichKeyFloat = { fg = c.sapphire },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
