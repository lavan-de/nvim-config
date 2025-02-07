return {
  -- Vim Illuminate plugin setup
  {
    "RRethy/vim-illuminate",
    config = function()
      require("illuminate")  -- Configure the illuminate plugin
    end,
  },

  -- Floaterm plugin setup
  {
    "voldikss/vim-floaterm",
    config = function()
      vim.keymap.set(
        "n",
        "<leader>ft",
        "<cmd>:FloatermNew --height=0.7 --width=0.8 --wintype=float --name=floaterm1 --position=center --autoclose=2<CR>",
        { desc = "Open FloatTerm" }
      )
    end,
  },

  -- Unimpaired plugin setup
  {
    "tummetott/unimpaired.nvim",
    config = function()
      require("unimpaired").setup()
    end,
  },
}

