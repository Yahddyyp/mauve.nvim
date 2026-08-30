if vim.fn.has("termguicolors") == 0 or not vim.o.termguicolors then
	vim.notify("mauve.nvim requires termguicolors to be set", vim.log.levels.ERROR)
	return
end

if vim.g.colors_name then
	vim.cmd("highlight clear")
end
vim.g.colors_name = "mauve"

require("mauve").setup()
