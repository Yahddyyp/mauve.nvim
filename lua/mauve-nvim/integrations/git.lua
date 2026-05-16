return function(colours)
	vim.api.nvim_set_hl(0, "DiffAdd", { fg = colours.green })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = colours.sapphire })
	vim.api.nvim_set_hl(0, "DiffDelete", { fg = colours.red })
	vim.api.nvim_set_hl(0, "DiffText", { fg = colours.blue, bg = colours.surface0 })
	vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colours.green })
	vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colours.sapphire })
	vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colours.red })
end