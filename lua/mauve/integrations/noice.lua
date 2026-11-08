return function(c)
	local highlights = {
		NoiceLspProgressClient = { fg = c.mauve, bold = true },
		NoiceLspProgressSpinner = { fg = c.blue },
		NoiceLspProgressTitle = { fg = c.subtext },
		NoiceFormatProgressDone = { fg = c.bg, bg = c.mauve },
		NoiceFormatProgressTodo = { fg = c.overlay0, bg = c.surface0 },
		NoiceCmdlineIcon = { fg = c.mauve },
		NoiceCmdlineIconSearch = { fg = c.mauve },
		NoiceCmdlinePopupBorderSearch = { fg = c.mauve },
		NoiceCmdline = { bg = "NONE" },
		NoiceCmdlinePopup = { bg = "NONE" },
		NoicePopup = { bg = c.mantle },
		NoicePopupBorder = { fg = c.mauve },
		NoiceCmdlineBorder = { fg = c.subtext },
		NoiceCmdlinePopupBorderCmdline = { fg = c.mauve },
		NoiceCmdlineIconCmdline = { fg = c.sapphire },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
