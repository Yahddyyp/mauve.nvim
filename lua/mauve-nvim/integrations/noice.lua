return function(colours)
	vim.api.nvim_set_hl(0, "NoiceLspProgressClient", { fg = colours.mauve, bold = true })
	vim.api.nvim_set_hl(0, "NoiceLspProgressSpinner", { fg = colours.blue })
	vim.api.nvim_set_hl(0, "NoiceLspProgressTitle", { fg = colours.subtext })
	vim.api.nvim_set_hl(0, "NoiceFormatProgressDone", { fg = colours.bg, bg = colours.mauve })
	vim.api.nvim_set_hl(0, "NoiceFormatProgressTodo", { fg = colours.overlay0, bg = colours.surface0 })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = colours.mauve })
	vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { fg = colours.mauve })
	vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderSearch", { fg = colours.mauve })
end

