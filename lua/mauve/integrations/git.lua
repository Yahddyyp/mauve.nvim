return function(colours)
	local highlights = {
		DiffAdd = { fg = colours.green },
		DiffChange = { fg = colours.sapphire },
		DiffDelete = { fg = colours.red },
		DiffText = { fg = colours.blue, bg = colours.surface0 },
		GitSignsAdd = { fg = colours.green },
		GitSignsChange = { fg = colours.sapphire },
		GitSignsDelete = { fg = colours.red },
		-- For git commit message
		gitcommitComment = { fg = colours.subtext, italic = true },
		gitcommitBranch = { fg = colours.mauve },
		gitcommitHeader = { fg = colours.mauve },
		gitcommitFile = { fg = colours.peach },
		diffAdded = { fg = colours.green },
		diffChanged = { fg = colours.sapphire },
		diffRemoved = { fg = colours.red },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
