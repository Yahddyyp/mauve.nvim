return function(c)
	local highlights = {
		SnacksNormal = { link = "Normal" },
		SnacksWinBar = { link = "Title" },
		SnacksBackdrop = { link = "FloatShadow" },
		SnacksNormalNC = { link = "NormalFloat" },
		SnacksWinBarNC = { link = "SnacksWinBar" },

		SnacksPicker = { fg = c.fg },
		SnacksPickerBorder = { fg = c.mauve },
		SnacksPickerInputBorder = { fg = c.mauve },
		SnacksPickerInput = { fg = c.fg },
		SnacksPickerPrompt = { fg = c.sapphire },
		SnacksPickerMatch = { fg = c.blue },

		SnacksPickerSelected = {
			fg = c.mauve,
			bold = true,
		},

		SnacksPickerList = { fg = c.fg },
		SnacksPickerListBorder = { fg = c.mauve },
		SnacksPickerListCursorLine = { fg = c.mauve, bg = c.surface1, bold = true },
		SnacksPickerListTitle = { fg = c.mauve },

		SnacksPickerPreview = { fg = c.fg },
		SnacksPickerPreviewBorder = { fg = c.sapphire },
		SnacksPickerPreviewTitle = { fg = c.green },

		SnacksPickerTitle = { fg = c.mauve },
		SnacksPickerInputTitle = { fg = c.blue },

		SnacksPickerDir = { fg = c.overlay0 },
		SnacksPickerRow = { fg = c.mauve },
		SnacksPickerCol = { fg = c.overlay0 },
		SnacksPickerFileName = { fg = c.fg },

		SnacksPickerGitAdded = { fg = c.green },
		SnacksPickerGitDeleted = { fg = c.red },
		SnacksPickerGitModified = { fg = c.yellow },
		SnacksPickerGitUntracked = { fg = c.mauve },
		SnacksPickerGitIgnored = { fg = c.overlay0 },
		SnacksPickerGitStaged = { fg = c.green, bold = true },
		SnacksPickerGitScope = { fg = c.sapphire },
		SnacksPickerGitBranch = { fg = c.mauve },
		SnacksPickerGitCommit = { fg = c.lavender },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
