" mauve.vim
if exists("g:colors_name")
  highlight clear
endif
let g:colors_name = "mauve"
lua require("mauve-nvim").setup()
