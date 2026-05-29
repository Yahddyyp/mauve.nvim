return function(c)
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "man",
        callback = function()
            vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.mantle })
        end,
    })

    vim.api.nvim_set_hl(0, "manHeader", { fg = c.mauve, bold = true })
    vim.api.nvim_set_hl(0, "manSectionHeading", { fg = c.peach, bold = true })
    vim.api.nvim_set_hl(0, "manBold", { fg = c.sapphire, bold = true })
    vim.api.nvim_set_hl(0, "manOptionDesc", { fg = c.green })
end
