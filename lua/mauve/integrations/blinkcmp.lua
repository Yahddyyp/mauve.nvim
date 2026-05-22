return function(c)
	local highlights = {
		BlinkCmpMenu = { bg = "NONE", fg = c.fg },
		BlinkCmpMenuBorder = { bg = "NONE", fg = c.mauve },
		BlinkCmpMenuSelection = { bg = c.surface0, fg = c.sapphire },
		BlinkCmpScrollBarBorder = { bg = "NONE" },
		BlinkCmpScrollBarThumb = { bg = c.mauve },
		BlinkCmpLabel = { fg = c.fg },
		BlinkCmpLabelDeprecated = { fg = c.overlay0, strikethrough = true },
		BlinkCmpLabelMatch = { fg = c.mauve, bold = true },
		BlinkCmpKind = { fg = c.mauve },
		BlinkCmpKindCopilot = { fg = c.mauve },
		BlinkCmpSource = { fg = c.sapphire },
		BlinkCmpDoc = { bg = "NONE" },
		BlinkCmpDocBorder = { bg = "NONE", fg = c.sapphire },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end
