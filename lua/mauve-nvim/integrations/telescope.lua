return function(c)
	local highlights = {
		TelescopeBorder = { fg = c.sapphire },
		TelescopePromptBorder = { fg = c.mauve },
		TelescopeResultsBorder = { fg = c.mauve },
		TelescopePreviewBorder = { fg = c.mauve },
		TelescopeSelection = { fg = c.mauve, bold = true, bg = c.grey },
		TelescopePromptPrefix = { fg = c.sapphire, bold = true },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
