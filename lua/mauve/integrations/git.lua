return function(c)
	local highlights = {
		DiffAdd = { fg = c.green },
		DiffChange = { fg = c.sapphire },
		DiffDelete = { fg = c.red },
		DiffText = { fg = c.sky, bg = c.surface0 },
		GitSignsAdd = { fg = c.green },
		GitSignsChange = { fg = c.sapphire },
		GitSignsDelete = { fg = c.red },
		-- For git commit message
		gitcommitComment = { fg = c.subtext, italic = true },
		gitcommitBranch = { fg = c.mauve },
		gitcommitHeader = { fg = c.mauve },
		gitcommitFile = { fg = c.peach },
		diffAdded = { fg = c.green },
		diffChanged = { fg = c.sapphire },
		diffRemoved = { fg = c.red },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
