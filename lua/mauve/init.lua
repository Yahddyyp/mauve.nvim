local M = {}

local colours = require("mauve.palette")

local integrations = {
    "telescope",
    "ui",
    "snacks-dashboard",
    "blinkcmp",
    "fidget",
    "snacks",
    "treesitter",
    "noice",
    "git",
    "grug_far",
    "snacks-picker",
    "man",
}

local function apply()
    local highlights = {
        Normal = { fg = colours.fg, bg = colours.bg },
        Comment = { fg = colours.subtext, italic = true },
        Keyword = { fg = colours.mauve },
        String = { fg = colours.green },
        Number = { fg = colours.yellow },
        LineNr = { fg = colours.grey },
        CursorLineNr = { fg = colours.mauve, bold = true },
        StatusLine = { fg = colours.fg, bg = colours.bg, bold = true },
        Visual = { bg = colours.grey, bold = true },
        -- Search
        Terminal = { fg = colours.sapphire },
        Search = { fg = colours.bg, bg = colours.mauve },
        IncSearch = { fg = colours.bg, bg = colours.mauve },
        CurSearch = { fg = colours.bg, bg = colours.sapphire, bold = true },
        -- LSP diagnostics
        DiagnosticError = { fg = colours.red },
        DiagnosticWarn = { fg = colours.peach },
        DiagnosticInfo = { fg = colours.blue },
        DiagnosticHint = { fg = colours.teal },
        DiagnosticUnderlineError = { undercurl = true, sp = colours.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colours.peach },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colours.blue },
        DiagnosticUnderlineHint = { undercurl = true, sp = colours.teal },
        DiagnosticVirtualTextError = { fg = colours.red, bg = "#3d2030", italic = true },
        DiagnosticVirtualTextWarn = { fg = colours.peach, bg = "#3d2e1e", italic = true },
        DiagnosticVirtualTextInfo = { fg = colours.blue, bg = "#1e2d3d", italic = true },
        DiagnosticVirtualTextHint = { fg = colours.teal, bg = "#1e3d38", italic = true },
        FloatBorder = { fg = colours.mauve },
        MatchParen = { fg = colours.sapphire, bold = true },
        Identifier = { fg = colours.peach },
        Special = { fg = colours.mauve },
        Type = { fg = colours.sapphire },
        envField = { fg = colours.yellow },
        Title = { fg = colours.mauve, bold = true },
        Statement = { fg = colours.peach, bold = true },
		manBold = { fg = colours.sapphire, bold = true },
		manOptionDesc = { fg = colours.green },
    }
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
    for _, name in ipairs(integrations) do
        local ok, mod = pcall(require, "mauve.integrations." .. name)
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
