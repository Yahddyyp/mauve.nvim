return function(c)
	local highlights = {
		GrugFarHelpHeader = { fg = c.mauve, bold = true },
		GrugFarHelpHeaderKey = { fg = c.sapphire },
		GrugFarInputLabel = { fg = c.mauve, bold = true },
		GrugFarInputPlaceholder = { fg = c.overlay0, italic = true },
		GrugFarResultsHeader = { fg = c.mauve, bold = true },
		GrugFarResultMatch = { fg = c.bg, bg = c.mauve },
		GrugFarResultMatchAdded = { fg = c.bg, bg = c.green },
		GrugFarResultMatchRemoved = { fg = c.bg, bg = c.red },
		GrugFarResultLineNo = { fg = c.overlay0 },
		GrugFarResultsChangeIndicator = { fg = c.yellow },
		GrugFarResultsAddedIndicator = { fg = c.green },
		GrugFarResultsRemovedIndicator = { fg = c.red },
		GrugFarResultsStatsHeader = { fg = c.subtext, italic = true },
		GrugFarFilePath = { fg = c.blue, bold = true },
		GrugFarCount = { fg = c.peach, bold = true },
		GrugFarSearchProgress = { fg = c.sapphire, italic = true },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
