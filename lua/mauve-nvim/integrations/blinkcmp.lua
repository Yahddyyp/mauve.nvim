return function(c)
    local highlights = {
        BlinkCmpMenu = { bg = c.mantle, fg = c.fg },
        BlinkCmpMenuSelection = { bg = c.surface0, fg = c.sapphire },
        BlinkCmpScrollBarBorder = { bg = c.mantle },
        BlinkCmpScrollBarThumb = { bg = c.mauve },
        BlinkCmpLabel = { fg = c.fg },
        BlinkCmpLabelDeprecated = { fg = c.overlay0, strikethrough = true },
        BlinkCmpLabelMatch = { fg = c.mauve, bold = true },
        BlinkCmpKind = { fg = c.mauve },
        BlinkCmpKindCopilot = { fg = c.mauve },
        BlinkCmpSource = { fg = c.sapphire },
    }
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end
