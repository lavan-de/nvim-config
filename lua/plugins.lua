return {
  -- Noice.nvim plugin setup
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,  -- Add border to LSP documentation
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",  -- Required for UI components
      {
        "rcarriga/nvim-notify",  -- Required for notifications
        config = function()
          require("notify").setup({
            background_colour = "NormalFloat" -- Uses the existing background color of floating windows
          })
        end,
      },
    },
  },


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
      vim.keymap.set("n", "<C-g>", "<cmd>:FloatermToggle<CR>", { desc = "Toggle FloatTerm" })
      vim.keymap.set("t", "<C-g>", "<cmd>:FloatermToggle<CR>", { desc = "Toggle FloatTerm" })
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

