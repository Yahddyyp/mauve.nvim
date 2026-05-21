return function(colours)
	local highlights = {
		NoiceLspProgressClient = { fg = colours.mauve, bold = true },
		NoiceLspProgressSpinner = { fg = colours.blue },
		NoiceLspProgressTitle = { fg = colours.subtext },
		NoiceFormatProgressDone = { fg = colours.bg, bg = colours.mauve },
		NoiceFormatProgressTodo = { fg = colours.overlay0, bg = colours.surface0 },
		NoiceCmdlineIcon = { fg = colours.mauve },
		NoiceCmdlineIconSearch = { fg = colours.mauve },
		NoiceCmdlinePopupBorderSearch = { fg = colours.mauve },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

