return function(c)
	vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = c.sapphire })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = c.mauve })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = c.mauve })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = c.mauve })
	vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = c.mauve, bold = true, bg = c.grey })
	vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = c.sapphire, bold = true })
end
