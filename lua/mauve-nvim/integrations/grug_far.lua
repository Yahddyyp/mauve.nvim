return function(colours)
	local highlights = {
		GrugFarHelpHeader = { fg = colours.mauve, bold = true },
		GrugFarHelpHeaderKey = { fg = colours.sapphire },
		GrugFarInputLabel = { fg = colours.mauve, bold = true },
		GrugFarInputPlaceholder = { fg = colours.overlay0, italic = true },
		GrugFarResultsHeader = { fg = colours.mauve, bold = true },
		GrugFarResultMatch = { fg = colours.bg, bg = colours.mauve },
		GrugFarResultMatchAdded = { fg = colours.bg, bg = colours.green },
		GrugFarResultMatchRemoved = { fg = colours.bg, bg = colours.red },
		GrugFarResultLineNo = { fg = colours.overlay0 },
		GrugFarResultsChangeIndicator = { fg = colours.yellow },
		GrugFarResultsAddedIndicator = { fg = colours.green },
		GrugFarResultsRemovedIndicator = { fg = colours.red },
		GrugFarResultsStatsHeader = { fg = colours.subtext, italic = true },
		GrugFarFilePath = { fg = colours.blue, bold = true },
		GrugFarCount = { fg = colours.peach, bold = true },
		GrugFarSearchProgress = { fg = colours.sapphire, italic = true },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
