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

local integrations = { "telescope", "ui", "dashboard", "blinkcmp" }

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
        -- Tree sitter support
        ["@variable"] = { fg = colours.sapphire },
        ["@Keyword"] = { fg = colours.mauve },
        ["@constant"] = { fg = colours.mauve },
        ["@lsp.type.enumMember"] = { fg = colours.sapphire },
        ["@method.call"] = { fg = colours.blue },
        ["@function"] = { fg = colours.sapphire },
        ["@function.call"] = { fg = colours.sapphire },
        ["@function.macro"] = { fg = colours.mauve },
        ["@type"] = { fg = colours.green },
        ["@type.builtin"] = { fg = colours.mauve },
        ["@parameter"] = { fg = colours.subtext },
        ["@attribute"] = { fg = colours.subtext },
        ["@property"] = { fg = colours.blue },
        ["@boolean"] = { fg = colours.yellow },
        ["@operator"] = { fg = colours.blue },
        ["@module"] = { fg = colours.yellow },
        ["@include"] = { fg = colours.mauve },
        ["@label"] = { fg = colours.red },
        ["@character"] = { fg = colours.yellow },
        ["@float"] = { fg = colours.sapphire },
        ["@string.special"] = { fg = colours.red },
        ["@punctuation.delimiter"] = { fg = colours.subtext },
        ["@punctuation.bracket"] = { fg = colours.subtext },
        ["@markup.heading"] = { fg = colours.mauve, bold = true },
        ["@markup.strong"] = { fg = colours.fg, bold = true },
        ["@markup.italic"] = { fg = colours.fg, italic = true },
        ["@markup.link"] = { fg = colours.blue },
        ["@markup.list"] = { fg = colours.mauve },
        ["@markup.code"] = { fg = colours.green },
        ["@markup.quote"] = { fg = colours.subtext },
        Conditional = { fg = colours.mauve },
        Repeat = { fg = colours.mauve },
        Function = { fg = colours.sapphire },
        Bold = { fg = colours.fg, bold = true },
        -- Markdown headings
        ["@markup.heading.1"] = { fg = colours.mauve, bold = true },
        ["@markup.heading.2"] = { fg = colours.peach, bold = true },
        ["@markup.heading.3"] = { fg = colours.yellow, bold = true },
        ["@markup.heading.4"] = { fg = colours.green, bold = true },
        ["@markup.heading.5"] = { fg = colours.red, bold = true },
        ["@markup.heading.6"] = { fg = colours.subtext, bold = true },
        -- Git
        DiffAdd = { fg = colours.green },
        DiffChange = { fg = colours.sapphire },
        DiffDelete = { fg = colours.red },
        DiffText = { fg = colours.blue, bg = colours.surface0 },
        GitSignsAdd = { fg = colours.green },
        GitSignsChange = { fg = colours.sapphire },
        GitSignsDelete = { fg = colours.red },
    }
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
    for _, name in ipairs(integrations) do
        local ok, mod = pcall(require, "mauve-nvim.integrations." .. name)
        if ok then mod(colours) end
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
                pcall(vim.cmd, "LualineRefresh")
            end
        end,
        desc = "Mauve colourscheme highlights",
    })
end

return M
