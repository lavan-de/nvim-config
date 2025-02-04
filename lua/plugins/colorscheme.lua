return {
  "Mofiqul/vscode.nvim",
  lazy = false,  -- Load the colorscheme immediately
  priority = 1000,  -- Ensure it loads before other plugins
  config = function()
    -- Set the VSCode colorscheme
    vim.g.vscode_style = 'dark'  -- You can set this to 'light' or 'dark' based on preference

    -- Apply the colorscheme
    vim.cmd("colorscheme vscode")
    -- Customize Mason UI elements
    vim.cmd("highlight MasonNormal guibg=#1E2326")  -- Set the Mason window background color
    vim.cmd("highlight MasonBorder guibg=#1E2326")  -- Set the border background color
    vim.cmd("highlight MasonStatusLine guibg=#1E2326")  -- Set status line background in Mason
    vim.cmd("highlight MasonSelected guibg=#2E3539")  -- Set the background for selected items
    vim.cmd("highlight MasonItem guifg=#D0D0D0")  -- Set the text color for items in Mason
    vim.cmd("highlight MasonItemSelected guifg=#F0F0F0")  -- Set the text color for selected items
    vim.cmd("highlight MasonPrompt guifg=#D0D0D0")  -- Set the prompt text color in Mason

    -- Customize Lazy UI elements
    vim.cmd("highlight LazyNormal guibg=#1E2326")  -- Set the Lazy window background color
    vim.cmd("highlight LazyBorder guibg=#1E2326")  -- Set the border background color
    vim.cmd("highlight LazyStatusLine guibg=#1E2326")  -- Set status line background in Lazy
    vim.cmd("highlight LazySelected guibg=#2E3539")  -- Set the background for selected items in Lazy
    vim.cmd("highlight LazyItem guifg=#D0D0D0")  -- Set the text color for items in Lazy
    vim.cmd("highlight LazyItemSelected guifg=#F0F0F0")  -- Set the text color for selected items
    vim.cmd("highlight LazyPrompt guifg=#D0D0D0")  -- Set the prompt text color in Lazy

    -- Override background to make it transparent
    vim.cmd [[
      hi Normal guibg=NONE ctermbg=NONE
      hi StatusLine guibg=NONE ctermbg=NONE
      hi TabLine guibg=NONE ctermbg=NONE
      hi Pmenu guibg=NONE ctermbg=NONE
      hi VertSplit guibg=NONE ctermbg=NONE
      hi LineNr guibg=NONE ctermbg=NONE
      hi CursorLineNR guibg=NONE guifg=NONE ctermbg=NONE ctermfg=220
      hi SignColumn guibg=NONE
      hi Number guibg=NONE ctermbg=NONE
    ]]
  end,
}

