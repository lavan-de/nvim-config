vim.cmd("syntax enable")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("syntax on")

-- Enable hybrid line numbers (absolute when in insert mode, relative otherwise)
vim.opt.number = true        -- Show absolute line number for the current line
vim.opt.relativenumber = true -- Show relative line numbers for other lines
