return function(c)
	local highlights = {
		SnacksPicker = { bg = c.mantle, fg = c.fg },
		SnacksPickerBorder = { bg = c.mantle, fg = c.mauve },
		SnacksPickerTitle = { fg = c.sapphire },
		SnacksPickerInput = { bg = c.mantle, fg = c.fg },
		SnacksPickerInputBorder = { bg = c.mantle, fg = c.mauve },
		SnacksPickerInputTitle = { fg = c.sapphire, bg = c.mantle },
		SnacksPickerList = { bg = c.mantle, fg = c.fg },
		SnacksPickerListBorder = { bg = c.mantle, fg = c.mauve },
		SnacksPickerListTitle = { fg = c.sapphire },
		SnacksPickerListCursorLine = { bg = c.surface0 },
		SnacksPickerPreview = { bg = c.mantle, fg = c.fg },
		SnacksPickerPreviewBorder = { bg = c.mantle, fg = c.sapphire },
		SnacksPickerPreviewTitle = { fg = c.sapphire },
		SnacksPickerDir = { fg = c.overlay0 },
		SnacksPickerRow = { fg = c.sapphire },
		SnacksPickerCol = { fg = c.overlay0 },
		SnacksPickerFileName = { fg = c.fg },
		SnacksPickerMatch = { fg = c.mauve, bold = true },
		SnacksPickerSelected = { fg = c.mauve },
		SnacksPickerGitAdded = { fg = c.green },
		SnacksPickerGitDeleted = { fg = c.red },
		SnacksPickerGitModified = { fg = c.yellow },
		SnacksPickerGitUntracked = { fg = c.mauve },
		SnacksPickerGitIgnored = { fg = c.overlay0 },
		SnacksPickerGitStaged = { fg = c.green, bold = true },
		SnacksPickerGitScope = { fg = c.sapphire },
		SnacksPickerGitBranch = { fg = c.mauve },
		SnacksPickerGitCommit = { fg = c.lavender },
		SnacksPickerPrompt = { fg = c.sapphire },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
