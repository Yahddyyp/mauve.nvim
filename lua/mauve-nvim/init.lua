local M = {}

local colours = {
	bg = "#1e1e2e",
	fg = "#cdd6f4",
	subtext = "#a6adc8",
	blue = "#89dceb",
	red = "#f38ba8",
	green = "#a6e3a1",
	yellow = "#f9e2af",
	mauve = "#cba6f7",
	sapphire = "#74c7ec",
	grey = "#45475a",
	peach = "#fab387",
	lavender = "#b4befe",
	pink = "#f5c2e7",
	overlay0 = "#6c7086",
	overlay2 = "#7f849c",
	teal = "#94e2d5",
	flamingo = "#f2cdcd",
	surface0 = "#313244",
	mantle = "#181825",
}

local integrations = {
	"telescope",
	"ui",
	"dashboard",
	"blinkcmp",
	"fidget",
	"snacks",
	"treesitter",
	"noice",
	"git",
}

local function apply()
	local highlights = {
		Normal = { fg = colours.fg, bg = colours.bg },
		Comment = { fg = colours.subtext, italic = true },
		Keyword = { fg = colours.mauve, bold = true },
		String = { fg = colours.green },
		Number = { fg = colours.yellow },
		LineNr = { fg = colours.grey },
		CursorLineNr = { fg = colours.mauve, bold = true },
		StatusLine = { fg = colours.fg, bg = colours.bg, bold = true },
		Visual = { bg = colours.grey, bold = true },
		-- Search
		Terminal = { fg = colours.sapphire },
		Search = { fg = colours.bg, bg = colours.green },
		IncSearch = { fg = colours.bg, bg = colours.mauve },
		CurSearch = { fg = colours.bg, bg = colours.red },
		-- LSP diagnostics
		DiagnosticError = { fg = colours.red },
		DiagnosticWarn = { fg = colours.peach },
		DiagnosticInfo = { fg = colours.blue },
		DiagnosticHint = { fg = colours.teal },
		DiagnosticUnderlineError = { undercurl = true, sp = colours.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colours.peach },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colours.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = colours.teal },
		DiagnosticVirtualTextError = { fg = colours.red, bg = colours.mantle },
		DiagnosticVirtualTextWarn = { fg = colours.peach, bg = colours.mantle },
		DiagnosticVirtualTextInfo = { fg = colours.blue, bg = colours.mantle },
		DiagnosticVirtualTextHint = { fg = colours.teal, bg = colours.mantle },
		FloatBorder = { fg = colours.mauve },
		MatchParen = { fg = colours.sapphire, bold = true },
		Identifier = { fg = colours.grey },
		Special = { fg = colours.mauve },
	}
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
	for _, name in ipairs(integrations) do
		local ok, mod = pcall(require, "mauve-nvim.integrations." .. name)
		if ok then
			mod(colours)
		end
	end
end

function M.setup()
	apply()
	vim.api.nvim_create_augroup("MauveHighlights", { clear = true })
	vim.api.nvim_create_autocmd("ColorScheme", {
		group = "MauveHighlights",
		callback = function()
			if vim.g.colors_name == "mauve" then
				apply()
			end
		end,
		desc = "Mauve colourscheme highlights",
	})
end

return M
