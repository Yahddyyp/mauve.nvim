return function(c)
	local highlights = {
		FidgetTask = { fg = c.subtext, bg = "NONE" },
		FidgetTitle = { fg = c.mauve, bg = "NONE", bold = true },
		FidgetSpinner = { fg = c.blue, bg = "NONE" },
		FidgetBorder = { fg = c.surface0, bg = c.mantle },
		FidgetGroup = { fg = c.overlay2, bg = "NONE" },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
