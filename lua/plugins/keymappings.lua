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

-- Floaterm
keymap("n", "<C-g>", "<cmd>:FloatermToggle<CR>", { desc = "Toggle FloatTerm" })
keymap("t", "<C-g>", "<cmd>:FloatermToggle<CR>", { desc = "Toggle FloatTerm" })

-- Telescope
local builtin = require("telescope.builtin")
keymap('n', '<C-p>', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})

-- Keymap for formatting using LSP
keymap("n", "<leader>gf", function()
  vim.lsp.buf.format({ async = true }) -- Formats using the attached LSP (including null-ls)
end, { desc = "Format file" })

-- CopilotChat keymaps
keymap('i', '<C-S-s>', ":CopilotChatSubmit<CR>", opts)

-- Toggle CopilotChat on the right side with resized split (25% of screen)
keymap('n', '<Leader>cc', ':CopilotChatToggle<CR>', { desc = "Toggle CopilotChat on right" })

-- Key Mappings for LSP (Clangd and Dart)

-- LSP Navigation (Clangd and Dart)
keymap("n", "gd", vim.lsp.buf.definition, opts)       -- Go to definition
keymap("n", "gD", vim.lsp.buf.declaration, opts)      -- Go to declaration
keymap("n", "gi", vim.lsp.buf.implementation, opts)    -- Go to implementation
keymap("n", "gr", vim.lsp.buf.references, opts)        -- Go to references

-- LSP Actions
keymap("n", "<Leader>ca", vim.lsp.buf.code_action, opts)  -- Code actions
keymap("n", "<Leader>rn", vim.lsp.buf.rename, opts)       -- Rename symbol

-- Diagnostic Keymaps (for errors, warnings, etc.)
keymap("n", "[d", vim.diagnostic.goto_prev, opts)   -- Go to previous diagnostic
keymap("n", "]d", vim.diagnostic.goto_next, opts)   -- Go to next diagnostic
keymap("n", "<Leader>e", vim.diagnostic.open_float, opts)  -- Open diagnostics

return {}

