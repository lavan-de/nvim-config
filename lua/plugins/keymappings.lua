-- keymappings.lua

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = " " -- Set space as leader key

-- Window Controls
keymap("n", "<Leader>tt", ":tabnew<CR>", { noremap = true, silent = true })  -- New tab
keymap("n", "<Leader>tc", ":tabclose<CR>", { noremap = true, silent = true })  -- Close tab
keymap("n", "<Leader>to", ":tabonly<CR>", { noremap = true, silent = true })  -- Close other tabs
keymap("n", "<Leader>tp", ":tabprev<CR>", { noremap = true, silent = true })  -- Previous tab
keymap("n", "<Leader>tn", ":tabnext<CR>", { noremap = true, silent = true })  -- Next tab

-- Window Splits
keymap("n", "<Leader>sv", ":vsplit<CR>", opts) -- Vertical split
keymap("n", "<Leader>sh", ":split<CR>", opts)  -- Horizontal split
keymap("n", "<Leader>se", "<C-w>=", opts)      -- Equalize split sizes
keymap("n", "<Leader>sc", "<C-w>c", opts)      -- Close current split

-- Navigation between Splits
keymap("n", "<C-h>", "<C-w>h", opts) -- Move left
keymap("n", "<C-l>", "<C-w>l", opts) -- Move right
keymap("n", "<C-k>", "<C-w>k", opts) -- Move up
keymap("n", "<C-j>", "<C-w>j", opts) -- Move down

-- Buffer Navigation
keymap("n", "<Leader>bn", ":bnext<CR>", opts)  -- Next buffer
keymap("n", "<Leader>bp", ":bprevious<CR>", opts)  -- Previous buffer
keymap("n", "<Leader>bd", ":bdelete<CR>", opts)  -- Delete buffer

-- Neotree Navigation
keymap("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)

-- Codeium
keymap('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true, desc = "Codeium Accept" })
keymap('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true, desc = "Codeium Clear" })
keymap('i', '<C-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true, desc = "Codeium Cycle Completions Next" })

-- Telescope
local builtin = require("telescope.builtin")
keymap('n', '<C-p>', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})

-- Keymap for formatting using LSP
keymap("n", "<leader>gf", function()
  vim.lsp.buf.format({ async = true }) -- Formats using the attached LSP (including null-ls)
end, { desc = "Format file" })


return {}
