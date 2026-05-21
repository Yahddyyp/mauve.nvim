return function(c)
    local highlights = {
        SnacksDashboardHeader = { fg = c.mauve },
        SnacksDashboardKey = { fg = c.sapphire, bold = true },
        SnacksDashboardDesc = { fg = c.fg },
        SnacksDashboardIcon = { fg = c.sapphire },
        SnacksDashboardFooter = { fg = c.sapphire },
    }
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end
